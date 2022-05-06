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

import tw.sport.model.RMess;
import tw.sport.model.RMessService;
import tw.sport.model.RMission;
import tw.sport.model.RMissionService;
import tw.sport.model.WSMember;
import tw.sport.model.WSMemberService;

@Controller
@SessionAttributes(names = {"Name"})
public class RunningController {
	
	@Autowired
	private RMissionService rMissionS;
	
	@Autowired
	private RMessService rMessS;
	
	@Autowired
	private WSMemberService wSMemberS;
	
	
	@RequestMapping(path="/websport/running", method = RequestMethod.GET)
	public String processRunningControllerMain(Principal member,Model m) {	
		return "running";
	}
	
	@PostMapping("/websport/running/Official")
	@ResponseBody
	public List<RMission> processRunningControllerOfficial() {
		
		List<RMission> rMission = rMissionS.getByClass("Official");		
		return rMission;
	}
	
	@PostMapping("/websport/running/Private")
	@ResponseBody
	public List<RMission> processRunningControllerPrivate() {
		
		List<RMission> rMission = rMissionS.getByClass("Private");		
		return rMission;
	}
	
	@GetMapping(path="/websport/running/image/{rMIPath}", produces = MediaType.IMAGE_JPEG_VALUE)
	@ResponseBody
	public byte[] processHikingPhoto(@PathVariable("rMIPath") String rMIPath) throws IOException, InterruptedException {
		
		File file = new File("C:\\WebWorks\\webWorkSpace\\Web-Sport\\src\\main\\resources\\static\\photo\\runningmissionphoto\\"+rMIPath);		
		InputStream is = new FileInputStream(file);
		return IOUtils.toByteArray(is);
	}
	
	@GetMapping("/websport/member/running/mission/{missionPage}")
	public String processGoToMissionPage(@PathVariable("missionPage") int rid, Model m) {
		RMission rMission = rMissionS.getById(rid);
		m.addAttribute("mRid", rMission.getRid());
		m.addAttribute("mName", rMission.getrName());
		m.addAttribute("mLevel", rMission.getrLevel());
		m.addAttribute("mTime", rMission.getrTime());
		m.addAttribute("mDis", rMission.getrDis());
		m.addAttribute("mDoc", rMission.getrDoc());
		m.addAttribute("mType", rMission.getrType());
		m.addAttribute("mClass", rMission.getrClass());
		m.addAttribute("rImage", rMission.getrImage());
		
		System.out.println(rMission.getrDis());
		
		return "runningMission";
	}

	@PostMapping("/websport/member/running/mission/discuss/{missionPage}")
	@ResponseBody
	public List<RMess> processDiscuss(@PathVariable("missionPage") int rid){
		return rMessS.getByRid(rid);
	}
	
	@GetMapping(path="/websport/running/mission/discuss/userphoto/{missionPage}", produces = MediaType.IMAGE_JPEG_VALUE)
	@ResponseBody
	public byte[] processMemberPhoto(@PathVariable("missionPage") String Name) throws IOException, InterruptedException {
		WSMember member = wSMemberS.getByName(Name);		
		File file = new File("C:\\WebWorks\\webWorkSpace\\Web-Sport\\src\\main\\resources\\static\\photo\\userphoto\\"+member.getmPhoto());		
		InputStream is = new FileInputStream(file);
		return IOUtils.toByteArray(is);
	}
	
	
	
	@PostMapping("/websport/member/running/mission/discuss/update")
	public RedirectView processDiscussUpdate(@RequestParam("umRid") int rid, @RequestParam("umRDoc") String umRDoc, @ModelAttribute("Name") String name) {
		
		RMission rMission = rMissionS.getById(rid);
		RMess rMess = new RMess();
		
		rMess.setName(name);
		rMess.setRid(rMission.getRid());
		rMess.setrName(rMission.getrName());
		rMess.setrType(rMission.getrType());
		rMess.setrContent(umRDoc);
		
		rMessS.insertRMess(rMess);
		
		String url = "/websport/member/running/mission/"+rid;
		return new RedirectView(url);
		
	}
	
}
