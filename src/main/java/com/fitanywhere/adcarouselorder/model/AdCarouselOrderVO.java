package com.fitanywhere.adcarouselorder.model;

import java.sql.Timestamp;
import java.util.Arrays;

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
@Table(name = "ad_carousel_order")
public class AdCarouselOrderVO {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "adc_id")
	private Integer adcId;
	
	@Column(name = "adc_start_date")
	private Timestamp adcStartDate;
	
	@Column(name = "adc_end_date")
	private Timestamp adcEndDate;
	
	@Column(name = "adc_total_price")
	private Integer adcTotalPrice;
	
	@Column(name = "adc_update_pic" ,columnDefinition = "longblob")
	private byte[] adcUpdatePic;
	
	@Column(name = "adc_status")
	private Integer adcStatus;
	
	@Column(name = "adc_order_enddate")
	private Timestamp adcOrderEnddate;
	
	@ManyToOne
	@JoinColumn(name = "ad_id", referencedColumnName = "ad_id")
	private AdVO ad;
	
	@ManyToOne	
	@JoinColumn(name = "u_id", referencedColumnName = "u_id")
	private UserVO user;
	
	@ManyToOne
	@JoinColumn(name = "cr_id", referencedColumnName = "cr_id")
	private CourseVO course;

	public AdCarouselOrderVO() {
		super();
		// TODO Auto-generated constructor stub
	}

	public AdCarouselOrderVO(Integer adcId, Timestamp adcStartDate, Timestamp adcEndDate, Integer adcTotalPrice,
			byte[] adcUpdatePic, Integer adcStatus, Timestamp adcOrderEnddate) {
		super();
		this.adcId = adcId;
		this.adcStartDate = adcStartDate;
		this.adcEndDate = adcEndDate;
		this.adcTotalPrice = adcTotalPrice;
		this.adcUpdatePic = adcUpdatePic;
		this.adcStatus = adcStatus;
		this.adcOrderEnddate = adcOrderEnddate;
	}

	@Override
	public String toString() {
		return "AdCarouselOrderVO [adcId=" + adcId + ", adcStartDate=" + adcStartDate + ", adcEndDate=" + adcEndDate
				+ ", adcTotalPrice=" + adcTotalPrice + ", adcUpdatePic=" + Arrays.toString(adcUpdatePic)
				+ ", adcStatus=" + adcStatus + ", adcOrderEnddate=" + adcOrderEnddate + "]";
	}

	public Integer getAdcId() {
		return adcId;
	}

	public void setAdcId(Integer adcId) {
		this.adcId = adcId;
	}

	public Timestamp getAdcStartDate() {
		return adcStartDate;
	}

	public void setAdcStartDate(Timestamp adcStartDate) {
		this.adcStartDate = adcStartDate;
	}

	public Timestamp getAdcEndDate() {
		return adcEndDate;
	}

	public void setAdcEndDate(Timestamp adcEndDate) {
		this.adcEndDate = adcEndDate;
	}

	public Integer getAdcTotalPrice() {
		return adcTotalPrice;
	}

	public void setAdcTotalPrice(Integer adcTotalPrice) {
		this.adcTotalPrice = adcTotalPrice;
	}

	public byte[] getAdcUpdatePic() {
		return adcUpdatePic;
	}

	public void setAdcUpdatePic(byte[] adcUpdatePic) {
		this.adcUpdatePic = adcUpdatePic;
	}

	public Integer getAdcStatus() {
		return adcStatus;
	}

	public void setAdcStatus(Integer adcStatus) {
		this.adcStatus = adcStatus;
	}

	public Timestamp getAdcOrderEnddate() {
		return adcOrderEnddate;
	}

	public void setAdcOrderEnddate(Timestamp adcOrderEnddate) {
		this.adcOrderEnddate = adcOrderEnddate;
	}

	public AdVO getAd() {
		return ad;
	}

	public void setAd(AdVO ad) {
		this.ad = ad;
	}

	public UserVO getUser() {
		return user;
	}

	public void setUser(UserVO user) {
		this.user = user;
	}

	public CourseVO getCourse() {
		return course;
	}

	public void setCourse(CourseVO course) {
		this.course = course;
	}
	
	
}
