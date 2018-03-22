package ua.lviv.liet.service;

import java.util.List;

import ua.lviv.liet.entity.InternshipPicture;
import ua.lviv.liet.form.InternshipPictureForm;

public interface InternshipPictureService {

	void saveInternshipPicture(InternshipPictureForm internshipPicture);

	List<InternshipPicture> findPictures(int id);

}
