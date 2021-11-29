/*
 *
 * @author: ChuongHV1
 * @date: Nov 27, 2021
 */

package fa.appcode.web.controller;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import fa.appcode.common.logging.LogUtils;
import fa.appcode.common.utils.ConvertUtils;
import fa.appcode.services.EmployeeService;
import fa.appcode.web.vo.EmployeeVo;

@Controller
@RequestMapping("/admin/employee/")
public class EmployeeController {

	@Autowired
	private EmployeeService employeeService;

	@GetMapping("list-employee")
	public String showListEmployee(@RequestParam(name = "dataSearch", required = false) String dataSearch,
			@RequestParam(name = "pageIndex", required = false) String pageIndex,
			@RequestParam(name = "pageSize", required = false) String pageSize, Model model, HttpSession httpSession)
			throws Exception {
		LogUtils.getLogger().info("dataSearch NULLLLL ");
		int pageIndexValue = (pageIndex == null) ? 0 : ConvertUtils.convertStrToInt(pageIndex) - 1;
		int pageSizeValue = (pageSize == null) ? 5 : ConvertUtils.convertStrToInt(pageSize);

		LogUtils.getLogger().info("pageIndexValue " + pageIndexValue + " pageSizeValue " + pageSizeValue);

		List<EmployeeVo> employeeVos = new ArrayList<EmployeeVo>();

		Page<EmployeeVo> page = employeeService.findAllEmployee(pageIndexValue, pageSizeValue);
		employeeVos = page.toList();
		int numOfPages = page.getTotalPages();
		model.addAttribute("employeeVos", employeeVos);
		model.addAttribute("numOfPages", numOfPages);
		model.addAttribute("pageIndex", pageIndexValue + 1);

		return "employee/list-employee";
	}

	@GetMapping("list-employee/filter")
	public String showListEmployeeSearch(@RequestParam(name = "dataSearch", required = true) String dataSearch,
			@RequestParam(name = "pageIndex", required = true) String pageIndex,
			@RequestParam(name = "pageSize", required = true) String pageSize, Model model, HttpSession httpSession) {
		LogUtils.getLogger().info("dataSearch KHONG NULLLLL " + dataSearch);
		int pageIndexValue = ConvertUtils.convertStrToInt(pageIndex) - 1;
		int pageSizeValue = ConvertUtils.convertStrToInt(pageSize);

		LogUtils.getLogger().info("pageIndexValue " + pageIndexValue + " pageSizeValue " + pageSizeValue);

		List<EmployeeVo> employeeVos = new ArrayList<EmployeeVo>();
		LogUtils.getLogger().info("dataSearch " + dataSearch);
		int numOfPages;
		if (dataSearch == null || "".equals(dataSearch)) {
			LogUtils.getLogger().info("dataSearch NULLLLL ");
			Page<EmployeeVo> page = employeeService.findAllEmployee(pageIndexValue, pageSizeValue);
			employeeVos = page.toList();
			numOfPages = page.getTotalPages();
		} else {
			LogUtils.getLogger().info("dataSearch KHONG  NULLLLL " + dataSearch);
			Page<EmployeeVo> page = employeeService.findAllEmployee(pageIndexValue, pageSizeValue, dataSearch);
			employeeVos = page.toList();
			numOfPages = page.getTotalPages();

		}

		LogUtils.getLogger().info("employee size: " + employeeVos.size());

		model.addAttribute("employeeVos", employeeVos);
		model.addAttribute("numOfPages", numOfPages);
		model.addAttribute("pageIndex", pageIndexValue + 1);

		return "employee/table-employee";
	}
	
	@GetMapping("add-employee")
	public String addEmployeeShow() {
		return "employee/add-employee";
	}

}
