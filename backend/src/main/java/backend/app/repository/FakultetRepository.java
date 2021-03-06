package backend.app.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import backend.app.model.Fakultet;

@Repository 
public interface FakultetRepository extends JpaRepository<Fakultet, Long> {

}
