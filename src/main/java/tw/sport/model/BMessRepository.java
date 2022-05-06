package tw.sport.model;

import java.util.List;
import java.util.Optional;

import org.springframework.data.jpa.repository.JpaRepository;

public interface BMessRepository extends JpaRepository<BMess, Integer> {

	public Optional<List<BMess>> findByBid(int Bid);
}
