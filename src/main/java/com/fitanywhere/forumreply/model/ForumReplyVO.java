package com.fitanywhere.forumreply.model;

import java.io.Serializable;
import java.sql.Timestamp;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name= "forum_post")
public class ForumReplyVO implements Serializable {
	private static final long serialVersionUID = 1L;

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "fr_id")
	private Integer frId;
	
	@Column(name = "u_id")
	private Integer uId;
	
	@Column(name = "fp_id")
	private String fpId;
	
	@Column(name = "fr_content")
	private String frContent;
	
	@Column(name = "fr_time")
	private Timestamp frTime;
	
	@Column(name = "fr_status")
	private Integer frStatus;
	
	@Column(name = "fr_updated")
	private Timestamp frUpdated;

	public Integer getFrId() {
		return frId;
	}

	public void setFrId(Integer frId) {
		this.frId = frId;
	}

	public Integer getuId() {
		return uId;
	}

	public void setuId(Integer uId) {
		this.uId = uId;
	}

	public String getFpId() {
		return fpId;
	}

	public void setFpId(String fpId) {
		this.fpId = fpId;
	}

	public String getFrContent() {
		return frContent;
	}

	public void setFrContent(String frContent) {
		this.frContent = frContent;
	}

	public Timestamp getFrTime() {
		return frTime;
	}

	public void setFrTime(Timestamp frTime) {
		this.frTime = frTime;
	}

	public Integer getFrStatus() {
		return frStatus;
	}

	public void setFrStatus(Integer frStatus) {
		this.frStatus = frStatus;
	}

	public Timestamp getFrUpdated() {
		return frUpdated;
	}

	public void setFrUpdated(Timestamp frUpdated) {
		this.frUpdated = frUpdated;
	}

	@Override
	public String toString() {
		return "ForumReplyVO [frId=" + frId + ", uId=" + uId + ", fpId=" + fpId + ", frContent=" + frContent
				+ ", frTime=" + frTime + ", frStatus=" + frStatus + ", frUpdated=" + frUpdated + "]";
	}

	public ForumReplyVO(Integer frId, Integer uId, String fpId, String frContent, Timestamp frTime, Integer frStatus,
			Timestamp frUpdated) {
		super();
		this.frId = frId;
		this.uId = uId;
		this.fpId = fpId;
		this.frContent = frContent;
		this.frTime = frTime;
		this.frStatus = frStatus;
		this.frUpdated = frUpdated;
	}

	public ForumReplyVO() {
		super();
		// TODO Auto-generated constructor stub
	}
	

}
	

