package com.fitanywhere.order.model;

import java.sql.Timestamp;
import java.util.Set;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.OrderBy;
import javax.persistence.Table;

import org.springframework.stereotype.Component;

import com.fitanywhere.detail.model.DetailVO;
import com.fitanywhere.discount.model.DiscountVO;
import com.fitanywhere.user.model.UserVO;


//@Component
@Entity
@Table(name = "`order`")
public class OrderVO implements java.io.Serializable {

	@Id
	@Column(name = "od_id")
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Integer odId;

	@Column(name = "od_create_date", columnDefinition = "DATETIME DEFAULT CURRENT_TIMESTAMP", insertable = false, updatable = false)
	private Timestamp odCreateDate;

//	@ManyToOne
//	@JoinColumn(name="u_id",referencedColumnName="u_id")
//	@Column(name="u_id", insertable = false)
//	private Integer uId;

	@Column(name = "od_end_date", insertable = false)
	private Timestamp odEndDate;

	@Column(name = "od_status")
	private Integer odStatus;

	@Column(name = "od_price")
	private Integer odPrice;

	@ManyToOne
	@JoinColumn(name = "dc_id", referencedColumnName = "dc_id")
	private DiscountVO dc;

	@ManyToOne
	@JoinColumn(name = "u_id", referencedColumnName = "u_id")
	private UserVO user;


//	@OneToMany(mappedBy="order",cascade=CascadeType.ALL)
//	@OrderBy("de_id asc ")
//	private Set<DetailVO> details;

	
	
	
	
	public OrderVO() {
		super();
	}

	public OrderVO(Integer odId, Timestamp odCreateDate, Timestamp odEndDate, Integer odStatus, Integer odPrice,
			DiscountVO dc, UserVO user) {
		super();
		this.odId = odId;
		this.odCreateDate = odCreateDate;
		this.odEndDate = odEndDate;
		this.odStatus = odStatus;
		this.odPrice = odPrice;
		this.dc = dc;
		this.user = user;
	}

	public Integer getOdId() {
		return odId;
	}

	public void setOdId(Integer odId) {
		this.odId = odId;
	}

	public Timestamp getOdCreateDate() {
		return odCreateDate;
	}

	public void setOdCreateDate(Timestamp odCreateDate) {
		this.odCreateDate = odCreateDate;
	}

	public Timestamp getOdEndDate() {
		return odEndDate;
	}

	public void setOdEndDate(Timestamp odEndDate) {
		this.odEndDate = odEndDate;
	}

	public Integer getOdStatus() {
		return odStatus;
	}

	public void setOdStatus(Integer odStatus) {
		this.odStatus = odStatus;
	}

	public Integer getOdPrice() {
		return odPrice;
	}

	public void setOdPrice(Integer odPrice) {
		this.odPrice = odPrice;
	}

	public DiscountVO getDc() {
		return dc;
	}

	public void setDc(DiscountVO dc) {
		this.dc = dc;
	}

	public UserVO getUser() {
		return user;
	}

	public void setUser(UserVO user) {
		this.user = user;
	}

	@Override
	public String toString() {
		return "OrderVO [odId=" + odId + ", odCreateDate=" + odCreateDate + ", odEndDate=" + odEndDate + ", odStatus="
				+ odStatus + ", odPrice=" + odPrice + ", dc=" + dc + ", user=" + user + "]";
	}

}
