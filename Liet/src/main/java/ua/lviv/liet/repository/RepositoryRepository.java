package ua.lviv.liet.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.JpaSpecificationExecutor;

import ua.lviv.liet.entity.Repository;

public interface RepositoryRepository extends JpaRepository<Repository, Integer>, JpaSpecificationExecutor<Repository> {

}
