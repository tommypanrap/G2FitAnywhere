package com.fitanywhere.adrecommandorder.model;

import java.sql.Timestamp;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

import com.fitanywhere.ad.model.AdVO;
import com.fitanywhere.course.model.CourseVO;
import com.fitanywhere.user.model.UserVO;

@Entity
@Table(name = "ad_recommand_order")
public class AdRecommandOrderVO {
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "adr_id")
	private Integer adrId;
	
	@Column(name = "adr_start_date")
	private Timestamp adrStartDate;
	
	@Column(name = "adr_end_date")
	private Timestamp adrEndDate;
	
	@Column(name = "adr_total_price")
	private Integer adrTotalPrice;
	
	@Column(name = "adr_status")
	private Integer adrStatus;
	
	@Column(name = "adr_order_enddate")
	private Timestamp adrOrderEnddate;

	@ManyToOne
	@JoinColumn(name = "ad_id", referencedColumnName = "ad_id")
	private AdVO adVO;
	
	@ManyToOne
	@JoinColumn(name = "u_id", referencedColumnName = "u_id")
	private UserVO userVO;
	
	@ManyToOne
	@JoinColumn(name = "cr_id", referencedColumnName = "cr_id")
	private CourseVO courseVO;
	
	public AdRecommandOrderVO() {
		super();
		// TODO Auto-generated constructor stub
	}

	public AdRecommandOrderVO(Integer adrId, Timestamp adrStartDate, Timestamp adrEndDate, Integer adrTotalPrice,
			Integer adrStatus, Timestamp adrOrderEnddate) {
		super();
		this.adrId = adrId;
		this.adrStartDate = adrStartDate;
		this.adrEndDate = adrEndDate;
		this.adrTotalPrice = adrTotalPrice;
		this.adrStatus = adrStatus;
		this.adrOrderEnddate = adrOrderEnddate;
	}

	@Override
	public String toString() {
		return "AdRecommandOrderVO [adrId=" + adrId + ", adrStartDate=" + adrStartDate + ", adrEndDate=" + adrEndDate
				+ ", adrTotalPrice=" + adrTotalPrice + ", adrStatus=" + adrStatus + ", adrOrderEnddate="
				+ adrOrderEnddate + "]";
	}

	public Integer getAdrId() {
		return adrId;
	}

	public void setAdrId(Integer adrId) {
		this.adrId = adrId;
	}

	public Timestamp getAdrStartDate() {
		return adrStartDate;
	}

	public void setAdrStartDate(Timestamp adrStartDate) {
		this.adrStartDate = adrStartDate;
	}

	public Timestamp getAdrEndDate() {
		return adrEndDate;
	}

	public void setAdrEndDate(Timestamp adrEndDate) {
		this.adrEndDate = adrEndDate;
	}

	public Integer getAdrTotalPrice() {
		return adrTotalPrice;
	}

	public void setAdrTotalPrice(Integer adrTotalPrice) {
		this.adrTotalPrice = adrTotalPrice;
	}

	public Integer getAdrStatus() {
		return adrStatus;
	}

	public void setAdrStatus(Integer adrStatus) {
		this.adrStatus = adrStatus;
	}

	public Timestamp getAdrOrderEnddate() {
		return adrOrderEnddate;
	}

	public void setAdrOrderEnddate(Timestamp adrOrderEnddate) {
		this.adrOrderEnddate = adrOrderEnddate;
	}



}
