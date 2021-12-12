package fa.appcode.config;

import org.springframework.beans.factory.annotation.Value;
import org.springframework.context.annotation.PropertySource;
import org.springframework.stereotype.Component;

import lombok.Getter;

@Component
@PropertySource("classpath:messages.properties")
@PropertySource("classpath:webConfig.properties")
@Getter
public class PageConfig {

	@Value("${page.init}")
	private Integer initPage;

	@Value("${page.size}")
	private Integer sizePage;

	@Value("${page.showtimes.size}")
	private Integer maxPageShowTime;

	@Value("${login.fail.no.author}")
	private String noAuthor;

	@Value("${login.fail.no.permit}")
	private String noPermit;

	@Value("${login.fail.locked}")
	private String locked;

	@Value("${login.fail.incorrect}")
	private String incorrect;

	@Value("${promotion.save.success}")
	private String savePromotionSuccess;

	@Value("${promotion.add.failed}")
	private String savePromotionFailed;

	@Value("${promotion.startTime.invalid}")
	private String startTimeInvalid;

	@Value("${promotion.endTime.invalid}")
	private String endTimeInvalid;

	@Value("${promotion.delete.success}")
	private String deletePromotionSuccess;

	@Value("${promotion.delete.failed}")
	private String deletePromotionFailed;

	@Value("${promotion.title.exist}")
	private String titlePromotionExisted;

}
