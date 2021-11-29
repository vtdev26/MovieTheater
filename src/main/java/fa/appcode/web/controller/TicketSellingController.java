package fa.appcode.web.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import fa.appcode.common.logging.LogUtils;

@Controller
@RequestMapping("/showtimes")
public class TicketSellingController {
	
	@GetMapping	
	public String showtimes() {
		LogUtils.getLogger().info("inside showtimes method");
		return "ticket-selling/showtimes";
	}
}
