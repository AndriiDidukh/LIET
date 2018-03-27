package ua.lviv.liet.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.JpaSpecificationExecutor;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import ua.lviv.liet.entity.NewsPicture;

public interface NewsPictureRepository extends JpaRepository<NewsPicture, Integer>, JpaSpecificationExecutor<NewsPicture> {
	@Query("SELECT np FROM NewsPicture np WHERE np.news.id=:id")
	List<NewsPicture> findPictures(@Param("id") int id);

	@Query("SELECT np FROM NewsPicture np ORDER BY np.news DESC")
	List<NewsPicture> findSorted();
}
