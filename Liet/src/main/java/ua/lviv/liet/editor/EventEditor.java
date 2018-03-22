package ua.lviv.liet.editor;

import java.beans.PropertyEditorSupport;

import ua.lviv.liet.entity.Event;
import ua.lviv.liet.service.EventService;

public class EventEditor extends PropertyEditorSupport {

	private final EventService eventService;

	public EventEditor(EventService eventService) {
		this.eventService = eventService;
	}

	@Override
	public void setAsText(String text) throws IllegalArgumentException {
		Event event = eventService.findOne(Integer.valueOf(text));
		setValue(event);
	}
}
