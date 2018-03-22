package ua.lviv.liet.editor;

import java.beans.PropertyEditorSupport;

import ua.lviv.liet.entity.Internship;
import ua.lviv.liet.service.InternshipService;

public class InternshipEditor extends PropertyEditorSupport {

	private final InternshipService internshipService;

	public InternshipEditor(InternshipService internshipService) {
		this.internshipService = internshipService;
	}

	@Override
	public void setAsText(String text) throws IllegalArgumentException {
		Internship internship = internshipService.findOne(Integer.valueOf(text));
		setValue(internship);
	}

}
