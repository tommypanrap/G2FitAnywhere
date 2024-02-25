package com.fitanywhere.course.model;

import java.util.List;

import com.fitanywhere.user.model.UserVO;

public interface CourseDAO {
	public Integer insert(CourseVO courseVO);
	public CourseVO update(CourseVO courseVO);
	public CourseVO findByPrimaryKey(Integer crId);
	public List<CourseVO> getAll();
	public void delete(Integer crId);
}
