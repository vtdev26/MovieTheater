/*
 * @author: ChuongHV1
 * @date: Nov 26, 2021
 */
package fa.appcode.web.controller;

import java.security.Principal;

import org.springframework.security.core.Authentication;
import org.springframework.security.core.userdetails.User;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import fa.appcode.common.logging.LogUtils;

@Controller
@RequestMapping("/")
public class InitController {

	@GetMapping("login")
	public String showLogin() {
		return "login";
	}
	
	@GetMapping("user/dashboard")
	public String showUserDashboard(Model model, Principal principal) {

		User account = (User) ((Authentication) principal).getPrincipal();
		LogUtils.getLogger().info("account login: " + account.getUsername() + " " + account.getPassword());
		
		LogUtils.getLogger().info(" aaaa  " +account.getUsername());
		
		model.addAttribute("userName", account.getUsername());

		return "user-dashboard";
	}


	@GetMapping("admin/dashboard")
	public String showAdminDashboard(Model model, Principal principal) {

		User account = (User) ((Authentication) principal).getPrincipal();
		LogUtils.getLogger().info("account login: " + account.getUsername() + " " + account.getPassword());
		model.addAttribute("userName", account.getUsername());

		return "dashboard";
	}

	
	@GetMapping("403")
	public String accessDenied(Model model, Principal principal) {
		if (principal != null) {
			User loginedUser = (User) ((Authentication) principal).getPrincipal();
			String userInfo = loginedUser.getUsername();
			model.addAttribute("userInfo", userInfo);
			String message = "Hi " + principal.getName() //
					+ "<br> You do not have permission to access this page!";
			model.addAttribute("message", message);

		}

		return "403";
	}

}
