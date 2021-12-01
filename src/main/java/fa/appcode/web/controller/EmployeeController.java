/*
 *
 * @author: ChuongHV1
 * @date: Nov 27, 2021
 */

package fa.appcode.web.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import fa.appcode.common.utils.ConvertUtils;
import fa.appcode.config.PageConfig;
import fa.appcode.services.EmployeeService;
import fa.appcode.web.vo.EmployeeVo;

@Controller
@RequestMapping("/admin/employee/")
public class EmployeeController {

	@Autowired
	private EmployeeService employeeService;

	@Autowired
	private PageConfig pageConfig;

	@GetMapping("list-employee")
	public String showListEmployee(Model model) throws Exception {
		int pageIndexValue = pageConfig.getInitPage();
		int pageSizeValue = pageConfig.getSizePage();
		Page<EmployeeVo> page = employeeService.findAllEmployee(pageIndexValue - 1, pageSizeValue);
		model.addAttribute("employeeVos", page.toList());
		model.addAttribute("numOfPages", page.getTotalPages());
		model.addAttribute("pageIndex", pageIndexValue);

		return "employee/list-employee";
	}

	@GetMapping("list-employee/filter")
	public String showListEmployeeSearch(
			@RequestParam(name = "dataSearch", required = true, defaultValue = "") String dataSearch,
			@RequestParam(name = "pageIndex", required = true) String pageIndex,
			@RequestParam(name = "pageSize", required = true) String pageSize, Model model, HttpSession httpSession) {

		int pageIndexValue = ConvertUtils.convertStrToInt(pageIndex);
		int pageSizeValue = ConvertUtils.convertStrToInt(pageSize);
		Page<EmployeeVo> page = employeeService.findAllEmployee(pageIndexValue - 1, pageSizeValue, dataSearch);
		model.addAttribute("employeeVos", page.toList());
		model.addAttribute("numOfPages", page.getTotalPages());
		model.addAttribute("pageIndex", pageIndexValue);
		return "employee/table-employee";
	}

	@GetMapping("add-employee")
	public String addEmployeeShow() {
		return "employee/add-employee";
	}

}
