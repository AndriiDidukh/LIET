package ua.lviv.liet.service;

import org.springframework.web.multipart.MultipartFile;

public interface FileWriter {

	enum Folder {
		NEWS, EVENT, TOURISM, INTERNSHIP
	}

	String write(Folder folder, MultipartFile file, int id);
}