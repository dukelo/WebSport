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

import tw.sport.model.BMess;
import tw.sport.model.BMessService;
import tw.sport.model.BMission;
import tw.sport.model.BMissionService;
import tw.sport.model.WSMember;
import tw.sport.model.WSMemberService;


@Controller
@SessionAttributes(names = {"Name"})
public class BikingController {
	
	@Autowired
	private BMissionService bMissionS;
	
	@Autowired
	private BMessService bMessS;
	
	@Autowired
	private WSMemberService wSMemberS;
	
		
	@RequestMapping(path="/websport/biking", method = RequestMethod.GET)
	public String processBikingControllerMain(Principal member,Model m) {			
		return "biking";
	}

	@PostMapping("/websport/biking/Official")
	@ResponseBody
	public List<BMission> processBikingControllerOfficial() {
		
		List<BMission> bMission = bMissionS.getByClass("Official");		
		return bMission;
	}
	
	@PostMapping("/websport/biking/Private")
	@ResponseBody
	public List<BMission> processBikingControllerPrivate() {		
		List<BMission> bMission = bMissionS.getByClass("Private");		
		return bMission;
	}
	
	@GetMapping(path="/websport/biking/image/{bMIPath}", produces = MediaType.IMAGE_JPEG_VALUE)
	@ResponseBody
	public byte[] processBikingPhoto(@PathVariable("bMIPath") String bMIPath) throws IOException, InterruptedException {
		
		File file = new File("C:\\WebWorks\\webWorkSpace\\Web-Sport\\src\\main\\resources\\static\\photo\\bikingmissionphoto\\"+bMIPath);		
		InputStream is = new FileInputStream(file);
		return IOUtils.toByteArray(is);
	}
	
	@GetMapping("/websport/member/biking/mission/{missionPage}")
	public String processGoToMissionPage(@PathVariable("missionPage") int bid, Model m) {
		BMission bMission = bMissionS.getById(bid);
		m.addAttribute("mBid", bMission.getBid());
		m.addAttribute("mName", bMission.getbName());
		m.addAttribute("mLevel", bMission.getbLevel());
		m.addAttribute("mTime", bMission.getbTime());
		m.addAttribute("mDis", bMission.getbDis());
		m.addAttribute("mDoc", bMission.getbDoc());
		m.addAttribute("mType", bMission.getbType());
		m.addAttribute("mClass", bMission.getbClass());
		m.addAttribute("bImage", bMission.getbImage());
		
		System.out.println(bMission.getbDis());
		
		return "bikingMission";
	}
	
	@PostMapping("/websport/member/biking/mission/discuss/{missionPage}")
	@ResponseBody
	public List<BMess> processDiscuss(@PathVariable("missionPage") int bid){
		System.out.println("discuss="+bid);
		return bMessS.getByBid(bid);
	}
	
	@GetMapping(path="/websport/biking/mission/discuss/userphoto/{missionPage}", produces = MediaType.IMAGE_JPEG_VALUE)
	@ResponseBody
	public byte[] processMemberPhoto(@PathVariable("missionPage") String Name) throws IOException, InterruptedException {
		WSMember member = wSMemberS.getByName(Name);		
		File file = new File("C:\\WebWorks\\webWorkSpace\\Web-Sport\\src\\main\\resources\\static\\photo\\userphoto\\"+member.getmPhoto());		
		InputStream is = new FileInputStream(file);
		return IOUtils.toByteArray(is);
	}
		
	@PostMapping("/websport/member/biking/mission/discuss/update")
	public RedirectView processDiscussUpdate(@RequestParam("umBid") int bid, @RequestParam("umBDoc") String umBDoc, @ModelAttribute("Name") String name) {
		
		BMission bMission = bMissionS.getById(bid);
		BMess bMess = new BMess();
		
		bMess.setName(name);
		bMess.setBid(bMission.getBid());
		bMess.setbName(bMission.getbName());
		bMess.setbType(bMission.getbType());
		bMess.setbContent(umBDoc);
		
		bMessS.insertHMess(bMess);
		
		String url = "/websport/member/biking/mission/"+bid;
		return new RedirectView(url);
		
	}
	
}