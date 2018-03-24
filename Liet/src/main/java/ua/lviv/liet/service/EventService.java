package ua.lviv.liet.service;

import java.util.List;

import ua.lviv.liet.entity.Event;

public interface EventService {

	void saveNews(Event event);

	List<Event> findAll();

	Event findOne(int id);

	void delete(int id);

	List<Event> findSortedEvent();

}
