package com.fitanywhere.course.model;

import java.util.List;

public class CourseService {
	CourseHibernateImpl coursehibernate = new CourseHibernateImpl();
	
	public CourseVO getOneCourse(Integer crId) {
		return coursehibernate.findByPrimaryKey(crId);
	}
	
	public Integer addCourse(CourseVO coursevo) {
		
		return coursehibernate.insert(coursevo);
	}
	
public List<CourseVO> getAll() {
		
		return coursehibernate.getAll();
	} 

	public CourseVO updateCourse(CourseVO courseVO) {
		return coursehibernate.update(courseVO);
	}

}
