package ua.lviv.liet.editor;

import java.beans.PropertyEditorSupport;

import ua.lviv.liet.entity.Repository;
import ua.lviv.liet.service.RepositoryService;

public class RepositoryEditor extends PropertyEditorSupport {

	private final RepositoryService repositoryService;

	public RepositoryEditor(RepositoryService repositoryService) {
		this.repositoryService = repositoryService;
	}

	@Override
	public void setAsText(String text) throws IllegalArgumentException {
		Repository repository = repositoryService.findOne(Integer.valueOf(text));
		setValue(repository);
	}
}
