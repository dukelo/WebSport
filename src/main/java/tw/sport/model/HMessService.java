package tw.sport.model;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

@Service
@Transactional
public class HMessService {

	@Autowired
	private HMessRepository hMessR;
	
	public HMess insertHMess(HMess hMess) {
		return hMessR.save(hMess);
	}
	
	public List<HMess> getByHid(int hid){
		return hMessR.findByHid(hid).get();
	}
}
