package ua.lviv.liet.entity;

import java.util.ArrayList;
import java.util.List;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToMany;

import org.hibernate.annotations.Type;

@Entity
public class Internship {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id;

	@Column(name = "name")
	@Type(type = "text")
	private String name;

	@Column(name = "text")
	@Type(type = "text")
	private String text;

	@OneToMany(mappedBy = "internship")
	List<InternshipPicture> pictures = new ArrayList<>();

	public List<InternshipPicture> getPictures() {
		return pictures;
	}

	public void setPictures(List<InternshipPicture> pictures) {
		this.pictures = pictures;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getText() {
		return text;
	}

	public void setText(String text) {
		this.text = text;
	}

}
