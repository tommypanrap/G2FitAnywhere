package com.fitanywhere.discount.model;

import java.sql.Timestamp;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;

import groovy.transform.builder.InitializerStrategy.SET;

@Entity
@Table(name = "discount")
public class DiscountVO {
	@Id
	@Column(name = "dc_id")
	private Integer dcId;
	
	@Column(name = "dc_start")
	private Timestamp dcStart;
	
	@Column(name = "dc_end")
	private Timestamp dcEnd;
	
	@Column(name = "dc_project")
	private Integer dcProject;
	
	@Column(name = "dc_status")
	private Integer dcStatus;

	
	public DiscountVO() {
		super();
	}

	public DiscountVO(Integer dcId, Timestamp dcStart, Timestamp dcEnd, Integer dcProject, Integer dcStatus) {
		super();
		this.dcId = dcId;
		this.dcStart = dcStart;
		this.dcEnd = dcEnd;
		this.dcProject = dcProject;
		this.dcStatus = dcStatus;
	}

	public Integer getDcId() {
		return dcId;
	}

	public void setDcId(Integer dcId) {
		this.dcId = dcId;
	}

	public Timestamp getDcStart() {
		return dcStart;
	}

	public void setDcStart(Timestamp dcStart) {
		this.dcStart = dcStart;
	}

	public Timestamp getDcEnd() {
		return dcEnd;
	}

	public void setDcEnd(Timestamp dcEnd) {
		this.dcEnd = dcEnd;
	}

	public Integer getDcProject() {
		return dcProject;
	}

	public void setDcProject(Integer dcProject) {
		this.dcProject = dcProject;
	}

	public Integer getDcStatus() {
		return dcStatus;
	}

	public void setDcStatus(Integer dcStatus) {
		this.dcStatus = dcStatus;
	}

}
