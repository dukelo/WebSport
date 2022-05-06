package tw.sport.controller;

import java.io.File;
import java.io.IOException;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.multipart.MultipartFile;

import tw.sport.model.HMission;
import tw.sport.model.HMissionService;


@Controller
@SessionAttributes(names = {"Name"})
public class TestController {
	
	@Autowired
	private HMissionService hMissionS;	
	
	@GetMapping("/teststart")
	public String teststart(Model m) {
		m.addAttribute("test", "t1");
		return "testupfile";		
	}
	
	@PostMapping("/testhservice")
	@ResponseBody
	public List<HMission> htest() {
		
		List<HMission> hMission = hMissionS.getByClass("Private");		
		return hMission;
	}
	
}
