package tw.sport.model;

import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import tw.sport.exception.UserNotFoundException;

@Service
@Transactional
public class UserProfilesService {

	@Autowired
	private UserProfilesRepository upRepo;
	
	public UserProfiles getByName(String name) {
		
		Optional<UserProfiles> op1 = upRepo.findByName(name);
		if(op1.isEmpty()) {
			throw new UserNotFoundException("Can't find User");
		}
		
		return op1.get();
	}
	
	public UserProfiles createUserProfiles(UserProfiles up1) {
		return upRepo.save(up1);
	}
}
