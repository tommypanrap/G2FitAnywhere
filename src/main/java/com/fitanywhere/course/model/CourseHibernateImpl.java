package com.fitanywhere.course.model;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;

import com.fitanywhere.util.HibernateUtil;

public class CourseHibernateImpl implements CourseHibernate {

//	public static void main(String[] args) {
//		SessionFactory sessionFactory = HibernateUtil.getSessionFactory();
//		Session session = sessionFactory.getCurrentSession();
//
//		List<CourseVO> list = null;
//		try {
//			session.beginTransaction();
//			list = session.createQuery("from course", CourseVO.class).list();
//			session.getTransaction().commit();
//		} catch (Exception e) {
//			// TODO Auto-generated catch block
//			e.printStackTrace();
//			if (session.getTransaction() != null) {
//				session.getTransaction().rollback();
//			}
//		}
//		System.out.println(list.toString());
//	}
	
	@Override
	public Integer insert(CourseVO courseVO) {
		// TODO Auto-generated method stub
		SessionFactory sessionfactory = HibernateUtil.getSessionFactory();
		Session session = sessionfactory.getCurrentSession();
		Integer crId = null;

		try {
			session.beginTransaction();
			crId = Integer.valueOf(session.save(courseVO).toString());
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
	public CourseVO update(CourseVO courseVO) {
		// TODO Auto-generated method stub
		SessionFactory sessionfactory = HibernateUtil.getSessionFactory();
		Session session = sessionfactory.getCurrentSession();

		try {
			session.beginTransaction();
			session.update(courseVO);
			session.getTransaction().commit();
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			if (session.getTransaction() != null) {
				session.getTransaction().rollback();
			}
		}
		return courseVO;
	}

	@Override
	public CourseVO findByPrimaryKey(Integer crId) {
		// TODO Auto-generated method stub
		SessionFactory sessionfactory = HibernateUtil.getSessionFactory();
		Session session = sessionfactory.getCurrentSession();
		CourseVO courseVO = null;

		try {
			session.beginTransaction();
			courseVO = session.get(CourseVO.class, crId);
			session.getTransaction().commit();
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			if (session.getTransaction() != null) {
				session.getTransaction().rollback();
			}
		}
		return courseVO;
	}

	@Override
	public List<CourseVO> getAll() {
		// TODO Auto-generated method stub
		SessionFactory sessionFactory = HibernateUtil.getSessionFactory();
		Session session = sessionFactory.getCurrentSession();

		List<CourseVO> list = null;
		try {
			session.beginTransaction();
			list = session.createQuery("from CourseVO", CourseVO.class).list();
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
