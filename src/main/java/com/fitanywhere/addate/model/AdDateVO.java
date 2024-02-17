package com.fitanywhere.addate.model;

import java.sql.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="ad_date")
public class AdDateVO {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "ad_date_id")
	private Integer adDateId;
	
	@Column(name = "ad_date_interval")
	private Date adDateInterval;
	
	@Column(name = "ad_id")
	private Integer adId;
	
	

	public AdDateVO() {
		super();
	}

	public AdDateVO(Integer adDateId, Date adDateInterval, Integer adId) {
		super();
		this.adDateId = adDateId;
		this.adDateInterval = adDateInterval;
		this.adId = adId;
	}

	@Override
	public String toString() {
		return "AdDateVO [adDateId=" + adDateId + ", adDateInterval=" + adDateInterval + ", adId=" + adId + "]";
	}

	public Integer getAdDateId() {
		return adDateId;
	}

	public void setAdDateId(Integer adDateId) {
		this.adDateId = adDateId;
	}

	public Date getAdDateInterval() {
		return adDateInterval;
	}

	public void setAdDateInterval(Date adDateInterval) {
		this.adDateInterval = adDateInterval;
	}

	public Integer getAdId() {
		return adId;
	}

	public void setAdId(Integer adId) {
		this.adId = adId;
	}
	
}
