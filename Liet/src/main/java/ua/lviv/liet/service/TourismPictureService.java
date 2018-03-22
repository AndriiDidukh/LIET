package ua.lviv.liet.service;

import java.util.List;

import ua.lviv.liet.entity.TourismPicture;
import ua.lviv.liet.form.TourismPictureForm;

public interface TourismPictureService {

	void saveTourismPicture(TourismPictureForm tourismPicture);

	List<TourismPicture> findPictures(int id);

}
