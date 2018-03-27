package ua.lviv.liet.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.JpaSpecificationExecutor;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import ua.lviv.liet.entity.EventPicture;

public interface EventPictureRepository extends JpaRepository<EventPicture, Integer>, JpaSpecificationExecutor<EventPicture> {

	@Query("SELECT np FROM EventPicture np WHERE np.event.id=:id")
	List<EventPicture> findPictures(@Param("id") int id);

	@Query("SELECT pc FROM EventPicture pc ORDER BY pc.event DESC")
	List<EventPicture> findSorted();
}
