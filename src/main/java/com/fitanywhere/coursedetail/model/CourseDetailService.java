package com.fitanywhere.coursedetail.model;

import java.util.List;

import com.fitanywhere.course.model.CourseVO;

public class CourseDetailService {
	CourseDetailDAOImpl coursedetailhibernate = new CourseDetailDAOImpl();
	
	public CourseDetailVO getOneCourseDetail(Integer cdId) {
		return coursedetailhibernate.findByPrimaryKey(cdId);
	}

	public Integer addCourseDetail(CourseDetailVO coursedetailvo) {

		return coursedetailhibernate.insert(coursedetailvo);
	}

	public List<CourseDetailVO> getAll() {

		return coursedetailhibernate.getAll();
	}

	public CourseDetailVO updateCourseDetail(CourseDetailVO coursedetailvo) {
		return coursedetailhibernate.update(coursedetailvo);
	}
}
