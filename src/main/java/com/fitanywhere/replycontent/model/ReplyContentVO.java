package com.fitanywhere.replycontent.model;

import java.io.Serializable;
import java.sql.Timestamp;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Table;

@Entity
@Table(name = "reply_content")
public class ReplyContentVO implements Serializable{
	private static final long serialVersionUID = 1L;
//	qr_id	回覆內容ID	int
//	u_id	用戶ID	int
//	rc_content	回覆內容	longtext
//	rc_date	回覆時間	Datetime
//	qa_id	課程提問ID	int
//	rc_status	回覆狀態	int
	
	@Column(name="qr_id")
	private Integer qrId;
	
	@Column(name="u_id")
	private Integer uId;
	
	@Column(name="rc_content", columnDefinition = "longtext")
	private String rcContent;
	
	@Column(name="rc_date")
	private Timestamp rcDate;
	
	@Column(name="qa_id")
	private Integer qaId;
	
	@Column(name="rc_status")
	private Integer rcStatus;

	public ReplyContentVO() {
		super();
		// TODO Auto-generated constructor stub
	}

	public ReplyContentVO(Integer qrId, Integer uId, String rcContent, Timestamp rcDate, Integer qaId,
			Integer rcStatus) {
		super();
		this.qrId = qrId;
		this.uId = uId;
		this.rcContent = rcContent;
		this.rcDate = rcDate;
		this.qaId = qaId;
		this.rcStatus = rcStatus;
	}

	@Override
	public String toString() {
		return "ReplyContentVO [qrId=" + qrId + ", uId=" + uId + ", rcContent=" + rcContent + ", rcDate=" + rcDate
				+ ", qaId=" + qaId + ", rcStatus=" + rcStatus + "]";
	}

	public Integer getQrId() {
		return qrId;
	}

	public void setQrId(Integer qrId) {
		this.qrId = qrId;
	}

	public Integer getuId() {
		return uId;
	}

	public void setuId(Integer uId) {
		this.uId = uId;
	}

	public String getRcContent() {
		return rcContent;
	}

	public void setRcContent(String rcContent) {
		this.rcContent = rcContent;
	}

	public Timestamp getRcDate() {
		return rcDate;
	}

	public void setRcDate(Timestamp rcDate) {
		this.rcDate = rcDate;
	}

	public Integer getQaId() {
		return qaId;
	}

	public void setQaId(Integer qaId) {
		this.qaId = qaId;
	}

	public Integer getRcStatus() {
		return rcStatus;
	}

	public void setRcStatus(Integer rcStatus) {
		this.rcStatus = rcStatus;
	}

	public static long getSerialversionuid() {
		return serialVersionUID;
	}
	
}
