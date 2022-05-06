package tw.sport.controller;

import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.security.Principal;
import java.util.List;

import org.apache.commons.io.IOUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.MediaType;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.servlet.view.RedirectView;

import tw.sport.model.HMemberMission;
import tw.sport.model.HMemberMissionService;
import tw.sport.model.HMess;
import tw.sport.model.HMessService;
import tw.sport.model.HMission;
import tw.sport.model.HMissionService;
import tw.sport.model.WSMember;
import tw.sport.model.WSMemberService;

@Controller
@SessionAttributes(names = {"Name"})
public class HikingController {
	
	@Autowired
	private HMissionService hMissionS;
	
	@Autowired
	private HMemberMissionService HMemberMissionS;
	
	@Autowired
	private HMessService hMessS;
	
	@Autowired
	private WSMemberService wSMemberS;
	
	@RequestMapping(path="/websport/hiking", method = RequestMethod.GET)
	public String processHikingControllerMain(Principal member,Model m) {		
		return "hiking";
	}
	
	@PostMapping("/websport/hiking/Official")
	@ResponseBody
	public List<HMission> processHikingControllerOfficial() {
		
		List<HMission> hMission = hMissionS.getByClass("Official");		
		return hMission;
	}
	
	@PostMapping("/websport/hiking/Private")
	@ResponseBody
	public List<HMission> processHikingControllerPrivate() {		
		List<HMission> hMission = hMissionS.getByClass("Private");		
		return hMission;
	}
	
	@GetMapping(path="/websport/hiking/image/{hMIPath}", produces = MediaType.IMAGE_JPEG_VALUE)
	@ResponseBody
	public byte[] processHikingPhoto(@PathVariable("hMIPath") String hMIPath) throws IOException, InterruptedException {
		
		File file = new File("C:\\WebWorks\\webWorkSpace\\Web-Sport\\src\\main\\resources\\static\\photo\\hikingmissionphoto\\"+hMIPath);		
		InputStream is = new FileInputStream(file);
		return IOUtils.toByteArray(is);
	}

	@GetMapping("/websport/member/hiking/mission/{missionPage}")
	public String processGoToMissionPage(@PathVariable("missionPage") int hid, Model m) {
		HMission hMission = hMissionS.getById(hid);
		m.addAttribute("mHid", hMission.getHid());
		m.addAttribute("mName", hMission.gethName());
		m.addAttribute("mLevel", hMission.gethLevel());
		m.addAttribute("mTime", hMission.gethTime());
		m.addAttribute("mDis", hMission.gethDis());
		m.addAttribute("mDoc", hMission.gethDoc());
		m.addAttribute("mType", hMission.gethType());
		m.addAttribute("mClass", hMission.gethClass());
		m.addAttribute("hImage", hMission.gethImage());
		
		System.out.println(hMission.gethDis());
		
		return "hikingMission";
	}
	
	@GetMapping("/websport/hiking/mission/join")
	public RedirectView processAddHMission(Principal member, @RequestParam("mHid") int mHid) {
		
		HMission hMission = hMissionS.getById(mHid);
		HMemberMission hMemberMission = new HMemberMission();
		hMemberMission.setName(member.getName());
		hMemberMission.setHid(mHid);
		hMemberMission.sethName(hMission.gethName());
		hMemberMission.sethType(hMission.gethType());

		HMemberMissionS.insertHMemberMission(hMemberMission);

		String url = "/websport/member/personal";
		return new RedirectView(url);		
	}
	
	@PostMapping("/websport/member/hiking/mission/discuss/{missionPage}")
	@ResponseBody
	public List<HMess> processDiscuss(@PathVariable("missionPage") int hid){
		return hMessS.getByHid(hid);
	}
	
	@GetMapping(path="/websport/hiking/mission/discuss/userphoto/{missionPage}", produces = MediaType.IMAGE_JPEG_VALUE)
	@ResponseBody
	public byte[] processMemberPhoto(@PathVariable("missionPage") String Name) throws IOException, InterruptedException {
		WSMember member = wSMemberS.getByName(Name);		
		File file = new File("C:\\WebWorks\\webWorkSpace\\Web-Sport\\src\\main\\resources\\static\\photo\\userphoto\\"+member.getmPhoto());		
		InputStream is = new FileInputStream(file);
		return IOUtils.toByteArray(is);
	}
	
	
	
	@PostMapping("/websport/member/hiking/mission/discuss/update")
	public RedirectView processDiscussUpdate(@RequestParam("umHid") int hid, @RequestParam("umHDoc") String umHDoc, @ModelAttribute("Name") String name) {
		
		HMission hMission = hMissionS.getById(hid);
		HMess hMess = new HMess();
		
		hMess.setName(name);
		hMess.setHid(hMission.getHid());
		hMess.sethName(hMission.gethName());
		hMess.sethType(hMission.gethType());
		hMess.sethContent(umHDoc);
		
		hMessS.insertHMess(hMess);
		
		String url = "/websport/member/hiking/mission/"+hid;
		return new RedirectView(url);
		
	}
	
	
}
