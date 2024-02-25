package com.fitanywhere.coursedetail.model;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;

import com.fitanywhere.course.model.CourseVO;
import com.fitanywhere.util.HibernateUtil;

public class CourseDetailDAOImpl implements CourseDetailDAO{

	@Override
	public Integer insert(CourseDetailVO coursedetailVO) {
		// TODO Auto-generated method stub
		SessionFactory sessionfactory = HibernateUtil.getSessionFactory();
		Session session = sessionfactory.getCurrentSession();
		Integer crId = null;

		try {
			session.beginTransaction();
			crId = Integer.valueOf(session.save(coursedetailVO).toString());
			session.getTransaction().commit();
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			if (session.getTransaction() != null) {
				session.getTransaction().rollback();
			}
		}
		return crId;
	}

	@Override
	public CourseDetailVO update(CourseDetailVO coursedetailVO) {
		// TODO Auto-generated method stub
		SessionFactory sessionfactory = HibernateUtil.getSessionFactory();
		Session session = sessionfactory.getCurrentSession();

		try {
			session.beginTransaction();
			session.update(coursedetailVO);
			session.getTransaction().commit();
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			if (session.getTransaction() != null) {
				session.getTransaction().rollback();
			}
		}
		return coursedetailVO;
	}

	@Override
	public CourseDetailVO findByPrimaryKey(Integer cdId) {
		// TODO Auto-generated method stub
		SessionFactory sessionfactory = HibernateUtil.getSessionFactory();
		Session session = sessionfactory.getCurrentSession();
		CourseDetailVO coursedetailVO = null;

		try {
			session.beginTransaction();
			coursedetailVO = session.get(CourseDetailVO.class, cdId);
			session.getTransaction().commit();
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			if (session.getTransaction() != null) {
				session.getTransaction().rollback();
			}
		}
		return coursedetailVO;
	}

	@Override
	public List<CourseDetailVO> getAll() {
		// TODO Auto-generated method stub
		SessionFactory sessionFactory = HibernateUtil.getSessionFactory();
		Session session = sessionFactory.getCurrentSession();

		List<CourseDetailVO> list = null;
		try {
			session.beginTransaction();
			list = session.createQuery("from CourseDetailVO",CourseDetailVO.class).list();
			session.getTransaction().commit();
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			if (session.getTransaction() != null) {
				session.getTransaction().rollback();
			}
		}
		return list;
	}

}
