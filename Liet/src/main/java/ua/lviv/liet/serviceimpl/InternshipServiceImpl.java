package ua.lviv.liet.serviceimpl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import ua.lviv.liet.entity.Internship;
import ua.lviv.liet.repository.InternshipRepository;
import ua.lviv.liet.service.InternshipService;

@Service
public class InternshipServiceImpl implements InternshipService {

	@Autowired
	InternshipRepository internshipRepository;

	@Override
	public void saveIntership(Internship internship) {
		Internship internship2 = new Internship();
		internship2.setName(internship.getName());
		internship2.setText(internship.getText());
		internshipRepository.save(internship2);
	}

	@Override
	public List<Internship> findAll() {
		return internshipRepository.findAll();
	}

	@Override
	public Internship findOne(int id) {
		return internshipRepository.findOne(id);
	}

}
