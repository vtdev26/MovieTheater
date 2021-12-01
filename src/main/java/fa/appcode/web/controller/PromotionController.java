package fa.appcode.web.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import fa.appcode.common.logging.LogUtils;
import fa.appcode.common.utils.Constants;
import fa.appcode.config.PageConfig;
import fa.appcode.services.PromotionService;
import fa.appcode.web.entities.Promotion;

/**
 *
 * @author TruongNguyen
 *
 */
@Controller
@RequestMapping("/admin/promotion")
public class PromotionController {

	@Autowired
	private PageConfig pageConfig;

	@Autowired
	private PromotionService promotionService;

	/**
	 * Controller when user first click promotion management
	 */
	@GetMapping("/list")
	public String listPromotion(Model model,
			@RequestParam(defaultValue = Constants.DEFAULT_WORD, name = "searchDataPromotion") String searchData,
			@RequestParam(name = "pageIndexPromotion", required = false) String pageIndex,
			@RequestParam(name = "pageSizePromotion", defaultValue = Constants.PAGE_SIZE_STRING) Integer pageSize) {
		
		int pageIndexVal = pageConfig.getInitPage();
		
		Page<Promotion> page = promotionService.searchAll(searchData, pageIndexVal, pageSize);
		
		model.addAttribute("listOfPromotions", page.toList());
		model.addAttribute("numOfPages", page.getTotalPages());
		model.addAttribute("currentPage", pageIndexVal);
		model.addAttribute("searchData", searchData);
		
		return "promotion/list-promotion";
	}

	
	/**
	 * Controller when user search, paging in screen promotion list 
	 */
	@GetMapping("/search")
	public String searchPromotion(Model model,
			@RequestParam(defaultValue = Constants.DEFAULT_WORD, name = "searchDataPromotion") String searchData,
			@RequestParam(name = "pageIndexPromotion", required = false) String pageIndex,
			@RequestParam(name = "pageSizePromotion", defaultValue = Constants.PAGE_SIZE_STRING) Integer pageSize) {
		LogUtils.getLogger().info(searchData);
		int pageIndexVal = pageConfig.getInitPage();
		if (pageIndex != null) {
			pageIndexVal = Integer.parseInt(pageIndex);
		}
		Page<Promotion> page = promotionService.searchAll(searchData, pageIndexVal, pageSize);
		model.addAttribute("listOfPromotions", page.toList());
		model.addAttribute("numOfPages", page.getTotalPages());
		model.addAttribute("currentPage", pageIndexVal);
		return "promotion/list-table-promotion";
	}
}
