package fa.appcode.web.controller;

import java.time.LocalDate;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import fa.appcode.config.PageConfig;
import fa.appcode.services.CinemaRoomService;
import fa.appcode.services.ScheduleSeatService;
import fa.appcode.services.ShowtimesService;
import fa.appcode.web.entities.CinemaRoom;
import fa.appcode.web.entities.MovieDate;
import fa.appcode.web.entities.ScheduleSeat;
import fa.appcode.web.vo.PageVo;

@Controller
@RequestMapping("/admin")
public class TicketSellingController {
	
	@Autowired
	private ShowtimesService showtimesService;
	
	@Autowired
	private CinemaRoomService cinemaRoomService;
	
	@Autowired
	private ScheduleSeatService scheduleSeatService;
	
	@Autowired
	private PageConfig pageConfig;

	@GetMapping("/showtimes")
	public String showtimes(ModelMap modelMap, @RequestParam(value = "dateSelecting", required = false) String dateSelecting,
			@RequestParam(value = "pageIndex", required = false) Integer pageIndex) {

		List<LocalDate> listDates = showtimesService.getShowDateList(LocalDate.now().toString());
		
		modelMap.addAttribute("listDates", listDates);
		
		PageVo<MovieDate> pages = showtimesService.findMovieTimeByDate(dateSelecting, pageIndex, pageConfig.getMaxPageShowTime());
		
		modelMap.addAttribute("dateSelecting", dateSelecting == null ? LocalDate.now().toString() : dateSelecting);
		
		if(pages != null) {
			modelMap.addAttribute("pageIndex", pages.getPageIndex());
			modelMap.addAttribute("movieDates", pages.getContent());
			modelMap.addAttribute("totalPages", pages.getTotalPage());
		}else {
			modelMap.addAttribute("movieDates", null);
		}
		
		return "ticket-selling/showtimes";
	}
	
	@GetMapping("/selecting-seat")
	public String showSelectingSeat(ModelMap modelMap, 
			@RequestParam String movieId, @RequestParam String scheduleId) {
		
		List<ScheduleSeat> scheduleSeats = scheduleSeatService.findByMovieIdAndScheduleId(movieId, scheduleId);
		CinemaRoom cinemaRoom = cinemaRoomService.seatSoldsHanlder(cinemaRoomService.findByMovieId(movieId), scheduleSeats);		
		modelMap.addAttribute("cinemaRoom", cinemaRoom);	
		return "ticket-selling/selecting-seat";
	}
	
	@GetMapping("/confirm-ticket")
	public String showConfirmTicket() {
		return "ticket-selling/confirm-ticket";
	}
}
