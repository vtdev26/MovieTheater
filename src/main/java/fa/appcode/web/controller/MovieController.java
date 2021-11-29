package fa.appcode.web.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.context.annotation.PropertySource;
import org.springframework.context.annotation.PropertySources;
import org.springframework.data.domain.Page;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import fa.appcode.common.logging.LogUtils;
import fa.appcode.services.MovieService;
import fa.appcode.web.entities.Movie;

@Controller
@RequestMapping("/admin/movie")
@PropertySources(@PropertySource({"classpath:messages.properties", "classpath:webconfig.properties"}))
public class MovieController {
	@Value("${page.size}")
	private Integer pageSize;
	@Autowired
	MovieService movieServices;
	@GetMapping("/list")
	public String listMovie(Model model,@RequestParam(value = "pageIndex", required = false) String pageIndex) {
		int pageIndexVal = 1;
		if (pageIndex !=null) {
			pageIndexVal=Integer.parseInt(pageIndex);
		}
		LogUtils.getLogger().info("page index is "+pageIndexVal);
		Page<Movie> page;
		LogUtils.getLogger().info("page index is "+pageIndexVal);
		page=movieServices.findAll(pageIndexVal, pageSize);
		LogUtils.getLogger().info("no search data "+page.toList());
		LogUtils.getLogger().info(page.toList()+" "+pageIndexVal);
		model.addAttribute("movies", page.toList());
		model.addAttribute("numOfPages", page.getTotalPages());
		model.addAttribute("totalPage", page.getTotalPages());
		model.addAttribute("currentPage", pageIndexVal);
		return "movie/list-movie";
	}
	@GetMapping("/search")
	public String searchMovie(Model model,@RequestParam(value = "pageIndex", required = false) String pageIndex,
			@RequestParam(defaultValue = "",name = "searchData")String searchData ) {
		int pageIndexVal = 1;
		if (pageIndex !=null) {
			pageIndexVal=Integer.parseInt(pageIndex);
		}
		LogUtils.getLogger().info("page index is "+pageIndexVal);
		Page<Movie> page;
		if ("".equals(searchData)) {
			page=movieServices.findAll(pageIndexVal,pageSize );
		}else {
			page=movieServices.searchAll(searchData, pageIndexVal, pageSize);
		}
		
		model.addAttribute("movies", page.toList());
		model.addAttribute("numOfPages", page.getTotalPages());
		model.addAttribute("totalPage", page.getTotalPages());
		model.addAttribute("currentPage", pageIndexVal);
		return "movie/list-table-movie";
	}
}
