package ua.lviv.liet.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.JpaSpecificationExecutor;
import org.springframework.data.jpa.repository.Query;

import ua.lviv.liet.entity.Event;

public interface EventRepository extends JpaRepository<Event, Integer>, JpaSpecificationExecutor<Event> {

	@Query("SELECT e FROM Event e ORDER BY id DESC")
	List<Event> findSortedEvents();

}
