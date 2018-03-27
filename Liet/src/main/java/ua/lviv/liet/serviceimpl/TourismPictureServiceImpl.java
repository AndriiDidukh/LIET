package ua.lviv.liet.serviceimpl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import ua.lviv.liet.entity.TourismPicture;
import ua.lviv.liet.form.TourismPictureForm;
import ua.lviv.liet.repository.TourismPictureRepository;
import ua.lviv.liet.service.FileWriter;
import ua.lviv.liet.service.FileWriter.Folder;
import ua.lviv.liet.service.TourismPictureService;

@Service
public class TourismPictureServiceImpl implements TourismPictureService {

	@Autowired
	TourismPictureRepository tourismPictureRepository;

	@Autowired
	FileWriter fileWriter;

	@Override
	public void saveTourismPicture(TourismPictureForm tourismPicture) {
		TourismPicture tourismPicture2 = new TourismPicture();
		tourismPicture2.setTourism(tourismPicture.getTourism());
		tourismPicture2.setPath(tourismPicture.getPath());
		tourismPicture2.setVersion(tourismPicture.getVersion());
		tourismPictureRepository.save(tourismPicture2);
		String extension = fileWriter.write(Folder.TOURISM, tourismPicture.getFile(), tourismPicture2.getId());
		if (extension != null) {
			tourismPicture2.setVersion(tourismPicture.getVersion() + 1);
			tourismPicture2.setPath(extension);
			tourismPictureRepository.save(tourismPicture2);
		}
	}

	@Override
	public List<TourismPicture> findPictures(int id) {
		return tourismPictureRepository.findPictures(id);
	}

	@Override
	public List<TourismPicture> findSorted() {
		return tourismPictureRepository.findSorted();
	}

	@Override
	public void delete(int id) {
		tourismPictureRepository.delete(id);
	}

}
