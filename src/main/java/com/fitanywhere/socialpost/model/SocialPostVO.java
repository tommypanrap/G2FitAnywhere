package com.fitanywhere.socialpost.model;


import javax.persistence.Column;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

import java.sql.Timestamp;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

import com.fitanywhere.user.model.UserVO;

@Entity
@Table(name = "social_post")
public class SocialPostVO {
	@Id
	@Column(name = "sp_id")
	private Integer spid;
	
	@ManyToOne
	@JoinColumn(name = "u_id", referencedColumnName = "u_id")
	private UserVO userVO;
	
	@Column(name = "sp_category")
	private String spcategory;
	
	@Column(name = "sp_time")
	private Timestamp sptime;
	
	@Column(name = "sp_updated")
	private Timestamp spupdated;
	
	@Column(name = "sp_status")
	private Integer spstatus;
	
	@Column(name = "sp_title")
	private String sptitle;
	
	@Column(name = "sp_content" , columnDefinition = "longtext")
	private String spcontent;

	public Integer getSpid() {
		return spid;
	}

	public void setSpid(Integer spid) {
		this.spid = spid;
	}

	public UserVO getUserVO() {
		return userVO;
	}

	public void setUserVO(UserVO userVO) {
		this.userVO = userVO;
	}

	public String getSpcategory() {
		return spcategory;
	}

	public void setSpcategory(String spcategory) {
		this.spcategory = spcategory;
	}

	public Timestamp getSptime() {
		return sptime;
	}

	public void setSptime(Timestamp sptime) {
		this.sptime = sptime;
	}

	public Timestamp getSpupdated() {
		return spupdated;
	}

	public void setSpupdated(Timestamp spupdated) {
		this.spupdated = spupdated;
	}

	public Integer getSpstatus() {
		return spstatus;
	}

	public void setSpstatus(Integer spstatus) {
		this.spstatus = spstatus;
	}

	public String getSptitle() {
		return sptitle;
	}

	public void setSptitle(String sptitle) {
		this.sptitle = sptitle;
	}

	public String getSpcontent() {
		return spcontent;
	}

	public void setSpcontent(String spcontent) {
		this.spcontent = spcontent;
	}

	@Override
	public String toString() {
		return "SocialPostVO [spid=" + spid + ", userVO=" + userVO + ", spcategory=" + spcategory + ", sptime=" + sptime
				+ ", spupdated=" + spupdated + ", spstatus=" + spstatus + ", sptitle=" + sptitle + ", spcontent="
				+ spcontent + "]";
	}
	
	
}
