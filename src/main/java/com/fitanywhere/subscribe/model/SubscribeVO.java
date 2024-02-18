package com.fitanywhere.subscribe.model;

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
public class SubscribeVO implements Serializable {
	private static final long serialVersionUID = 1L;

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "su_id")
	private Integer suId;
	
	@Column(name = "u_id")
	private Integer uId;
	
	@Column(name = "u_id")
	private Integer coachId;
	
	@Column(name = "sub_status")
	private Integer subStatus;

	public Integer getSuId() {
		return suId;
	}

	public void setSuId(Integer suId) {
		this.suId = suId;
	}

	public Integer getuId() {
		return uId;
	}

	public void setuId(Integer uId) {
		this.uId = uId;
	}

	public Integer getCoachId() {
		return coachId;
	}

	public void setCoachId(Integer coachId) {
		this.coachId = coachId;
	}

	public Integer getSubStatus() {
		return subStatus;
	}

	public void setSubStatus(Integer subStatus) {
		this.subStatus = subStatus;
	}

	public SubscribeVO(Integer suId, Integer uId, Integer coachId, Integer subStatus) {
		super();
		this.suId = suId;
		this.uId = uId;
		this.coachId = coachId;
		this.subStatus = subStatus;
	}

	public SubscribeVO() {
		super();
		// TODO Auto-generated constructor stub
	}

	@Override
	public String toString() {
		return "SubscribeVO [suId=" + suId + ", uId=" + uId + ", coachId=" + coachId + ", subStatus=" + subStatus + "]";
	}
	

}