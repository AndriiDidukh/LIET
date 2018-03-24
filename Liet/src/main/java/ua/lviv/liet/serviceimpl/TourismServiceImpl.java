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

	@Override
	public void saveNews(Tourism tourism) {
		Tourism tourism2 = new Tourism();
		tourism2.setHeader(tourism.getHeader());
		tourism2.setText(tourism.getText().replaceAll("\n", "<br>"));
		tourismRepository.save(tourism2);
	}

	@Override
	public List<Tourism> findAll() {
		return tourismRepository.findAll();
	}

	@Override
	public Tourism findOne(int id) {
		return tourismRepository.findOne(id);
	}

	@Override
	public void delete(int id) {
		tourismRepository.delete(id);

	}

	@Override
	public List<Tourism> findSortedTourism() {
		return tourismRepository.findSortedTourism();
	}

}
