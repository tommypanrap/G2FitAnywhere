package com.fitanywhere.forumpost.model;

import java.io.Serializable;
import java.sql.Timestamp;
import java.util.Arrays;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name= "forum_post")
public class ForumPostVO implements Serializable {
	private static final long serialVersionUID = 1L;

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "fp_id")
	private Integer fpId;
	
	@Column(name = "u_id")
	private Integer uId;
	
	@Column(name = "fp_category")
	private String fpCategory;
	
	@Column(name = "fp_title")
	private String fpTitle;
	
	@Column(name = "fp_content", columnDefinition = "longtext")
	private String fpContent;
	
	@Column(name = "fp_time")
	private Timestamp fpTime;
	
	@Column(name = "fp_status")
	private String fpStatus;
	
	@Column(name = "fp_update")
	private Timestamp fpUpdate;
	
	@Column(name = "fp_pic")
	private byte[] fpPic;

	public ForumPostVO() {
		super();
	}

	public ForumPostVO(Integer fpId, Integer uId, String fpCategory, String fpTitle, String fpContent, Timestamp fpTime,
			String fpStatus, Timestamp fpUpdate, byte[] fpPic) {
		super();
		this.fpId = fpId;
		this.uId = uId;
		this.fpCategory = fpCategory;
		this.fpTitle = fpTitle;
		this.fpContent = fpContent;
		this.fpTime = fpTime;
		this.fpStatus = fpStatus;
		this.fpUpdate = fpUpdate;
		this.fpPic = fpPic;
	}

	public Integer getFpId() {
		return fpId;
	}

	public void setFpId(Integer fpId) {
		this.fpId = fpId;
	}

	public Integer getuId() {
		return uId;
	}

	public void setuId(Integer uId) {
		this.uId = uId;
	}

	public String getFpCategory() {
		return fpCategory;
	}

	public void setFpCategory(String fpCategory) {
		this.fpCategory = fpCategory;
	}

	public String getFpTitle() {
		return fpTitle;
	}

	public void setFpTitle(String fpTitle) {
		this.fpTitle = fpTitle;
	}

	public String getFpContent() {
		return fpContent;
	}

	public void setFpContent(String fpContent) {
		this.fpContent = fpContent;
	}

	public Timestamp getFpTime() {
		return fpTime;
	}

	public void setFpTime(Timestamp fpTime) {
		this.fpTime = fpTime;
	}

	public String getFpStatus() {
		return fpStatus;
	}

	public void setFpStatus(String fpStatus) {
		this.fpStatus = fpStatus;
	}

	public Timestamp getFpUpdate() {
		return fpUpdate;
	}

	public void setFpUpdate(Timestamp fpUpdate) {
		this.fpUpdate = fpUpdate;
	}

	public byte[] getFpPic() {
		return fpPic;
	}

	public void setFpPic(byte[] fpPic) {
		this.fpPic = fpPic;
	}

	@Override
	public String toString() {
		return "ForumPostVO [fpId=" + fpId + ", uId=" + uId + ", fpCategory=" + fpCategory + ", fpTitle=" + fpTitle
				+ ", fpContent=" + fpContent + ", fpTime=" + fpTime + ", fpStatus=" + fpStatus + ", fpUpdate="
				+ fpUpdate + ", fpPic=" + Arrays.toString(fpPic) + "]";
	}
	
	
	
}
