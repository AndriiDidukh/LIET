package ua.lviv.liet.editor;

import java.beans.PropertyEditorSupport;

import ua.lviv.liet.entity.News;
import ua.lviv.liet.service.NewsService;

public class NewsEditor extends PropertyEditorSupport {
	private final NewsService newsService;

	public NewsEditor(NewsService newsService) {
		this.newsService = newsService;
	}

	@Override
	public void setAsText(String text) throws IllegalArgumentException {
		News news = newsService.findOne(Integer.valueOf(text));
		setValue(news);
	}

}
