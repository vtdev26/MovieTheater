package fa.appcode.services.impl;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;

import fa.appcode.repositories.MovieRepository;
import fa.appcode.services.MovieService;
import fa.appcode.web.entities.Movie;

@Service
public class MovieServiceImpl implements MovieService{
	@Autowired
	MovieRepository movieRepository;
	@Override
	public Page<Movie> searchAll(String searchData, int pageIndex, int pageSize) {
		Pageable pageable = PageRequest.of(pageIndex - 1, pageSize);
		Page<Movie> movies;
		SimpleDateFormat format = new SimpleDateFormat("dd/MM/yyyy");
		try {
			Date date=format.parse(searchData);
			movies=movieRepository.searchDate(date, pageable);
		} catch (ParseException e) {
			String searchVal;
			if (searchData == null) {
				searchVal = "%%";
			} else {
				searchVal = "%" + searchData + "%";
			}
			movies=movieRepository.searchText(searchVal, pageable);
		}
		return movies;
	}
	@Override
	public Page<Movie> findAll(int pageIndex, int pageSize) {
		Pageable pageable = PageRequest.of(pageIndex - 1, pageSize);
		Page<Movie> movies;
		movies=movieRepository.findAll(pageable);
		return movies;
	}

}
