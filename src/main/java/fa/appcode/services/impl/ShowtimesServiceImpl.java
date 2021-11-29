package fa.appcode.services.impl;

import java.time.LocalDate;
import java.util.ArrayList;
import java.util.List;
import java.util.stream.Collectors;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import fa.appcode.common.logging.LogUtils;
import fa.appcode.common.utils.DateUtils;
import fa.appcode.config.PageConfig;
import fa.appcode.repositories.ShowtimesRepository;
import fa.appcode.services.ShowtimesService;
import fa.appcode.specification.ShowDateSpecification;
import fa.appcode.web.entities.MovieDate;
import fa.appcode.web.entities.ShowDates;
import fa.appcode.web.vo.PageVo;

@Service
public class ShowtimesServiceImpl implements ShowtimesService {

	@Autowired
	private ShowtimesRepository showTimesRepository;

	@Autowired
	private ShowDateSpecification showDateSpecification;

	@Autowired
	PageConfig pageConfig;

	@Override
	public List<LocalDate> getShowDateList(String date) {
		LocalDate startDate = null;
		if (date == null) {
			startDate = LocalDate.now();
		} else {
			startDate = LocalDate.parse(date);
		}
		return startDate.datesUntil(startDate.plusDays(6)).collect(Collectors.toList());
	}

	@Override
	public PageVo<MovieDate> findMovieTimeByDate(String date, Integer pageIndex, Integer pageSize) {

		if (pageIndex == null) {
			pageIndex = pageConfig.getInitPage();
		}

		List<ShowDates> showDates = null;
		if (date == null) {
			showDates = showTimesRepository
					.findAll(showDateSpecification.getListByDate(DateUtils.convertToDate(LocalDate.now())));
			LogUtils.getLogger().info(DateUtils.convertToDate(LocalDate.now()));
		} else {
			showDates = showTimesRepository
					.findAll(showDateSpecification.getListByDate(DateUtils.convertToDate(LocalDate.parse(date))));
		}

		showDates = showDates.stream().distinct().collect(Collectors.toList());

		if (showDates.size() == 0) {
			return null;
		}

		List<MovieDate> movieDates = new ArrayList<MovieDate>();
		PageVo<MovieDate> pages = new PageVo<MovieDate>();

		for (ShowDates showDate : showDates) {
			movieDates.addAll(showDate.getMovieDates());
		}

		pages.setTotalPage(movieDates.size() % pageSize == 0 ? (movieDates.size() / pageSize)
				: (movieDates.size() / pageSize + 1));

		pages.setPageIndex(pageIndex);
		movieDates = movieDates.stream().skip((pageIndex - 1) * pageSize).limit(pageSize).collect(Collectors.toList());
		pages.setContent(movieDates);
		return pages;
	}

}
