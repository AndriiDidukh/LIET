package ua.lviv.liet.service;

import java.util.List;

import ua.lviv.liet.entity.EventPicture;
import ua.lviv.liet.form.EventPictureForm;

public interface EventPictureService {

	void saveEventPicture(EventPictureForm eventPicture);

	List<EventPicture> findPictures(int id);

	void delete(int id);

	List<EventPicture> findSorted();

}
