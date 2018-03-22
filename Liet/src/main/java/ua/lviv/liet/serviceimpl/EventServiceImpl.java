package ua.lviv.liet.serviceimpl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import ua.lviv.liet.entity.Event;
import ua.lviv.liet.repository.EventRepository;
import ua.lviv.liet.service.EventService;
import ua.lviv.liet.service.FileWriter;

@Service
public class EventServiceImpl implements EventService {

	@Autowired
	FileWriter fileWriter;

	@Autowired
	EventRepository eventRepository;

	@Override
	public void saveNews(Event event) {
		Event event2 = new Event();
		event2.setHeader(event.getHeader());
		event2.setText(event.getText());
		eventRepository.save(event2);
	}

	@Override
	public List<Event> findAll() {
		return eventRepository.findAll();
	}

	@Override
	public Event findOne(int id) {
		return eventRepository.findOne(id);
	}

}
