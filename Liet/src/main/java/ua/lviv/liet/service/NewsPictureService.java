package ua.lviv.liet.service;

import java.util.List;

import ua.lviv.liet.entity.NewsPicture;
import ua.lviv.liet.form.NewsPictureForm;

public interface NewsPictureService {

	void saveNewsPicture(NewsPictureForm newsPicture);

	List<NewsPicture> findPictures(int id);

}
