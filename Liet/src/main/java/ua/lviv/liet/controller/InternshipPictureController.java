package ua.lviv.liet.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import ua.lviv.liet.editor.InternshipEditor;
import ua.lviv.liet.entity.Internship;
import ua.lviv.liet.form.InternshipPictureForm;
import ua.lviv.liet.service.InternshipPictureService;
import ua.lviv.liet.service.InternshipService;

@Controller
public class InternshipPictureController {

	@Autowired
	InternshipService internshipService;

	@Autowired
	InternshipPictureService internshipPictureService;

	@InitBinder("form")
	protected void initBinder(WebDataBinder binder) {
		binder.registerCustomEditor(Internship.class, new InternshipEditor(internshipService));
	}

	@ModelAttribute("form")
	public InternshipPictureForm getInternshipPicture() {
		return new InternshipPictureForm();
	}

	@RequestMapping(value = "/admin/internshipPicture", method = RequestMethod.POST)
	public String addEventPicture(@ModelAttribute("form") InternshipPictureForm internshipPicture, Model model) {
		internshipPictureService.saveInternshipPicture(internshipPicture);
		return "redirect:/admin/internshipPicture";
	}

	@RequestMapping("/admin/internshipPicture")
	public String showAdminInternshipPicture(Model model) {
		model.addAttribute("internships", internshipService.findAll());
		return "admin-adminInternshipPicture";
	}
}
