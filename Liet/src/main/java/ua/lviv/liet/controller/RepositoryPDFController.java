package ua.lviv.liet.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import ua.lviv.liet.editor.RepositoryEditor;
import ua.lviv.liet.entity.Repository;
import ua.lviv.liet.form.RepositoryPDFForm;
import ua.lviv.liet.service.RepositoryPDFService;
import ua.lviv.liet.service.RepositoryService;

@Controller
public class RepositoryPDFController {

	@Autowired
	RepositoryService repositoryService;

	@Autowired
	RepositoryPDFService repositoryPDFService;

	@ModelAttribute("form")
	public RepositoryPDFForm getRepositoryPDF() {
		return new RepositoryPDFForm();
	}

	@InitBinder("form")
	protected void initBinder(WebDataBinder binder) {
		binder.registerCustomEditor(Repository.class, new RepositoryEditor(repositoryService));
	}

	@RequestMapping(value = "/admin/repositoryPDF", method = RequestMethod.POST)
	public String addEventPicture(@ModelAttribute("form") RepositoryPDFForm repositoryPDF, Model model) {
		repositoryPDFService.saveRepositoryPDF(repositoryPDF);
		return "redirect:/admin/eventPicture";
	}

	@RequestMapping("/admin/repositoryPDF")
	public String showAdminRepositoryPDF(Model model) {
		model.addAttribute("repository", repositoryService.findAll());
		return "admin-adminRepositoryPDF";
	}
}
