package tw.sport.model;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

@Service
@Transactional
public class HMemberMissionService {
	
	@Autowired
	private HMemberMissionRepository HMemberMissionR;
	
	public HMemberMission insertHMemberMission(HMemberMission hMemberMission) {
		return HMemberMissionR.save(hMemberMission);
	}
	
}
