package ua.lviv.liet.editor;

import java.beans.PropertyEditorSupport;

import ua.lviv.liet.entity.Tourism;
import ua.lviv.liet.service.TourismService;

public class TourismEditor extends PropertyEditorSupport {

	private final TourismService tourismService;

	public TourismEditor(TourismService tourismService) {
		this.tourismService = tourismService;
	}

	@Override
	public void setAsText(String text) throws IllegalArgumentException {
		Tourism tourism = tourismService.findOne(Integer.valueOf(text));
		setValue(tourism);
	}
}
