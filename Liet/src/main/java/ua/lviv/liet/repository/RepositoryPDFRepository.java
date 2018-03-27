package ua.lviv.liet.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.JpaSpecificationExecutor;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import ua.lviv.liet.entity.RepositoryPDF;

public interface RepositoryPDFRepository extends JpaRepository<RepositoryPDF, Integer>, JpaSpecificationExecutor<RepositoryPDF> {

	@Query("SELECT np FROM RepositoryPDF np WHERE np.repository.id=:id")
	List<RepositoryPDF> findPDF(@Param("id") int id);
}
