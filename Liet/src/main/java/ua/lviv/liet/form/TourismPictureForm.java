package ua.lviv.liet.form;

import org.springframework.web.multipart.MultipartFile;

import ua.lviv.liet.entity.Tourism;

public class TourismPictureForm {

	private int id;
	private Tourism tourism;
	private int version;
	private String path;
	private MultipartFile file;

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public Tourism getTourism() {
		return tourism;
	}

	public void setTourism(Tourism tourism) {
		this.tourism = tourism;
	}

	public int getVersion() {
		return version;
	}

	public void setVersion(int version) {
		this.version = version;
	}

	public String getPath() {
		return path;
	}

	public void setPath(String path) {
		this.path = path;
	}

	public MultipartFile getFile() {
		return file;
	}

	public void setFile(MultipartFile file) {
		this.file = file;
	}

}
