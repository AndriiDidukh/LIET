package ua.lviv.liet.serviceimpl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import ua.lviv.liet.entity.EventPicture;
import ua.lviv.liet.form.EventPictureForm;
import ua.lviv.liet.repository.EventPictureRepository;
import ua.lviv.liet.service.EventPictureService;
import ua.lviv.liet.service.FileWriter;
import ua.lviv.liet.service.FileWriter.Folder;

@Service
public class EventPictureServiceImpl implements EventPictureService {

	@Autowired
	EventPictureRepository eventPictureRepository;

	@Autowired
	FileWriter fileWriter;

	@Override
	public void saveEventPicture(EventPictureForm eventPicture) {
		EventPicture eventPicture2 = new EventPicture();
		eventPicture2.setEvent(eventPicture.getEvent());
		eventPicture2.setPath(eventPicture.getPath());
		eventPicture2.setVersion(eventPicture.getVersion());
		eventPictureRepository.save(eventPicture2);

		String extension = fileWriter.write(Folder.EVENT, eventPicture.getFile(), eventPicture2.getId());
		if (extension != null) {
			eventPicture2.setVersion(eventPicture.getVersion() + 1);
			eventPicture2.setPath(extension);
			eventPictureRepository.save(eventPicture2);
		}
	}

	@Override
	public List<EventPicture> findPictures(int id) {
		return eventPictureRepository.findPictures(id);
	}

	@Override
	public void delete(int id) {
		eventPictureRepository.delete(id);

	}

	@Override
	public List<EventPicture> findSorted() {
		return eventPictureRepository.findSorted();
	}

}
