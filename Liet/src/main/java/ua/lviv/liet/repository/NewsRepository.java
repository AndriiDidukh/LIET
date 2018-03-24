package ua.lviv.liet.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.JpaSpecificationExecutor;
import org.springframework.data.jpa.repository.Query;

import ua.lviv.liet.entity.News;

public interface NewsRepository extends JpaRepository<News, Integer>, JpaSpecificationExecutor<News> {

	@Query("SELECT n FROM News n  ORDER BY id DESC")
	List<News> findSortedNews();
}
