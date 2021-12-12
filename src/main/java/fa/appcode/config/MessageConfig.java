package fa.appcode.config;

import org.springframework.beans.factory.annotation.Value;
import org.springframework.context.annotation.PropertySource;
import org.springframework.stereotype.Component;

import lombok.Getter;

@Component
@PropertySource("classpath:messages.properties")
@PropertySource("classpath:webConfig.properties")
@Getter
public class MessageConfig {

	@Value("${status.add.success}")
	private String statusAddSuccess;

	@Value("${message.add.success}")
	private String messageAddSuccess;

	@Value("${status.add.data.invalid}")
	private String statusAddDataInvalid;
	@Value("${message.add.data.invalid}")
	private String messageAddDataInvalid;

	@Value("${status.add.image.invalid}")
	private String statusAddImageInvalid;

	@Value("${message.add.image.invalid}")
	private String messageAddImageInvalid;

	@Value("${status.add.account.exists}")
	private String statusAddAccountExists;

	@Value("${message.add.account.exists}")
	private String messageAddAccountExists;

	@Value("${status.add.server.error}")
	private String statusAddServerError;

	@Value("${message.add.server.error}")
	private String messageAddServerError;

	@Value("${status.delete.success}")
	private String statusDeleteSuccess;

	@Value("${message.delete.success}")
	private String messageDeleteSuccess;

	@Value("${status.delete.fail}")
	private String statusDeleteFail;

	@Value("${message.delete.fail}")
	private String messageDeleteFail;

	@Value("${status.find.success}")
	private String statusFindSuccess;

	@Value("${message.find.success}")
	private String messageFindSuccess;

	@Value("${status.find.fail}")
	private String statusFindFail;

	@Value("${message.find.fail}")
	private String messageFindFail;

}
