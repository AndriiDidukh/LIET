package ua.lviv.liet.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import ua.lviv.liet.editor.NewsEditor;
import ua.lviv.liet.entity.News;
import ua.lviv.liet.form.NewsPictureForm;
import ua.lviv.liet.service.NewsPictureService;
import ua.lviv.liet.service.NewsService;

@Controller
public class NewsPictureController {

	@InitBinder("form")
	protected void initBinder(WebDataBinder binder) {
		binder.registerCustomEditor(News.class, new NewsEditor(newsService));

	}

	@ModelAttribute("form")
	public NewsPictureForm getNewsPicture() {
		return new NewsPictureForm();
	}

	@Autowired
	NewsPictureService newsPictureService;

	@Autowired
	NewsService newsService;

	@RequestMapping(value = "/admin/newsPicture", method = RequestMethod.POST)
	public String addNews(@ModelAttribute("form") NewsPictureForm newsPicture, Model model) {

		newsPictureService.saveNewsPicture(newsPicture);
		return "redirect:/admin/newsPicture";
	}

	@RequestMapping("/admin/newsPicture")
	public String showAdminNewsPicture(Model model) {
		model.addAttribute("news", newsService.findAll());
		return "admin-adminNewsPicture";
	}
}
