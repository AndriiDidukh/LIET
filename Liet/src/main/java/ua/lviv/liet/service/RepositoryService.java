package ua.lviv.liet.service;

import java.util.List;

import ua.lviv.liet.entity.Repository;

public interface RepositoryService {

	void saveRepository(Repository repository);

	Repository findOne(int id);

	List<Repository> findAll();

	List<Repository> findSorted();

	void delete(int id);

}
