/*
 *
 * @author: ChuongHV1
 * @date: Nov 27, 2021
 */

package fa.appcode.web.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Optional;

import javax.servlet.http.HttpSession;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.validation.FieldError;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import fa.appcode.common.logging.LogUtils;
import fa.appcode.common.utils.ConvertUtils;
import fa.appcode.config.PageConfig;
import fa.appcode.services.EmployeeService;
import fa.appcode.web.entities.Account;
import fa.appcode.web.entities.Employee;
import fa.appcode.web.vo.EmployeeVo;
import fa.appcode.web.vo.ResponseObject;
import lombok.extern.java.Log;

@RestController
@RequestMapping("/admin/employee/")
public class EmployeeController {

	@Autowired
	private EmployeeService employeeService;

	@Autowired
	private PageConfig pageConfig;

	/**
	 * @param model
	 * @return
	 * @throws Exception
	 */
	@GetMapping("list-employee")
	public ModelAndView showListEmployee(Model model) throws Exception {
		int pageIndexValue = pageConfig.getInitPage();
		int pageSizeValue = pageConfig.getSizePage();
		Page<EmployeeVo> page = employeeService.findAllEmployee(pageIndexValue - 1, pageSizeValue);
		model.addAttribute("employeeVos", page.toList());
		model.addAttribute("numOfPages", page.getTotalPages());
		model.addAttribute("pageIndex", pageIndexValue);

		return new ModelAndView("employee/list-employee");
	}

	/**
	 * @param dataSearch
	 * @param pageIndex
	 * @param pageSize
	 * @param model
	 * @param httpSession
	 * @return
	 */
	@GetMapping("list-employee/filter")
	public ModelAndView showListEmployeeSearch(
			@RequestParam(name = "dataSearch", required = true, defaultValue = "") String dataSearch,
			@RequestParam(name = "pageIndex", required = true) String pageIndex,
			@RequestParam(name = "pageSize", required = true) String pageSize, Model model, HttpSession httpSession) {

		int pageIndexValue = ConvertUtils.convertStrToInt(pageIndex);
		int pageSizeValue = ConvertUtils.convertStrToInt(pageSize);
		Page<EmployeeVo> page = employeeService.findAllEmployee(pageIndexValue - 1, pageSizeValue, dataSearch);
		model.addAttribute("employeeVos", page.toList());
		model.addAttribute("numOfPages", page.getTotalPages());
		model.addAttribute("pageIndex", pageIndexValue);
		return new ModelAndView("employee/table-employee");
	}

	/**
	 * @return add/edit employee screen
	 */
	@GetMapping("detail-employee")
	public ModelAndView detailEmployeeShow() {
		return new ModelAndView("employee/detail-employee");
	}

	/**
	 * @param id
	 * @return find employee by id / 
	 */
	@GetMapping("/{id}")
	public ResponseEntity<ResponseObject> getById(@PathVariable String id) {
		Optional<Employee> employee = employeeService.findById(id);
		if (employee.isPresent()) {
			return ResponseEntity.status(HttpStatus.OK).body(new ResponseObject("OK", "FOUND", employee));
		} else {
			return ResponseEntity.status(HttpStatus.NOT_FOUND).body(new ResponseObject("ERROR", "NOT FOUND", employee));
		}
	}

	@PostMapping("save-employee")
	public ResponseEntity<ResponseObject> saveEmployee(@RequestBody @Valid Account account,
			BindingResult bindingResult) {
		
		if (bindingResult.hasErrors()) {
			Map<String, String> errortList = new HashMap<>();
			List<FieldError> fieldErrors = bindingResult.getFieldErrors();
			for (FieldError fieldError : fieldErrors) {
				errortList.put(fieldError.getField(), fieldError.getDefaultMessage());
			}
			

		} else {
			
		}
		
		
		
		
		LogUtils.getLogger().info("vo day");
		Employee employee = new Employee();
		employee.setAccount(account);
		Employee employeeResult = employeeService.save(employee);
		if (employeeResult != null) {
			return ResponseEntity.status(HttpStatus.OK)
					.body(new ResponseObject("OK", pageConfig.getSaveSuccess(), employee));
		}
		return ResponseEntity.status(HttpStatus.BAD_REQUEST)
				.body(new ResponseObject("ERROR", pageConfig.getSaveFail(), employee));

	}

}
