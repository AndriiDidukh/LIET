package ua.lviv.liet.service;

import java.util.List;

import ua.lviv.liet.entity.RepositoryPDF;
import ua.lviv.liet.form.RepositoryPDFForm;

public interface RepositoryPDFService {

	void saveRepositoryPDF(RepositoryPDFForm repositoryPDF);

	List<RepositoryPDF> findAll();

	List<RepositoryPDF> findPDFS(int id);

}
