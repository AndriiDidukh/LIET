package ua.lviv.liet.service;

import java.util.List;

import ua.lviv.liet.entity.Tourism;

public interface TourismService {

	void saveNews(Tourism tourism);

	List<Tourism> findAll();

	Tourism findOne(int id);

	void delete(int id);

	List<Tourism> findSortedTourism();

}
