package com.fitanywhere.announcement.model;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;

import com.fitanywhere.course.model.CourseVO;
import com.fitanywhere.util.HibernateUtil;

public class AnnouncementDAOImpl implements AnnouncementDAO{

	@Override
	public void insert(AnnouncementVO announcementVO) {
		// TODO Auto-generated method stub
		SessionFactory sessionfactory = HibernateUtil.getSessionFactory();
		Session session = sessionfactory.getCurrentSession();
		
		try {
			session.beginTransaction();
			session.save(announcementVO);
			session.getTransaction().commit();
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			if (session.getTransaction() != null) {
				session.getTransaction().rollback();
			}
		}
	}

	@Override
	public void update(AnnouncementVO announcementVO) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void delete(Integer anId) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public AnnouncementVO findByPrimaryKey(Integer anId) {
		// TODO Auto-generated method stub
		SessionFactory sessionfactory = HibernateUtil.getSessionFactory();
		Session session = sessionfactory.getCurrentSession();
		AnnouncementVO announcementVO = null;

		try {
			session.beginTransaction();
			announcementVO = session.get(AnnouncementVO.class, anId);
			session.getTransaction().commit();
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			if (session.getTransaction() != null) {
				session.getTransaction().rollback();
			}
		}
		return announcementVO;
	}

	@Override
	public List<AnnouncementVO> getAll() {
		SessionFactory sessionFactory = HibernateUtil.getSessionFactory();
		Session session = sessionFactory.getCurrentSession();
		List<AnnouncementVO> list = null;

		try {
			session.beginTransaction();
			System.out.println("dddd");
			list = session.createQuery("from AnnouncementVO", AnnouncementVO.class).list();
			session.getTransaction().commit();
		} catch (Exception e) {
			e.printStackTrace();
			if (session.getTransaction() != null) {
				session.getTransaction().rollback();
			}
		}
		return list;
	}
}
