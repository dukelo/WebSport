package tw.sport.model;

import java.util.List;
import java.util.Optional;

import org.springframework.data.jpa.repository.JpaRepository;

public interface BMissionRepository extends JpaRepository<BMission, Integer> {

	public Optional<List<BMission>> findBybClass(String bClass);
}
