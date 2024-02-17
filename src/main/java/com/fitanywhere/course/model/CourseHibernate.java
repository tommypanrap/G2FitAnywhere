package com.fitanywhere.course.model;

import java.util.List;

import com.fitanywhere.user.model.UserVO;

public interface CourseHibernate {
	public Integer insert(CourseVO courseVO);
	public CourseVO update(CourseVO courseVO);
	public CourseVO findByPrimaryKey(Integer crId);
	public List<CourseVO> getAll();
}
