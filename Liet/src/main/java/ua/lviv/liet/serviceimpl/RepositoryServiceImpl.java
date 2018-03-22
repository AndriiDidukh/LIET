package ua.lviv.liet.serviceimpl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import ua.lviv.liet.entity.Repository;
import ua.lviv.liet.repository.RepositoryRepository;
import ua.lviv.liet.service.RepositoryService;

@Service
public class RepositoryServiceImpl implements RepositoryService {

	@Autowired
	RepositoryRepository repositoryRepository;

	@Override
	public void saveRepository(Repository repository) {
		Repository rep = new Repository();
		rep.setName(repository.getName());
		rep.setText(repository.getText());
		repositoryRepository.save(rep);
	}

	@Override
	public Repository findOne(int id) {
		return repositoryRepository.findOne(id);
	}

	@Override
	public List<Repository> findAll() {
		return repositoryRepository.findAll();
	}

}
