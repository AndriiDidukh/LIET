package ua.lviv.liet.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.JpaSpecificationExecutor;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import ua.lviv.liet.entity.InternshipPicture;

public interface InternshipPictureRepository extends JpaRepository<InternshipPicture, Integer>, JpaSpecificationExecutor<InternshipPicture> {

	@Query("SELECT np FROM InternshipPicture np WHERE np.internship.id=:id")
	List<InternshipPicture> findPictures(@Param("id") int id);

}
