package tw.sport.model;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

@Service
@Transactional
public class RMessService {

	@Autowired
	private RMessRepository rMessR;
	
	public RMess insertRMess(RMess rMess) {
		return rMessR.save(rMess);
	}
	
	public List<RMess> getByRid(int rid){
		return rMessR.findByRid(rid).get();
	}
}
