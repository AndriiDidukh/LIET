package ua.lviv.liet.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import ua.lviv.liet.entity.Tourism;
import ua.lviv.liet.service.NewsService;
import ua.lviv.liet.service.TourismPictureService;
import ua.lviv.liet.service.TourismService;

@Controller
public class TourismController {

	@Autowired
	NewsService newsService;

	@Autowired
	TourismService tourismService;

	@Autowired
	TourismPictureService tourismPictureService;

	@ModelAttribute("form")
	public Tourism getTourism() {
		return new Tourism();
	}

	@RequestMapping("/admin/tourism")
	public String showAdminTourism() {
		return "admin-adminTourism";
	}

	@RequestMapping(value = "/admin/tourism", method = RequestMethod.POST)
	public String addTourism(@ModelAttribute("form") Tourism tourism) {
		tourismService.saveNews(tourism);
		return "redirect:/admin/tourism";
	}

	@RequestMapping("/tourism")
	public String showTourism(Model model) {
		model.addAttribute("news", newsService.find10News());
		model.addAttribute("tourism", tourismService.findAll());
		return "user-tourism";
	}

	@RequestMapping("/tourism/{id}")
	public String showTourismPage(Model model, @PathVariable int id) {
		model.addAttribute("news", newsService.find10News()).addAttribute("tourism", tourismService.findOne(id)).addAttribute("pictures", tourismPictureService.findPictures(id));
		return "user-tourismPage";
	}

}
