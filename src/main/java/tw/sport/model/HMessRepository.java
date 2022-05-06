package tw.sport.model;

import java.util.List;
import java.util.Optional;

import org.springframework.data.jpa.repository.JpaRepository;

public interface HMessRepository extends JpaRepository<HMess, Integer> {
	
	public Optional<List<HMess>> findByHid(int hid);

}
