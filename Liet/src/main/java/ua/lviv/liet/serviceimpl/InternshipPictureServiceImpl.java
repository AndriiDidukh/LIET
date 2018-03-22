package ua.lviv.liet.serviceimpl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import ua.lviv.liet.entity.InternshipPicture;
import ua.lviv.liet.form.InternshipPictureForm;
import ua.lviv.liet.repository.InternshipPictureRepository;
import ua.lviv.liet.service.FileWriter;
import ua.lviv.liet.service.FileWriter.Folder;
import ua.lviv.liet.service.InternshipPictureService;

@Service
public class InternshipPictureServiceImpl implements InternshipPictureService {

	@Autowired
	InternshipPictureRepository internshipPictureRepository;

	@Autowired
	FileWriter fileWriter;

	@Override
	public void saveInternshipPicture(InternshipPictureForm internshipPicture) {
		InternshipPicture internshipPicture2 = new InternshipPicture();
		internshipPicture2.setInternship(internshipPicture.getInternship());
		internshipPicture2.setPath(internshipPicture.getPath());
		internshipPicture2.setVersion(internshipPicture.getVersion());
		internshipPictureRepository.save(internshipPicture2);
		String extension = fileWriter.write(Folder.INTERNSHIP, internshipPicture.getFile(), internshipPicture2.getId());
		if (extension != null) {
			internshipPicture2.setVersion(internshipPicture.getVersion() + 1);
			internshipPicture2.setPath(extension);
			internshipPictureRepository.save(internshipPicture2);
		}
	}

	@Override
	public List<InternshipPicture> findPictures(int id) {
		return internshipPictureRepository.findPictures(id);
	}

}
