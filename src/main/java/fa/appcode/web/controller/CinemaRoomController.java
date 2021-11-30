package fa.appcode.web.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import fa.appcode.config.PageConfig;
import fa.appcode.services.CinemaRoomService;
import fa.appcode.web.entities.CinemaRoom;

@Controller
@RequestMapping("room")
public class CinemaRoomController {

	@Autowired
	private CinemaRoomService cinemaRoomService;

	@Autowired
	private PageConfig pageConfig;

	@GetMapping("/list-room")
	public String showListRoom(@RequestParam(name = "searchField", required = false) String roomName,
			@RequestParam(required = false) String pageIndex, Model model) throws Exception {

		int pageIndexVal = pageConfig.getInitPage();
		int pageSize = pageConfig.getSizePage();

		if (pageIndex != null) {
			pageIndexVal = Integer.parseInt(pageIndex);
		}

		List<CinemaRoom> listCinemaRoom = null;
		if (roomName == null || roomName.equals("")) {

			Page<CinemaRoom> roomPage = cinemaRoomService.findAll(pageIndexVal, pageSize);
			listCinemaRoom = roomPage.toList();

			model.addAttribute("roomRecords", listCinemaRoom.size());
			model.addAttribute("cinemaRooms", listCinemaRoom);
			model.addAttribute("currentPage", pageIndexVal);
			model.addAttribute("numOfPages", roomPage.getTotalPages());
		} else {

			Page<CinemaRoom> roomPage = cinemaRoomService.findAllBySearchKey(roomName, pageIndexVal, pageSize);
			listCinemaRoom = roomPage.toList();
			model.addAttribute("roomName", roomName);
			model.addAttribute("roomRecords", listCinemaRoom.size());
			model.addAttribute("cinemaRooms", listCinemaRoom);
			model.addAttribute("currentPage", pageIndexVal);
			model.addAttribute("numOfPages", roomPage.getTotalPages());
		}
		return "cinema-room/list-room";
	}

	@GetMapping("/room-images")
	public String showImageInToolTip(@RequestParam(name = "roomId") String roomId, Model model) {

		return "room-images";
	}
}
