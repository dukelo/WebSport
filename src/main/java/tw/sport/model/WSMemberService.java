package tw.sport.model;

import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import tw.sport.exception.UserNotFoundException;

@Service
@Transactional
public class WSMemberService {
	
	@Autowired
	private WSMemberRepository WSMemberR;
	
	public WSMember getById(int id) {
		Optional<WSMember> member = WSMemberR.findById(id);
		if(member.isEmpty()) {
			throw new UserNotFoundException("Can't find User");
		}
		return member.get();
	}
	
	public WSMember getByName(String name) {
		Optional<WSMember> member = WSMemberR.findByName(name);
		if(member.isEmpty()) {
			throw new UserNotFoundException("Can't find User");
		}
		return member.get();
	}
		
	public WSMember createMember(WSMember wSMember) {
		return WSMemberR.save(wSMember);
	}
	
	
}
