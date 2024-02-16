package com.fitanywhere.adcarouselorder.model;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;

import com.fitanywhere.util.HibernateUtil;

public class AdCarouselOrderDAOImpl implements AdCarouselOrderDAO {

	private SessionFactory factory;
	
	public AdCarouselOrderDAOImpl() {
		factory = HibernateUtil.getSessionFactory();
	}
	
	// 避免執行緒共用同一個session
	private Session getSession() {
		return factory.getCurrentSession();
	}
	
	@Override
	public int insert(AdCarouselOrderVO adCarouselOrderVO) {
		Session session = factory.getCurrentSession();
		
		try {
			session.beginTransaction();
			Integer adcId = (Integer) session.save(adCarouselOrderVO);
			session.getTransaction().commit();
			return adcId;
		} catch(Exception e){
			e.printStackTrace();
			session.getTransaction().rollback();
		}
		return -1;
	}

	@Override
	public int update(AdCarouselOrderVO adCarouselOrderVO) {
		Session session = factory.getCurrentSession();
		
		try {
			session.beginTransaction();
			session.update(adCarouselOrderVO);
			session.getTransaction().commit();
			return 1;
		} catch (Exception e) {
			e.printStackTrace();
			session.getTransaction().rollback();
		}
		return -1;
	}

	@Override
	public int delete(Integer adcId) {
		Session session = factory.getCurrentSession();
		
		try {
			session.beginTransaction();
			AdCarouselOrderVO adCarouselOrderVO = session.get(AdCarouselOrderVO.class, adcId);
			if(adCarouselOrderVO != null) {
				session.delete(adCarouselOrderVO);
			}
			session.getTransaction().commit();
			return 1;
			
		}catch(Exception e) {
			e.printStackTrace();
			session.getTransaction().rollback();
		}
		return -1;
	}

	@Override
	public AdCarouselOrderVO getById(Integer adcId) {
		Session session = factory.getCurrentSession();
		
		try {
			session.beginTransaction();
			AdCarouselOrderVO adCarouselOrderVO = session.get(AdCarouselOrderVO.class, adcId);
			session.getTransaction().commit();
			return adCarouselOrderVO;
		} catch(Exception e) {
			e.printStackTrace();
			session.getTransaction().rollback();
		}
		return null;
	}

	@Override
	public List<AdCarouselOrderVO> getAll() {
		
		List<AdCarouselOrderVO> list = null;
		Session session = factory.getCurrentSession();

		try {
			session.beginTransaction();
			list = session.createQuery("from AdCarouselOrderVO", AdCarouselOrderVO.class)
					.list();
			session.getTransaction().commit();
//			return list;
		} catch (Exception e) {
			e.printStackTrace();
			session.getTransaction().rollback();
		}
		return list;
	}

}
