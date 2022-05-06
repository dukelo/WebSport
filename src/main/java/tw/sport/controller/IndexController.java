package tw.sport.controller;

import java.security.Principal;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.SessionAttributes;

@Controller
@SessionAttributes(names = {"Name"})
public class IndexController {
	
	@RequestMapping(path="/websport/index", method = RequestMethod.GET)
	public String processIndexControllerMain(Principal member,Model m) {
		
		if(member == null) {
			return "index";
		}else if(member != null) {
			m.addAttribute("Name", member.getName());
		}		
		return "index";
	}

}
