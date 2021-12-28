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

import javax.persistence.EntityNotFoundException;

/**
 * @author TruongNguyen
 */
@Service
public class PromotionServiceImpl implements PromotionService {

	@Autowired
	private PromotionRepository promotionRepository;

	@Override
	public Page<Promotion> searchAll(String searchData, Integer pageIndex, Integer pageSize) {

		Pageable pageable = PageRequest.of(pageIndex - 1, pageSize);

		Page<Promotion> promotions;

		SimpleDateFormat format = new SimpleDateFormat("dd/MM/yyyy");

		String searchVal;
		
		/*
		 *No has search data 
		 */
		if (searchData == null) {
			LogUtils.getLogger().info("search text null");
			searchVal = "%%";
			promotions = promotionRepository.searchText(searchVal, pageable);
		} else {
			
			/*
			 * Search data is a date
			 */
			try {
				Date date = format.parse(searchData);
				LogUtils.getLogger().info(date);
				promotions = promotionRepository.searchDate(date, pageable);
				LogUtils.getLogger().info("search date");

			} catch (ParseException e) {

				LogUtils.getLogger().info("search text");

				searchVal = "%" + searchData + "%";
				promotions = promotionRepository.searchText(searchVal, pageable);
			}
		}
		return promotions;
	}

	@Override
	public boolean saveOrUpdate(Promotion promotion) {
		try {
			promotionRepository.save(promotion);
			return true;
		} catch (Exception e) {
			e.printStackTrace();
			return false;
		}
	}

	@Override
	public Promotion getById(Integer promotionId) {
		try {
			return promotionRepository.getById(promotionId);
		} catch (EntityNotFoundException e) {
			return null;
		}
	}

	@Override
	public boolean deletePromotionById(Integer promotionId) {
		try {
			promotionRepository.deleteById(promotionId);
			return true;
		} catch (Exception e) {
			e.printStackTrace();
			return false;
		}
	}

	@Override
	public boolean checkTitleExist(Integer promotionId, String title) {
		Promotion promotion;
		if (promotionId == null || promotionId == 0) {
			promotion = promotionRepository.findByTitle(title);
		} else {
			promotion = promotionRepository.checkByIdAndTitle(promotionId, title);
		}
		if (promotion == null) {
			return false;
		} else {
			return true;
		}
	}
}
