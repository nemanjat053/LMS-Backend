package backend.app.repository;

import java.util.Optional;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import backend.app.model.Student;

@Repository
public interface StudentRepository extends JpaRepository<Student, Long> {
	@Query("SELECT s FROM Student s WHERE s.licniPodaci.jmbg = ?1")
	Optional<Student> findStudentByJmbg(String jmbg);
	@Query("SELECT s FROM Student s WHERE s.licniPodaci.ime LIKE ?1")
	Iterable<Optional<Student>> findStudentByIme(String ime);
	@Query("SELECT s FROM Student s WHERE s.registrovaniKorisnik.username = ?1")
	Optional<Student> getByUsername(String username);
}