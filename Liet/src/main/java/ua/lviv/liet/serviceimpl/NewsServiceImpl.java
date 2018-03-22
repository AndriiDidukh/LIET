package ua.lviv.liet.serviceimpl;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import ua.lviv.liet.entity.News;
import ua.lviv.liet.repository.NewsRepository;
import ua.lviv.liet.service.FileWriter;
import ua.lviv.liet.service.NewsService;

@Service
public class NewsServiceImpl implements NewsService {

	@Autowired
	NewsRepository newsRepository;

	@Autowired
	private FileWriter fileWriter;

	@Override
	public void saveNews(News form) {
		News news = new News();
		news.setHeader(form.getHeader());
		news.setText(form.getText());
		news.setDate(new Date());
		newsRepository.save(news);
	}

	@Override
	public List<News> findAll() {
		return newsRepository.findAll();
	}

	@Override
	public News findOne(int id) {
		return newsRepository.findOne(id);
	}

	@Override
	public List<News> find10News() {
		List<News> news = newsRepository.findByOwners();
		List<News> news2 = new ArrayList<News>();
		for (int i = 0; i < 10; i++) {
			try {
				news2.add(news.get(i));
			} catch (Exception e) {
			}

		}
		return news2;
	}

	@Override
	public List<News> findNews() {
		return newsRepository.findByOwners();
	}

}
