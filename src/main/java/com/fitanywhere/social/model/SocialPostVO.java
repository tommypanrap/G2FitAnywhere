package com.fitanywhere.social.model;

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
	private UserVO user;
	
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

	public SocialPostVO() {
		super();
	}

	public SocialPostVO(Integer spid, UserVO user, String spcategory, Timestamp sptime, Timestamp spupdated,
			Integer sp_status, String sptitle, String spcontent) {
		super();
		this.spid = spid;
		this.user = user;
		this.spcategory = spcategory;
		this.sptime = sptime;
		this.spupdated = spupdated;
		this.spstatus = sp_status;
		this.sptitle = sptitle;
		this.spcontent = spcontent;
	}

	public Integer getSpid() {
		return spid;
	}

	public void setSpid(Integer spid) {
		this.spid = spid;
	}

	public UserVO getUser() {
		return user;
	}

	public void setUser(UserVO user) {
		this.user = user;
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
		return "SocialPostVO [spid=" + spid + ", user=" + user + ", spcategory=" + spcategory + ", sptime=" + sptime
				+ ", spupdated=" + spupdated + ", sp_status=" + spstatus + ", sptitle=" + sptitle + ", spcontent="
				+ spcontent + "]";
	}
	
}
	
	
	
	
