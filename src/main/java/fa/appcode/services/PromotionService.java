package fa.appcode.services;

import org.springframework.data.domain.Page;

import fa.appcode.web.entities.Promotion;

/**
 *
 * @author TruongNguyen
 *
 */

public interface PromotionService {

	Page<Promotion> searchAll(String searchData, int pageIndex, int pageSize);
	
}

