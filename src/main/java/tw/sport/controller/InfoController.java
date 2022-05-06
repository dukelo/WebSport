package tw.sport.controller;

import java.security.Principal;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class InfoController {
	
	@RequestMapping(path="/websport/info", method = RequestMethod.GET)
	public String processIndexControllerMain(Principal member,Model m) {
		
		if(member == null) {
			return "info";
		}else if(member != null) {
			m.addAttribute("Name", member.getName());
		}		
		return "info";
	}

}