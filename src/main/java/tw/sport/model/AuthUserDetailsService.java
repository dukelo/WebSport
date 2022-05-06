package tw.sport.model;

import java.util.Collections;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.userdetails.User;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;

@Service
public class AuthUserDetailsService implements UserDetailsService {
	
	@Autowired
//	private UserProfilesService ups;
	private WSMemberService wSMemberS;

//	@Override
//	public UserDetails loadUserByUsername(String username) throws UsernameNotFoundException {
//
//		UserProfiles up1 = ups.getByName(username);
//		return new User(up1.getName(), up1.getPassword(), Collections.emptyList());
//		
//	}
	
	@Override
	public UserDetails loadUserByUsername(String username) throws UsernameNotFoundException {
		
		WSMember member = wSMemberS.getByName(username);
		return new User(member.getName(), member.getPassword(), Collections.emptyList());
		
	}
	
	

}
