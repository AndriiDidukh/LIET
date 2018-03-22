package ua.lviv.liet.service;

import java.util.List;

import ua.lviv.liet.entity.News;

public interface NewsService {

	void saveNews(News news);

	List<News> findAll();

	News findOne(int id);

	List<News> find10News();

	List<News> findNews();

}
