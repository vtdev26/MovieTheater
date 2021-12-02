package fa.appcode.web.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.PropertySource;
import org.springframework.context.annotation.PropertySources;
import org.springframework.data.domain.Page;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import fa.appcode.common.utils.Constants;
import fa.appcode.config.PageConfig;
import fa.appcode.services.MovieService;
import fa.appcode.web.entities.Movie;

@Controller
@RequestMapping("/admin/movie")
@PropertySources(@PropertySource({"classpath:messages.properties", "classpath:webconfig.properties"}))
public class MovieController {
	
	@Autowired
	private PageConfig pageConfig;
	
	@Autowired
	MovieService movieServices;
	
	@GetMapping("/list")
	public String listMovie(Model model,@RequestParam(value = "pageIndex", required = false) String pageIndex) {
		
		int pageIndexVal = pageConfig.getInitPage();
		if (pageIndex !=null) {
			pageIndexVal=Integer.parseInt(pageIndex);
		}
		Page<Movie> page;
		page=movieServices.findAll(pageIndexVal, pageConfig.getSizePage());
		
		model.addAttribute("movies", page.toList());
		model.addAttribute("numOfPages", page.getTotalPages());
		model.addAttribute("totalPage", page.getTotalPages());
		model.addAttribute("currentPage", pageIndexVal);
		
		return "movie/list-movie";
	}
	@GetMapping("/search")
	public String searchMovie(Model model,@RequestParam(value = "pageIndex", required = false) String pageIndex,
			@RequestParam(defaultValue = Constants.DEFAULT_WORD,name = "searchData")String searchData ) {
		int pageIndexVal = pageConfig.getInitPage();
		
		if (pageIndex !=null) {
			pageIndexVal=Integer.parseInt(pageIndex);
		}
		
		Page<Movie> page;
		if (Constants.DEFAULT_WORD.equals(searchData)) {
			page=movieServices.findAll(pageIndexVal, pageConfig.getSizePage());
		}else {
			page=movieServices.searchAll(searchData, pageIndexVal, pageConfig.getSizePage());
		}
		
		model.addAttribute("movies", page.toList());
		model.addAttribute("numOfPages", page.getTotalPages());
		model.addAttribute("totalPage", page.getTotalPages());
		model.addAttribute("currentPage", pageIndexVal);
		
		return "movie/list-table-movie";
	}
	@GetMapping("/add-movie")
	public String showAddMovie() {
		return "movie/detail-movie";
	}
}
