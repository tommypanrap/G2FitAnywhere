package com.fitanywhere.usercourse.model;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.JoinColumn;
import javax.persistence.MapsId;
import javax.persistence.Table;

import com.fitanywhere.course.model.CourseVO;
import com.fitanywhere.user.model.UserVO;

@Entity
@Table(name = "user_course")
public class UserCourseVO implements Serializable{
	private static final long serialVersionUID = 1L;

//	us_cr_id	我的課程流水號	int
//	u_id	用戶	int
//	cr_id	課程	int
	
	@Column(name = "cr_id")
	private Integer crId;
	
	@MapsId 
	@JoinColumn(name = "cr_id", referencedColumnName = "cr_id")
	private CourseVO course;

	@Column(name = "u_id")
	private Integer uId;
	
	@MapsId 
	@JoinColumn(name = "u_id", referencedColumnName = "u_id")
	private UserVO user;
	
	@Column(name = "us_cr_id")
	private Integer usCrId;

	public UserCourseVO() {
		super();
		// TODO Auto-generated constructor stub
	}

	public UserCourseVO(Integer crId, CourseVO course, Integer uId, UserVO user, Integer usCrId) {
		super();
		this.crId = crId;
		this.course = course;
		this.uId = uId;
		this.user = user;
		this.usCrId = usCrId;
	}

	@Override
	public String toString() {
		return "UserCourseVO [crId=" + crId + ", course=" + course + ", uId=" + uId + ", user=" + user + ", usCrId="
				+ usCrId + "]";
	}

	public Integer getCrId() {
		return crId;
	}

	public void setCrId(Integer crId) {
		this.crId = crId;
	}

	public CourseVO getCourse() {
		return course;
	}

	public void setCourse(CourseVO course) {
		this.course = course;
	}

	public Integer getuId() {
		return uId;
	}

	public void setuId(Integer uId) {
		this.uId = uId;
	}

	public UserVO getUser() {
		return user;
	}

	public void setUser(UserVO user) {
		this.user = user;
	}

	public Integer getUsCrId() {
		return usCrId;
	}

	public void setUsCrId(Integer usCrId) {
		this.usCrId = usCrId;
	}

	public static long getSerialversionuid() {
		return serialVersionUID;
	}
	
}
