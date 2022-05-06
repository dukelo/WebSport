package tw.sport.model;

import java.util.Optional;

import org.springframework.data.jpa.repository.JpaRepository;

public interface WSMemberRepository extends JpaRepository<WSMember, Integer> {
	
	public Optional<WSMember> findByName(String name);
}
