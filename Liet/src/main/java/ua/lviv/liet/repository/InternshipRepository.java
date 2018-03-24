package ua.lviv.liet.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.JpaSpecificationExecutor;
import org.springframework.data.jpa.repository.Query;

import ua.lviv.liet.entity.Internship;

public interface InternshipRepository extends JpaRepository<Internship, Integer>, JpaSpecificationExecutor<Internship> {

	@Query("SELECT i FROM Internship i ORDER BY id DESC")
	List<Internship> findSorted();

}
