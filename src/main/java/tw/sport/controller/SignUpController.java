package tw.sport.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import tw.sport.model.WSMember;
import tw.sport.model.WSMemberService;

@Controller
public class SignUpController {
	
	@Autowired
	private WSMemberService wSMemberS;
	
	@RequestMapping(path = "/websport/signup", method = RequestMethod.POST)
	public String processSignUp(@ModelAttribute("wSMember") WSMember wSMember) {
		String encodePwd = new BCryptPasswordEncoder().encode(wSMember.getPassword());
		wSMember.setPassword(encodePwd);
		wSMemberS.createMember(wSMember);
		
		return "index";
	}

}
