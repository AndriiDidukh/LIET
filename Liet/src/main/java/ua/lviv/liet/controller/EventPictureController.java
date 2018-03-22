package ua.lviv.liet.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import ua.lviv.liet.editor.EventEditor;
import ua.lviv.liet.entity.Event;
import ua.lviv.liet.form.EventPictureForm;
import ua.lviv.liet.service.EventPictureService;
import ua.lviv.liet.service.EventService;

@Controller
public class EventPictureController {

	@Autowired
	EventService eventService;

	@Autowired
	EventPictureService eventPictureService;

	@InitBinder("form")
	protected void initBinder(WebDataBinder binder) {
		binder.registerCustomEditor(Event.class, new EventEditor(eventService));
	}

	@ModelAttribute("form")
	public EventPictureForm getEventPicture() {
		return new EventPictureForm();
	}

	@RequestMapping(value = "/admin/eventPicture", method = RequestMethod.POST)
	public String addEventPicture(@ModelAttribute("form") EventPictureForm eventPicture, Model model) {
		eventPictureService.saveEventPicture(eventPicture);
		return "redirect:/admin/eventPicture";
	}

	@RequestMapping("/admin/eventPicture")
	public String showAdminEventPicture(Model model) {
		model.addAttribute("events", eventService.findAll());
		return "admin-adminEventPicture";
	}
}
