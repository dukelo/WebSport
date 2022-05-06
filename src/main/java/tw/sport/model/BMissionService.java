package tw.sport.model;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

@Service
@Transactional
public class BMissionService {

	@Autowired
	private BMissionRepository bMissionR;
	
	public BMission insertBMission(BMission bMission) {
		return bMissionR.save(bMission);
	}
	
	public List<BMission> getByClass(String bClass){
		return bMissionR.findBybClass(bClass).get();
	}
	
	public BMission getById(int bid) {		
		return bMissionR.findById(bid).get();
	}
	
}
