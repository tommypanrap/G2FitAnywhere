package com.fitanywhere.announcement.model;

import java.io.Serializable;
import java.sql.Timestamp;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "announcement")
public class AnnouncementVO implements Serializable{
	private static final long serialVersionUID = 1L;
//	an_id INT AUTO_INCREMENT PRIMARY KEY,
//    cr_id INT,
//    an_date DATETIME,
//    an_edit_date DATETIME,
//    an_title VARCHAR(50),
//    an_content LONGTEXT,
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "an_id")
	private Integer anId;
	@Column(name = "cr_id")
	private Integer crId;
	@Column(name = "an_date")
	private Timestamp anDate;
	@Column(name = "an_edit_date")
	private Timestamp anEditDate;
	@Column(name="an_title",columnDefinition = "longtext")
	private String anTitle;
	@Column(name="an_content",columnDefinition = "longtext")
	private String anContent;
	
	public AnnouncementVO() {
		super();
	}

	public AnnouncementVO(Integer anId, Integer crId, Timestamp anDate, Timestamp anEditDate, String anTitle,
			String anContent) {
		super();
		this.anId = anId;
		this.crId = crId;
		this.anDate = anDate;
		this.anEditDate = anEditDate;
		this.anTitle = anTitle;
		this.anContent = anContent;
	}

	@Override
	public String toString() {
		return "AnnouncementVO [anId=" + anId + ", crId=" + crId + ", anDate=" + anDate + ", anEditDate=" + anEditDate
				+ ", anTitle=" + anTitle + ", anContent=" + anContent + "]";
	}

	public Integer getAnId() {
		return anId;
	}

	public void setAnId(Integer anId) {
		this.anId = anId;
	}

	public Integer getCrId() {
		return crId;
	}

	public void setCrId(Integer crId) {
		this.crId = crId;
	}

	public Timestamp getAnDate() {
		return anDate;
	}

	public void setAnDate(Timestamp anDate) {
		this.anDate = anDate;
	}

	public Timestamp getAnEditDate() {
		return anEditDate;
	}

	public void setAnEditDate(Timestamp anEditDate) {
		this.anEditDate = anEditDate;
	}

	public String getAnTitle() {
		return anTitle;
	}

	public void setAnTitle(String anTitle) {
		this.anTitle = anTitle;
	}

	public String getAnContent() {
		return anContent;
	}

	public void setAnContent(String anContent) {
		this.anContent = anContent;
	}

	public static long getSerialversionuid() {
		return serialVersionUID;
	}
	
}
