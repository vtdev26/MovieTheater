package fa.appcode.services;

import org.springframework.data.domain.Page;

import fa.appcode.web.entities.Promotion;

/**
 *
 * @author TruongNguyen
 *
 */

public interface PromotionService {

	/**
	 * Method search all promotion by search data and paging with pageable
	 */
	Page<Promotion> searchAll(String searchData, int pageIndex, int pageSize);

}
