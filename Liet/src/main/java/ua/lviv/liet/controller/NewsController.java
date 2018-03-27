package ua.lviv.liet.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import ua.lviv.liet.entity.News;
import ua.lviv.liet.service.NewsPictureService;
import ua.lviv.liet.service.NewsService;

@Controller
public class NewsController {

	@Autowired
	NewsService newsService;

	@Autowired
	NewsPictureService newsPictureService;

	@ModelAttribute("form")
	public News getNewsForm() {
		return new News();
	}

	@RequestMapping("/admin/news")
	public String showAdminNews(Model model) {
		model.addAttribute("news", newsService.findAll());
		return "admin-adminNews";
	}

	@RequestMapping(value = "/admin/news", method = RequestMethod.POST)
	public String addNews(@ModelAttribute("form") News news) {
		newsService.saveNews(news);
		return "redirect:/admin/news";
	}

	@RequestMapping("/news")
	public String showNews(Model model) {
		model.addAttribute("news", newsService.find10News()).addAttribute("news2", newsService.findNews());
		return "user-news";
	}

	@RequestMapping("/news/{id}")
	public String showNewsPage(Model model, @PathVariable int id) {
		model.addAttribute("newsPage", newsService.findOne(id));
		model.addAttribute("news", newsService.find10News());
		model.addAttribute("pictures", newsPictureService.findPictures(id));
		return "user-newsPage";
	}

	@RequestMapping("/admin/news/delete/{id}")
	public String deleteNews(@PathVariable int id) {
		newsService.delete(id);
		return "redirect:/admin/news";
	}

}
