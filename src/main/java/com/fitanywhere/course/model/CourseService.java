package com.fitanywhere.course.model;

import java.util.List;

public class CourseService {
	CourseDAOImpl coursehibernate = new CourseDAOImpl();

	public CourseVO getOneCourse(Integer crId) {
		return coursehibernate.findByPrimaryKey(crId);
	}

	public Integer addCourse(CourseVO courseVO) {

		return coursehibernate.insert(courseVO);
	}

	public List<CourseVO> getAll() {

		return coursehibernate.getAll();
	}

	public CourseVO updateCourse(CourseVO courseVO) {
		return coursehibernate.update(courseVO);
	}
	
	public void deleteCourse(Integer crId) {
		
		coursehibernate.delete(crId);
	}
}
