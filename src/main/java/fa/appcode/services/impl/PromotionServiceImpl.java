package fa.appcode.services.impl;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;

import fa.appcode.common.logging.LogUtils;
import fa.appcode.repositories.PromotionRepository;
import fa.appcode.services.PromotionService;
import fa.appcode.web.entities.Promotion;

/**
 *
 * @author TruongNguyen
 *
 */
@Service
public class PromotionServiceImpl implements PromotionService {

	@Autowired
	private PromotionRepository promotionRepository;

	@Override
	public Page<Promotion> searchAll(String searchData, int pageIndex, int pageSize) {

		Pageable pageable = PageRequest.of(pageIndex - 1, pageSize);

		Page<Promotion> promotions;

		SimpleDateFormat format = new SimpleDateFormat("dd/MM/yyyy");

		try {
			Date date = format.parse(searchData);
			LogUtils.getLogger().info(date);
			promotions = promotionRepository.searchDate(date, pageable);

		} catch (ParseException e) {
			String searchVal;
			if (searchData == null) {
				searchVal = "%%";
			} else {
				searchVal = "%" + searchData + "%";
			}
			promotions = promotionRepository.searchText(searchVal, pageable);
		}

		return promotions;
	}

}
