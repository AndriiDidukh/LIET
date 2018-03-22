package ua.lviv.liet.entity;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.ManyToOne;
import javax.persistence.Transient;

import org.springframework.web.multipart.MultipartFile;

@Entity
public class InternshipPicture {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id;

	@Transient
	private MultipartFile file;
	private String path;
	private int version;

	@ManyToOne
	private Internship internship;

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public Internship getInternship() {
		return internship;
	}

	public void setInternship(Internship internship) {
		this.internship = internship;
	}

	public MultipartFile getFile() {
		return file;
	}

	public void setFile(MultipartFile file) {
		this.file = file;
	}

	public String getPath() {
		return path;
	}

	public void setPath(String path) {
		this.path = path;
	}

	public int getVersion() {
		return version;
	}

	public void setVersion(int version) {
		this.version = version;
	}

}
