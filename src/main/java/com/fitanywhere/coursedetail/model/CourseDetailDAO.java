package com.fitanywhere.coursedetail.model;

import java.util.List;

import com.fitanywhere.course.model.CourseVO;

public interface CourseDetailDAO {
	public Integer insert(CourseDetailVO coursedetailVO);
	public CourseDetailVO update(CourseDetailVO coursedetailVO);
	public CourseDetailVO findByPrimaryKey(Integer cdId);
	public List<CourseDetailVO> getAll();
}
