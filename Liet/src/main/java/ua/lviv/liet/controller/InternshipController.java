package ua.lviv.liet.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import ua.lviv.liet.entity.Internship;
import ua.lviv.liet.service.InternshipPictureService;
import ua.lviv.liet.service.InternshipService;
import ua.lviv.liet.service.NewsService;

@Controller
public class InternshipController {

	@Autowired
	NewsService newsService;

	@Autowired
	InternshipService internshipService;

	@Autowired
	InternshipPictureService internshipPictureService;

	@ModelAttribute("form")
	public Internship getIntership() {
		return new Internship();
	}

	@RequestMapping("/admin/studentsReports")
	public String showAdminInternship(Model model) {
		model.addAttribute("reports", internshipService.findSorted());
		return "admin-studentsReports";
	}

	@RequestMapping(value = "/admin/studentsReports", method = RequestMethod.POST)
	public String addNews(@ModelAttribute("form") Internship internship) {
		internshipService.saveIntership(internship);
		return "redirect:/admin/studentsReports";
	}

	@RequestMapping("/studentsReports")
	public String showReports(Model model) {
		model.addAttribute("news", newsService.find10News()).addAttribute("reports", internshipService.findSorted());
		return "user-Звіти студентів";
	}

	@RequestMapping("/studentsReports/{id}")
	public String showReport(Model model, @PathVariable int id) {
		model.addAttribute("news", newsService.find10News()).addAttribute("report", internshipService.findOne(id)).addAttribute("pictures", internshipPictureService.findPictures(id));
		return "user-Звіт студентів";
	}

	@RequestMapping("/admin/studentsReports/delete/{id}")
	public String deleteStudentsReports(@PathVariable int id) {
		internshipService.delete(id);
		return "redirect:/admin/studentsReports";
	}

}
