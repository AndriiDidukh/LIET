package ua.lviv.liet.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import ua.lviv.liet.entity.Event;
import ua.lviv.liet.service.EventPictureService;
import ua.lviv.liet.service.EventService;
import ua.lviv.liet.service.NewsService;

@Controller
public class EventController {

	@Autowired
	NewsService newsService;

	@Autowired
	EventService eventService;

	@Autowired
	EventPictureService eventPictureService;

	@ModelAttribute("form")
	public Event getEvent() {
		return new Event();
	}

	@RequestMapping("/admin/event")
	public String showAdminEvent(Model model) {
		model.addAttribute("events", eventService.findSortedEvent());
		return "admin-adminEvent";
	}

	@RequestMapping(value = "/admin/event", method = RequestMethod.POST)
	public String addEvent(@ModelAttribute("form") Event event) {
		eventService.saveNews(event);
		return "redirect:/admin/event";
	}

	@RequestMapping("/events")
	public String showEvents(Model model) {
		model.addAttribute("news", newsService.find10News());
		model.addAttribute("events", eventService.findSortedEvent());
		return "user-events";
	}

	@RequestMapping("/event/{id}")
	public String showEvent(Model model, @PathVariable int id) {
		model.addAttribute("news", newsService.find10News());
		model.addAttribute("event", eventService.findOne(id));
		model.addAttribute("pictures", eventPictureService.findPictures(id));
		return "user-eventPage";
	}

	@RequestMapping("/admin/event/delete/{id}")
	public String deleteEvent(@PathVariable int id) {
		eventService.delete(id);
		return "redirect:/admin/event";
	}
}
