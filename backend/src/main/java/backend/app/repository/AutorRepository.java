package backend.app.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import backend.app.model.Autor;


@Repository 
public interface AutorRepository extends JpaRepository<Autor, Long> {

} 
