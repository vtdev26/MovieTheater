package fa.appcode.web.controller;

import java.io.IOException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.validation.FieldError;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import fa.appcode.common.logging.LogUtils;
import fa.appcode.common.utils.Constants;
import fa.appcode.common.utils.FileUploadUtils;
import fa.appcode.config.MessageConfig;
import fa.appcode.config.PageConfig;
import fa.appcode.services.PromotionService;
import fa.appcode.web.entities.Promotion;

/**
 * @author TruongNguyen
 */
@RestController
@RequestMapping("/admin/promotion/")
public class PromotionController {

	@Autowired
	private PageConfig pageConfig;

	@Autowired
	private MessageConfig messageConfig;

	@Autowired
	private PromotionService promotionService;

	/**
	 * Controller when user first click promotion management
	 *
	 * @param model
	 * @return
	 */
	@GetMapping("list")
	public ModelAndView listPromotion(Model model) {

		int pageIndexVal = pageConfig.getInitPage();
		int pageSize = pageConfig.getSizePage();
		String searchData = Constants.DEFAULT_WORD;

		Page<Promotion> page = promotionService.searchAll(Constants.DEFAULT_WORD, pageIndexVal, pageSize);

		LogUtils.getLogger().info(page);

		model.addAttribute("listOfPromotions", page.toList());
		model.addAttribute("numOfPages", page.getTotalPages());
		model.addAttribute("currentPage", pageIndexVal);
		model.addAttribute("searchData", searchData);

		return new ModelAndView("promotion/list-promotion");
	}

	/**
	 * Controller when user search, paging in screen promotion list
	 *
	 * @param model
	 * @param searchData
	 * @param pageIndex
	 * @param pageSize
	 * @return
	 */
	@GetMapping("search")
	public ModelAndView searchPromotion(Model model,
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

		return new ModelAndView("promotion/list-table-promotion");
	}

	/**
	 * Controller show form promotion detail
	 *
	 * @param model
	 * @param promotionId
	 * @return
	 */
	@GetMapping("showPromotionForm")
	public ModelAndView showPromotionForm(Model model,
			@RequestParam(name = "promotionId", required = false) Integer promotionId) {

		/*
		 * If request has promotion id
		 */
		if (promotionId != null && promotionId != 0) {
			Promotion promotion = promotionService.getById(promotionId);
			model.addAttribute("promotion", promotion);
		}

		return new ModelAndView("promotion/detail-promotion");
	}

	/**
	 * Controller save a promotion
	 *
	 * @param promotion
	 * @param result
	 * @param file
	 * @return
	 */
	@PostMapping("save")
	@ResponseBody
	public ResponseEntity<Map<String, String>> savePromotion(@Valid Promotion promotion, BindingResult result,
			@RequestParam(name = "file", required = false) MultipartFile file) {

		LogUtils.getLogger().info(promotion);

		boolean check = true;
		Map<String, String> errorList = new HashMap<>();

		/*
		 * Validate a promotion
		 */
		if (result.hasErrors()) {
			check = false;
			List<FieldError> fieldErrors = result.getFieldErrors();
			for (FieldError fieldError : fieldErrors) {
				errorList.put(fieldError.getField(), fieldError.getDefaultMessage());
			}
		}

		/*
		 * Check start time and end time
		 */
		if (promotion.getStartTime() != null && promotion.getEndTime() != null
				&& promotion.getEndTime().compareTo(promotion.getStartTime()) < 0) {
			check = false;
			errorList.put("startTime", messageConfig.getStartTimeInvalid());
			errorList.put("endTime", messageConfig.getEndTimeInvalid());
		}

		/*
		 * Check title exist
		 */
		if (promotionService.checkTitleExist(promotion.getPromotionId(), promotion.getTitle())) {
			check = false;
			errorList.put("title", messageConfig.getTitlePromotionExisted());
		}
		/*
		 * Handle return
		 */
		if (check == false) {
			return new ResponseEntity<>(errorList, HttpStatus.BAD_REQUEST);
		} else {
			Map<String, String> message = new HashMap<>();
			/*
			 * Save file image if it exists
			 */
			if (file != null && !file.isEmpty()) {
				try {
					LogUtils.getLogger().info("co file");
					FileUploadUtils.saveFile(Constants.SRC_PROMOTION_IMAGE, file.getOriginalFilename(), file);
					promotion.setImage(Constants.SRC_PROMOTION_IMAGE_2 + file.getOriginalFilename());
					LogUtils.getLogger().info(promotion);
				} catch (IOException e) {
					message.put("messageFailed", messageConfig.getSavePromotionFailed());
					return new ResponseEntity<>(message, HttpStatus.BAD_REQUEST);
				}
			}

			LogUtils.getLogger().info(promotion);

			/*
			 * Save a promotion into database
			 */
			if (promotionService.saveOrUpdate(promotion)) {
				message.put("messageSuccess", messageConfig.getSavePromotionSuccess());
				return new ResponseEntity<>(message, HttpStatus.OK);
			} else {
				message.put("messageFailed", messageConfig.getSavePromotionFailed());
				return new ResponseEntity<>(message, HttpStatus.BAD_REQUEST);
			}
		}
	}

	/**
	 * Controller delete a promotion
	 * 
	 * @param promotionId
	 * @return
	 */
	@DeleteMapping("delete/{promotionId}")
	public ResponseEntity<String> delete(@PathVariable(name = "promotionId") String promotionId) {
		try {
			Integer idValue = Integer.parseInt(promotionId);

			if (promotionService.deletePromotionById(idValue)) {
				return new ResponseEntity<>(messageConfig.getDeletePromotionSuccess(), HttpStatus.OK);

			} else {
				return new ResponseEntity<>(messageConfig.getDeletePromotionFailed(), HttpStatus.BAD_REQUEST);
			}

		} catch (Exception e) {
			return new ResponseEntity<>(messageConfig.getDeletePromotionFailed(), HttpStatus.BAD_REQUEST);
		}
	}

}
