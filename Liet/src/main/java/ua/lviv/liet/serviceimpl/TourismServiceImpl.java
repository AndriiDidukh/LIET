package ua.lviv.liet.serviceimpl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import ua.lviv.liet.entity.Tourism;
import ua.lviv.liet.repository.TourismRepository;
import ua.lviv.liet.service.TourismService;

@Service
public class TourismServiceImpl implements TourismService {

	@Autowired
	TourismRepository tourismRepository;

	public void saveNews(Tourism tourism) {
		Tourism tourism2 = new Tourism();
		tourism2.setHeader(tourism.getHeader());
		tourism2.setText(tourism.getText());
		tourismRepository.save(tourism2);
	}

	public List<Tourism> findAll() {
		return tourismRepository.findAll();
	}

	public Tourism findOne(int id) {
		return tourismRepository.findOne(id);
	}

}
