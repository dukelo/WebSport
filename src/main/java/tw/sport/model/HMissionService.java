package tw.sport.model;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

@Service
@Transactional
public class HMissionService {

	@Autowired
	private HMissionRepository hMissionR;
	
	public HMission insertHMission(HMission hMission) {
		return hMissionR.save(hMission);
	}
	
	public List<HMission> getByClass(String hClass){
		return hMissionR.findByhClass(hClass).get();
	}
	
	public HMission getById(int hid) {		
		return hMissionR.findById(hid).get();
	}
	
}
