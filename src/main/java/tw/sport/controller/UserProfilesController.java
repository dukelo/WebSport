package tw.sport.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RestController;

import tw.sport.model.UserProfiles;
import tw.sport.model.UserProfilesService;

@RestController
public class UserProfilesController {
	
	@Autowired
	private UserProfilesService uService;
	
	@PostMapping("/createuser.controller")
	public UserProfiles processUserCreateAction(@RequestBody UserProfiles uProfiles) {
		String encodePwd = new BCryptPasswordEncoder().encode(uProfiles.getPassword());
		uProfiles.setPassword(encodePwd);
		return uService.createUserProfiles(uProfiles); 
	}
	
}
