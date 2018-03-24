package ua.lviv.liet.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.JpaSpecificationExecutor;
import org.springframework.data.jpa.repository.Query;

import ua.lviv.liet.entity.Tourism;

public interface TourismRepository extends JpaRepository<Tourism, Integer>, JpaSpecificationExecutor<Tourism> {

	@Query("SELECT t FROM Tourism t ORDER BY id DESC")
	List<Tourism> findSortedTourism();

}
