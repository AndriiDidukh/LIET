package ua.lviv.liet.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import ua.lviv.liet.service.NewsService;

@Controller
public class EngPageController {
	@Autowired
	NewsService newsService;

	@RequestMapping("/eng")
	public String showEng(Model model) {
		model.addAttribute("news", newsService.find10News());
		return "userEng-history";
	}

	@RequestMapping("/administrationEng")
	public String showAdministration(Model model) {
		model.addAttribute("news", newsService.find10News());
		return "userEng-administration";
	}

	@RequestMapping("/facultiesEng")
	public String showFaculties(Model model) {
		model.addAttribute("news", newsService.find10News());
		return "userEng-faculties";
	}

	@RequestMapping("/departmentEng")
	public String showDepartments(Model model) {
		model.addAttribute("news", newsService.find10News());
		return "userEng-subdivisions";
	}

	@RequestMapping("/contactsEng")
	public String showContacts(Model model) {
		model.addAttribute("news", newsService.find10News());
		return "userEng-contacts";
	}

	@RequestMapping("/scheduleEng")
	public String showSchedule(Model model) {
		model.addAttribute("news", newsService.find10News());
		return "userEng-schedule";
	}

	@RequestMapping("/timetableEng")
	public String showTimetable(Model model) {
		model.addAttribute("news", newsService.find10News());
		return "userEng-timetable";
	}

	@RequestMapping("/distanceScheduleEng")
	public String showDistanceSchedule(Model model) {
		model.addAttribute("news", newsService.find10News());
		return "userEng-distanceSchedule";
	}

	@RequestMapping("/studentsEng")
	public String showStudents(Model model) {
		model.addAttribute("news", newsService.find10News());
		return "userEng-students";
	}

	@RequestMapping("/practiceMainEng")
	public String showPracticeMain(Model model) {
		model.addAttribute("news", newsService.find10News());
		return "userEng-practice";
	}

	@RequestMapping("/internshipEng")
	public String showInternship(Model model) {
		model.addAttribute("news", newsService.find10News());
		return "userEng-internship";
	}

}
