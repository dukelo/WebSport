package tw.sport.controller;

import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Map;

import org.apache.commons.io.IOUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.MediaType;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.view.RedirectView;
import tw.sport.model.BMission;
import tw.sport.model.BMissionService;
import tw.sport.model.HMission;
import tw.sport.model.HMissionService;
import tw.sport.model.RMission;
import tw.sport.model.RMissionService;
import tw.sport.model.WSMember;
import tw.sport.model.WSMemberService;

class DateToS{
	
	String dateToString() {
		Date date = new Date();
		DateFormat dataFormat = new SimpleDateFormat("yyMMddHHmmss");
		return dataFormat.format(date).toString();
	}	
}

@Controller
@SessionAttributes(names = {"Name"})
public class MemberController {
	
	@Autowired
	private HMissionService hMissionS;
	
	@Autowired
	private RMissionService rMissionS;
	
	@Autowired
	private BMissionService bMissionS;
	
	@Autowired
	private WSMemberService wSMemberS;
		
	@RequestMapping(path="/websport/member/personal", method = RequestMethod.GET)
	public String processMemberControllerMain(@ModelAttribute("Name") String Name, Model m) {
		WSMember member = wSMemberS.getByName(Name);		
		m.addAttribute("aName",member.getName());
		m.addAttribute("aNickName",member.getnName());
		m.addAttribute("aPassword",member.getPassword());
		m.addAttribute("aEmail",member.getEmail());
		return "member";
	}
	
	@GetMapping(path="/websport/member/personal/userphoto", produces = MediaType.IMAGE_JPEG_VALUE)
	@ResponseBody
	public byte[] processMemberPhoto(@ModelAttribute("Name") String Name) throws IOException, InterruptedException {
		WSMember member = wSMemberS.getByName(Name);
		System.out.println("static/photo/userphoto/"+"john220326154022.jpg");
		System.out.println(member.getmPhoto());
		
		File file = new File("C:\\WebWorks\\webWorkSpace\\Web-Sport\\src\\main\\resources\\static\\photo\\userphoto\\"+member.getmPhoto());		
		InputStream is = new FileInputStream(file);
		return IOUtils.toByteArray(is);
	}
		
	@PostMapping("/websport/member/account")
	public RedirectView processAccount(@ModelAttribute("Name") String Name, Model m,
								 @RequestParam("eNName") String eNName,
								 @RequestParam("eEmail") String eEmail,
								 @RequestParam("ePassword") String ePassword,
								 MultipartFile ePhoto) throws IOException {
		
		System.out.println("Name+eNName+eEmail+ePassword="+Name+" "+eNName+" "+eEmail+" "+ePassword);
		DateToS dateToS = new DateToS();

		WSMember member = wSMemberS.getByName(Name);
		if(ePhoto.getOriginalFilename() != null && ePhoto.getOriginalFilename().length() !=0) {
			String dirPath = "C:\\WebWorks\\webWorkSpace\\Web-Sport\\src\\main\\resources\\static\\photo\\userphoto\\";
			String fileName = Name+dateToS.dateToString()+".jpg";
			
			File userPhoto = new File(dirPath+fileName);
			ePhoto.transferTo(userPhoto);			
			member.setmPhoto(fileName);
		}
						
		if(ePassword.length() == 0 || ePassword == null) {
			member.setnName(eNName);
			member.setEmail(eEmail);
			wSMemberS.createMember(member);				
		}else {
			member.setnName(eNName);
			member.setEmail(eEmail);
			String bcEcode = new BCryptPasswordEncoder().encode(ePassword);
			member.setPassword(bcEcode);
			wSMemberS.createMember(member);
		}
		
		String url = "/websport/member/personal";
		return new RedirectView(url);
	
	}
		
	@PostMapping("/websport/member/createmission")
	public RedirectView processCreateMission(@ModelAttribute("Name") String Name, @RequestParam Map<String, String> map, MultipartFile mPhoto) throws IOException {

		DateToS dateToS = new DateToS();
		System.out.println(map.get("mType"));
				
		if("Hiking".equals(map.get("mType"))) {
			
			System.out.println(map.get("mType"));
			
			String dirPath = "C:\\WebWorks\\webWorkSpace\\Web-Sport\\src\\main\\resources\\static\\photo\\hikingmissionphoto\\";
			String fileName = Name+"hiking"+dateToS.dateToString()+".jpg";
					
			HMission hMission = new HMission();
			hMission.sethName(map.get("mName"));
			hMission.sethLevel(map.get("mLevel"));
			hMission.sethDis(map.get("mDis"));
			hMission.sethTime(map.get("mTime"));
			hMission.sethDoc(map.get("mDoc"));
			hMission.sethImage(fileName);
			hMission.sethType(map.get("mType"));
			hMission.sethClass(map.get("mClass"));
			hMission.sethSponsor(Name);
			
			File hMissionPhoto = new File(dirPath+fileName);		
			mPhoto.transferTo(hMissionPhoto);
			
			hMissionS.insertHMission(hMission);
		
		}else if("Running".equals(map.get("mType"))) {
			
			System.out.println(map.get("mType"));
			
			String dirPath = "C:\\WebWorks\\webWorkSpace\\Web-Sport\\src\\main\\resources\\static\\photo\\runningmissionphoto\\";
			String fileName = Name+"running"+dateToS.dateToString()+".jpg";
					
			RMission rMission = new RMission();
			rMission.setrName(map.get("mName"));
			rMission.setrLevel(map.get("mLevel"));
			rMission.setrDis(map.get("mDis"));
			rMission.setrTime(map.get("mTime"));
			rMission.setrDoc(map.get("mDoc"));
			rMission.setrImage(fileName);
			rMission.setrType(map.get("mType"));
			rMission.setrClass(map.get("mClass"));
			rMission.setrSponsor(Name);
			
			File rMissionPhoto = new File(dirPath+fileName);		
			mPhoto.transferTo(rMissionPhoto);
			
			rMissionS.insertRMission(rMission);
		

		}else if("Biking".equals(map.get("mType"))) {
			
			System.out.println(map.get("mType"));
			
			String dirPath = "C:\\WebWorks\\webWorkSpace\\Web-Sport\\src\\main\\resources\\static\\photo\\bikingmissionphoto\\";
			String fileName = Name+"biking"+dateToS.dateToString()+".jpg";
					
			BMission bMission = new BMission();
			bMission.setbName(map.get("mName"));
			bMission.setbLevel(map.get("mLevel"));
			bMission.setbDis(map.get("mDis"));
			bMission.setbTime(map.get("mTime"));
			bMission.setbDoc(map.get("mDoc"));
			bMission.setbImage(fileName);
			bMission.setbType(map.get("mType"));
			bMission.setbClass(map.get("mClass"));
			bMission.setbSponsor(Name);
			
			File bMissionPhoto = new File(dirPath+fileName);		
			mPhoto.transferTo(bMissionPhoto);
			
			bMissionS.insertBMission(bMission);
		}		
		String url = "/websport/member/personal";
		return new RedirectView(url);
	}
	
//	@GetMapping("/websport/member/save")
//	@ResponseBody
//	public WSMember processSaveMission() {
//		
//		WSMember member = wSMemberS.getById(4);
//		member.setmPhoto("mPhoto.jpg");
//		return wSMemberS.createMember(member);
//	}
	

}