package ua.lviv.liet.serviceimpl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import ua.lviv.liet.entity.NewsPicture;
import ua.lviv.liet.form.NewsPictureForm;
import ua.lviv.liet.repository.NewsPictureRepository;
import ua.lviv.liet.service.FileWriter;
import ua.lviv.liet.service.FileWriter.Folder;
import ua.lviv.liet.service.NewsPictureService;

@Service
public class NewsPictureServiceImpl implements NewsPictureService {

	@Autowired
	NewsPictureRepository newsPictureRepository;

	@Autowired
	FileWriter fileWriter;

	@Override
	public void saveNewsPicture(NewsPictureForm newsPicture) {
		NewsPicture newsPicture2 = new NewsPicture();
		newsPicture2.setNews(newsPicture.getNews());
		newsPicture2.setPath(newsPicture.getPath());
		newsPicture2.setVersion(newsPicture.getVersion());
		newsPictureRepository.saveAndFlush(newsPicture2);
		String extension = fileWriter.write(Folder.NEWS, newsPicture.getFile(), newsPicture2.getId());
		if (extension != null) {
			newsPicture2.setVersion(newsPicture.getVersion() + 1);
			newsPicture2.setPath(extension);
			newsPictureRepository.save(newsPicture2);
		}

	}

	@Override
	public List<NewsPicture> findPictures(int id) {
		return newsPictureRepository.findPictures(id);
	}

	@Override
	public List<NewsPicture> findSorted() {
		return newsPictureRepository.findSorted();
	}

	@Override
	public void delete(int id) {
		newsPictureRepository.delete(id);
	}

}
