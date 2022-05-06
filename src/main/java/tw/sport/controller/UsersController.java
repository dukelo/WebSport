package tw.sport.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RestController;

import tw.sport.model.Users;
import tw.sport.model.UsersService;

@RestController
public class UsersController {
	
	@Autowired
	private UsersService uService;
	
	@GetMapping("/users/findusers1.controller")
    public List<Users> processFindUsers1(){
		return uService.findUsers("ma");
    }
	
	@GetMapping("/users/findusers2.controller")
    public List<Users> processFindUsers2(){
		return uService.findNameLike("%ma%");
    }
	
	@GetMapping("/users/findallusers.controller")
	public  List<Users> processAllUsers(){
		return uService.findAll();
	}
	
	@GetMapping("/findallusers2.controller")
	public  List<Users> processAllUsers2(@RequestBody List<Users> users){
		return users;
	}
}
