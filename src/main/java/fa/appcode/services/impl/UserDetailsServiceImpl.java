/*
 *
 * @author: ChuongHV1
 * @date: Nov 28, 2021
 */

package fa.appcode.services.impl;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.userdetails.User;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;

import fa.appcode.common.logging.LogUtils;
import fa.appcode.repositories.AccountRepository;
import fa.appcode.repositories.RoleRepository;
import fa.appcode.web.entities.Account;
import fa.appcode.web.entities.Roles;

@Service("userDetailsService")
public class UserDetailsServiceImpl implements UserDetailsService {

	@Autowired
	private AccountRepository accountRepository;
	
	@Autowired
	private RoleRepository roleRepository;


	@Override
	public UserDetails loadUserByUsername(String username) throws UsernameNotFoundException {

		Account account = accountRepository.findByUserName(username);

		if (account == null) {
			throw new UsernameNotFoundException("Not found username !!!");
		}

		List<Roles> roles = roleRepository.findRolesByAccountId(account.getAccountId());

		LogUtils.getLogger().info("ROLESSS " + roles.get(0).getRoleName());

		List<GrantedAuthority> grantList = new ArrayList<GrantedAuthority>();
		if (roles != null) {
			for (Roles role : roles) {
				GrantedAuthority authority = new SimpleGrantedAuthority(role.getRoleName());
				grantList.add(authority);
			}
		}

		UserDetails userDetails = (UserDetails) new User(account.getUserName(), account.getPassword(), grantList);
		LogUtils.getLogger().info("userDetail " + userDetails.getUsername() + " " + userDetails.getPassword() + " "
				+ userDetails.getAuthorities().toString());
		return userDetails;

	}

}
