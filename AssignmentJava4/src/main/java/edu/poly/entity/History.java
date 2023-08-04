package edu.poly.entity;


import java.sql.Timestamp;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

import org.hibernate.annotations.CreationTimestamp;

import com.fasterxml.jackson.annotation.JsonIgnoreProperties;

@Entity
@Table(name = "history")
public class History {
	
	@Id
	@Column(name = "id")
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@JsonIgnoreProperties(value = {"applications", "hibernateLazyInitializer"})
	private int id;
	@ManyToOne(cascade = CascadeType.MERGE)// quan hệ 1 nhiều
	@JoinColumn(name = "userId" , referencedColumnName = "id")
	@JsonIgnoreProperties(value = {"applications", "hibernateLazyInitializer"})
	private User user;
	@ManyToOne(cascade = CascadeType.MERGE)// quan hệ 1 nhiều
	@JoinColumn(name = "videoId" , referencedColumnName = "id")
	@JsonIgnoreProperties(value = {"applications", "hibernateLazyInitializer"})
	
	private Video video;
	
	@Column(name = "viewedDate")
	@CreationTimestamp // để lấy getDate trong sql
	private Timestamp viewedDate;
	@Column(name = "isLiked")
	private Boolean isLiked;
	@Column(name = "likedDate")
	private Timestamp likedDate;



	public History() {
		super();
	}

	public History(int id, User user, Video video, Timestamp viewedDate, Boolean isLiked, Timestamp likedDate) {
		super();
		this.id = id;
		this.user = user;
		this.video = video;
		this.viewedDate = viewedDate;
		this.isLiked = isLiked;
		this.likedDate = likedDate;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public User getUser() {
		return user;
	}

	public void setUser(User user) {
		this.user = user;
	}

	public Video getVideo() {
		return video;
	}

	public void setVideo(Video video) {
		this.video = video;
	}

	public Timestamp getViewedDate() {
		return viewedDate;
	}

	public void setViewedDate(Timestamp viewedDate) {
		this.viewedDate = viewedDate;
	}

	public Boolean getIsLiked() {
		return isLiked;
	}

	public void setIsLiked(Boolean isLiked) {
		this.isLiked = isLiked;
	}

	public Timestamp getLikedDate() {
		return likedDate;
	}

	public void setLikedDate(Timestamp likedDate) {
		this.likedDate = likedDate;
	}
	
	
}
