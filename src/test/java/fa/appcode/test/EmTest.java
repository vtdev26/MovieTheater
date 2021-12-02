/*
 *
 * @author: ChuongHV1
 * @date: Dec 2, 2021
 */

package fa.appcode.test;

import org.junit.jupiter.api.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.junit4.SpringRunner;

import fa.appcode.services.AccountService;
import fa.appcode.web.entities.Account;

@SpringBootTest
class EmTest {

	@Autowired
	private AccountService accountService;

	@Test
	void test() {
		Account account = new Account();
		account.setGender("1");
		account.setAddress("nam dinh");
		accountService.save(account);
	}

}
