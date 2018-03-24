package ua.lviv.liet.entity;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToMany;

import org.hibernate.annotations.Type;

@Entity
public class Event {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id;

	@Column(name = "header")
	@Type(type = "text")
	private String header;

	@Column(name = "text")
	@Type(type = "text")
	private String text;

	@Type(type = "date")
	private Date date;

	@OneToMany(mappedBy = "event")
	List<EventPicture> pictures = new ArrayList<>();

	public Date getDate() {
		return date;
	}

	public void setDate(Date date) {
		this.date = date;
	}

	public List<EventPicture> getPictures() {
		return pictures;
	}

	public void setPictures(List<EventPicture> pictures) {
		this.pictures = pictures;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getHeader() {
		return header;
	}

	public void setHeader(String header) {
		this.header = header;
	}

	public String getText() {
		return text;
	}

	public void setText(String text) {
		this.text = text;
	}

}
