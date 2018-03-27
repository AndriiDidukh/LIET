package ua.lviv.liet.serviceimpl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import ua.lviv.liet.entity.RepositoryPDF;
import ua.lviv.liet.form.RepositoryPDFForm;
import ua.lviv.liet.repository.RepositoryPDFRepository;
import ua.lviv.liet.service.FileWriter;
import ua.lviv.liet.service.FileWriter.Folder;
import ua.lviv.liet.service.RepositoryPDFService;

@Service
public class RepositoryPDFServiceImpl implements RepositoryPDFService {

	@Autowired
	FileWriter fileWriter;

	@Autowired
	RepositoryPDFRepository repositoryPDFRepository;

	@Override
	public List<RepositoryPDF> findAll() {
		return repositoryPDFRepository.findAll();
	}

	@Override
	public void saveRepositoryPDF(RepositoryPDFForm repositoryPDF) {
		RepositoryPDF repositoryPDF2 = new RepositoryPDF();
		repositoryPDF2.setName(repositoryPDF.getName());
		repositoryPDF2.setRepository(repositoryPDF.getRepository());
		repositoryPDF2.setPath(repositoryPDF.getPath());
		repositoryPDF2.setVersion(repositoryPDF.getVersion());
		repositoryPDFRepository.saveAndFlush(repositoryPDF2);

		String extension = fileWriter.write(Folder.REPOSITORY, repositoryPDF.getFile(), repositoryPDF2.getId());
		if (extension != null) {
			repositoryPDF2.setVersion(repositoryPDF.getVersion() + 1);
			repositoryPDF2.setPath(extension);
			repositoryPDFRepository.save(repositoryPDF2);
		}

	}

	@Override
	public List<RepositoryPDF> findPDFS(int id) {
		return repositoryPDFRepository.findPDF(id);
	}

}
