/*
 *
 * @author: ChuongHV1
 * @date: Dec 1, 2021
 */

package fa.appcode.security;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.authentication.LockedException;
import org.springframework.security.core.AuthenticationException;
import org.springframework.security.web.authentication.SimpleUrlAuthenticationFailureHandler;
import org.springframework.stereotype.Component;

import fa.appcode.config.PageConfig;
import fa.appcode.services.AccountService;
import fa.appcode.web.entities.Account;

@Component
public class CustomAuthenticationFailureHandler extends SimpleUrlAuthenticationFailureHandler {

	@Autowired
	private PageConfig pageConfig;

	@Autowired
	private AccountService accountService;

	@Override
	public void onAuthenticationFailure(HttpServletRequest request, HttpServletResponse response,
			AuthenticationException exception) throws IOException, ServletException {
		String userName = request.getParameter("username");
		Account accountLogin = accountService.findAccountByUserName(userName);
		if (accountLogin != null) {
			if (accountLogin.getStatus() == 0) {
				exception = new LockedException(pageConfig.getLocked());
				super.setDefaultFailureUrl("/login?locked=true");
			}
		} else {
			super.setDefaultFailureUrl("/login?incorrect=true");
		}
		super.onAuthenticationFailure(request, response, exception);
	}

}
