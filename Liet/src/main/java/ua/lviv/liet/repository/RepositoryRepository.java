package ua.lviv.liet.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.JpaSpecificationExecutor;
import org.springframework.data.jpa.repository.Query;

import ua.lviv.liet.entity.Repository;

public interface RepositoryRepository extends JpaRepository<Repository, Integer>, JpaSpecificationExecutor<Repository> {

	@Query("SELECT rp FROM Repository rp ORDER BY name")
	List<Repository> findSorted();

}
