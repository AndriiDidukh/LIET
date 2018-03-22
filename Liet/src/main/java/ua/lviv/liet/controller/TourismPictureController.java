package ua.lviv.liet.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import ua.lviv.liet.editor.TourismEditor;
import ua.lviv.liet.entity.Tourism;
import ua.lviv.liet.form.TourismPictureForm;
import ua.lviv.liet.service.TourismPictureService;
import ua.lviv.liet.service.TourismService;

@Controller
public class TourismPictureController {

	@Autowired
	TourismService tourismService;

	@Autowired
	TourismPictureService tourismPictureService;

	@InitBinder("form")
	protected void initBinder(WebDataBinder binder) {
		binder.registerCustomEditor(Tourism.class, new TourismEditor(tourismService));
	}

	@ModelAttribute("form")
	public TourismPictureForm getTourismPictureForm() {
		return new TourismPictureForm();
	}

	@RequestMapping(value = "/admin/tourismPicture", method = RequestMethod.POST)
	public String addTourismPicture(@ModelAttribute("form") TourismPictureForm tourismPicture, Model model) {
		tourismPictureService.saveTourismPicture(tourismPicture);
		return "redirect:/admin/tourismPicture";
	}

	@RequestMapping("/admin/tourismPicture")
	public String showAdminEventPicture(Model model) {
		model.addAttribute("tourisms", tourismService.findAll());
		return "admin-adminTourismPicture";
	}
}
