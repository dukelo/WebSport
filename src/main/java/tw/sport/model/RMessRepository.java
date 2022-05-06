package tw.sport.model;

import java.util.List;
import java.util.Optional;

import org.springframework.data.jpa.repository.JpaRepository;

public interface RMessRepository extends JpaRepository<RMess, Integer> {

	public Optional<List<RMess>> findByRid(int rid);
}
