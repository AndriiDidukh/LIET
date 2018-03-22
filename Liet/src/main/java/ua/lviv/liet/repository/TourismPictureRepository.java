package ua.lviv.liet.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.JpaSpecificationExecutor;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import ua.lviv.liet.entity.TourismPicture;

public interface TourismPictureRepository extends JpaRepository<TourismPicture, Integer>, JpaSpecificationExecutor<TourismPicture> {

	@Query("SELECT np FROM TourismPicture np WHERE np.tourism.id=:id")
	List<TourismPicture> findPictures(@Param("id") int id);

}
