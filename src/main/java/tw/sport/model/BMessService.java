package tw.sport.model;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

@Service
@Transactional
public class BMessService {

	@Autowired
	private BMessRepository bMessR;
	
	public BMess insertHMess(BMess bMess) {
		return bMessR.save(bMess);
	}
	
	public List<BMess> getByBid(int bid){
		return bMessR.findByBid(bid).get();
	}
}
