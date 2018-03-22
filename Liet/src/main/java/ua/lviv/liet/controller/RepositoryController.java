package ua.lviv.liet.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import ua.lviv.liet.entity.Repository;
import ua.lviv.liet.service.NewsService;
import ua.lviv.liet.service.RepositoryService;

@Controller
public class RepositoryController {
	@Autowired
	NewsService newsService;

	@Autowired
	RepositoryService repositoryService;

	@ModelAttribute("form")
	public Repository getRepository() {
		return new Repository();
	}

	@RequestMapping("/admin/repository")
	public String showAdminNews(Model model) {

		return "admin-adminRepository";
	}

	@RequestMapping("/repository")
	public String showRepository(Model model) {
		model.addAttribute("news", newsService.find10News());
		model.addAttribute("repository", repositoryService.findAll());
		return "user-Репозиторій";
	}

	@RequestMapping(value = "/admin/repository", method = RequestMethod.POST)
	public String addNews(@ModelAttribute("form") Repository repository) {
		repositoryService.saveRepository(repository);
		return "redirect:/admin/repository";
	}

	@RequestMapping("/repository/{id}")
	public String showRepositoryPage(Model model, @PathVariable int id) {
		model.addAttribute("news", newsService.find10News());
		model.addAttribute("person", repositoryService.findOne(id));
		return "user-Викладач";
	}

}
