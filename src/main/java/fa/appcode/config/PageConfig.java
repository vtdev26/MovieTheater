package fa.appcode.config;

import org.springframework.beans.factory.annotation.Value;
import org.springframework.boot.context.properties.ConfigurationProperties;
import org.springframework.context.annotation.PropertySource;
import org.springframework.stereotype.Component;

import lombok.Getter;

@Component
@PropertySource("classpath:messages.properties")
@PropertySource("classpath:webconfig.properties")
@ConfigurationProperties
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
	
	@Value("${save.success}")
	private String saveSuccess;
	
	@Value("${save.fail}")
	private String saveFail;
}
