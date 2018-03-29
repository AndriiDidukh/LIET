package ua.lviv.liet.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import ua.lviv.liet.service.NewsService;

@Controller
public class PagesController {

	@Autowired
	NewsService newsService;

	@RequestMapping("/")
	public String showPage(Model model) {
		model.addAttribute("news", newsService.find10News());
		return "user-index";
	}

	@RequestMapping("/admin/adminPanel")
	public String showAdminPanel(Model model) {
		return "admin-adminPanel";
	}

	@RequestMapping("/contacts")
	public String showContacts(Model model) {
		model.addAttribute("news", newsService.find10News());
		return "user-Контакти";
	}

	@RequestMapping("/history")
	public String showHistory(Model model) {
		model.addAttribute("news", newsService.find10News());
		return "user-Історія";
	}

	@RequestMapping("/administration")
	public String showAdministration(Model model) {
		model.addAttribute("news", newsService.find10News());
		return "user-Адміністрація";
	}

	@RequestMapping("/faculties")
	public String showFaculties(Model model) {
		model.addAttribute("news", newsService.find10News());
		return "user-Факультети";
	}

	@RequestMapping("/timetable")
	public String showTimetable(Model model) {
		model.addAttribute("news", newsService.find10News());
		return "user-Графік";
	}

	@RequestMapping("/schedule")
	public String showSchedule(Model model) {
		model.addAttribute("news", newsService.find10News());
		return "user-Розклад";
	}

	@RequestMapping("/intership")
	public String showIntership(Model model) {
		model.addAttribute("news", newsService.find10News());
		return "user-Стажування";
	}

	@RequestMapping("/practiceBase")
	public String showPracticeBase(Model model) {
		model.addAttribute("news", newsService.find10News());
		return "user-Бази практик";
	}

	@RequestMapping("/practice")
	public String showPractice(Model model) {
		model.addAttribute("news", newsService.find10News());
		return "user-practice";
	}

	@RequestMapping("/practiceMain")
	public String showPracticeMain(Model model) {
		model.addAttribute("news", newsService.find10News());
		return "user-practiceMain";
	}

	@RequestMapping("/distanceSchedule")
	public String showDistanceSchedule(Model model) {
		model.addAttribute("news", newsService.find10News());
		return "user-distanceSchedule";
	}

	@RequestMapping("/students")
	public String showStudents(Model model) {
		model.addAttribute("news", newsService.find10News());
		return "user-students";
	}

	@RequestMapping("/committee")
	public String showSelectionСommittee(Model model) {
		model.addAttribute("news", newsService.find10News());
		return "user-Приймальна комісія";
	}

	@RequestMapping("/admission")
	public String showAdmission(Model model) {
		model.addAttribute("news", newsService.find10News());
		return "user-Вступ";
	}

	@RequestMapping("/subject")
	public String showSubject(Model model) {
		model.addAttribute("news", newsService.find10News());
		return "user-Предмети для вступу";
	}

	@RequestMapping("/amount")
	public String showAmount(Model model) {
		model.addAttribute("news", newsService.find10News());
		return "user-Обсяги державного замовлення";
	}

	@RequestMapping("/FTHRB")
	public String showfthrb(Model model) {
		model.addAttribute("news", newsService.find10News());
		return "user-ФТГРС";
	}

	@RequestMapping("/BEF")
	public String showbef(Model model) {
		model.addAttribute("news", newsService.find10News());
		return "user-БЕФ";
	}

	@RequestMapping("/FMTKD")
	public String showfmtkd(Model model) {
		model.addAttribute("news", newsService.find10News());
		return "user-ФМТКД";
	}

	@RequestMapping("/KSGD")
	public String showksgd(Model model) {
		model.addAttribute("news", newsService.find10News());
		return "user-КСГД";
	}

	@RequestMapping("/KPMD")
	public String showkpmd(Model model) {
		model.addAttribute("news", newsService.find10News());
		return "user-КПМД";
	}

	@RequestMapping("/KIM")
	public String showkim(Model model) {
		model.addAttribute("news", newsService.find10News());
		return "user-КІМ";
	}

	@RequestMapping("/KTRS")
	public String showktrs(Model model) {
		model.addAttribute("news", newsService.find10News());
		return "user-КТРС";
	}

	@RequestMapping("/KGRS")
	public String showkgrs(Model model) {
		model.addAttribute("news", newsService.find10News());
		return "user-КГРС";
	}

	@RequestMapping("/KHTRS")
	public String showkhtrs(Model model) {
		model.addAttribute("news", newsService.find10News());
		return "user-КХТРС";
	}

	@RequestMapping("/KMKD")
	public String showkmkd(Model model) {
		model.addAttribute("news", newsService.find10News());
		return "user-КМКД";
	}

	@RequestMapping("/KPT")
	public String showkpt(Model model) {
		model.addAttribute("news", newsService.find10News());
		return "user-КПТ";
	}

	@RequestMapping("/KOF")
	public String showkof(Model model) {
		model.addAttribute("news", newsService.find10News());
		return "user-КОФ";
	}

	@RequestMapping("/KMEID")
	public String showkmeid(Model model) {
		model.addAttribute("news", newsService.find10News());
		return "user-КМЕІД";
	}

	@RequestMapping("/department")
	public String showDepartment(Model model) {
		model.addAttribute("news", newsService.find10News());
		return "user-Підрозділи";
	}

	@RequestMapping("/NMV")
	public String shownmv(Model model) {
		model.addAttribute("news", newsService.find10News());
		return "user-НМВ";
	}

	@RequestMapping("/VNMS")
	public String showVNMS(Model model) {
		model.addAttribute("news", newsService.find10News());
		return "user-ВНМС";
	}

	@RequestMapping("/FEV")
	public String showfev(Model model) {
		model.addAttribute("news", newsService.find10News());
		return "user-ФЕВ";
	}

	@RequestMapping("/VK")
	public String showvk(Model model) {
		model.addAttribute("news", newsService.find10News());
		return "user-ВК";
	}

	@RequestMapping("/AGV")
	public String showagv(Model model) {
		model.addAttribute("news", newsService.find10News());
		return "user-АГВ";
	}

	@RequestMapping("/VPN")
	public String showvpn(Model model) {
		model.addAttribute("news", newsService.find10News());
		return "user-ВПН";
	}

	@RequestMapping("/coruption")
	public String showCoruption(Model model) {
		model.addAttribute("news", newsService.find10News());
		return "user-Корупція";
	}

	@RequestMapping("/partnership")
	public String showPartnership(Model model) {
		model.addAttribute("news", newsService.find10News());
		return "user-Партнерство";
	}

	@RequestMapping("/publication")
	public String showPublication(Model model) {
		model.addAttribute("news", newsService.find10News());
		return "user-Публікації";
	}

	@RequestMapping("/license")
	public String showLicense(Model model) {
		model.addAttribute("news", newsService.find10News());
		return "user-Ліцензування";
	}

}
