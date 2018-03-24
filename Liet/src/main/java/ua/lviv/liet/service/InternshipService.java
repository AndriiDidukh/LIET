package ua.lviv.liet.service;

import java.util.List;

import ua.lviv.liet.entity.Internship;

public interface InternshipService {

	void saveIntership(Internship internship);

	List<Internship> findAll();

	Internship findOne(int id);

	void delete(int id);

	List<Internship> findSorted();

}
