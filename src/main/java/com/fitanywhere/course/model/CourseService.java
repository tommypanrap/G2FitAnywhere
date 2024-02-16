package com.fitanywhere.course.model;

import java.util.List;

public class CourseService {
	CourseHibernate coursehibernate = new CourseHibernate();
	
	public CourseVO getOneCourse(Integer crId) {
		return coursehibernate.findByPrimaryKey(crId);
	}
	
	public CourseVO addCourse(CourseVO coursevo) {
		
		return null;
	}
	
public List<CourseVO> getAll() {
		
		return coursehibernate.getAll();
	} 

}
