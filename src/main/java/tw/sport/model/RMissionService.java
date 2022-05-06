package tw.sport.model;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

@Service
@Transactional
public class RMissionService {
	
	@Autowired
	private RMissionRepository rMissionR;
	
	public RMission insertRMission(RMission rMssion) {
		return rMissionR.save(rMssion);
	}
	
	public List<RMission> getByClass(String rClass){
		return rMissionR.findByrClass(rClass).get();
	}
	
	public RMission getById(int rid) {		
		return rMissionR.findById(rid).get();
	}

}
