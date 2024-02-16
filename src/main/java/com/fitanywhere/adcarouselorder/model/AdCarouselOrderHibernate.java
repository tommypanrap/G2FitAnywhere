package com.fitanywhere.adcarouselorder.model;

import java.util.List;

import org.hibernate.Session;

import com.fitanywhere.util.HibernateUtil;

public class AdCarouselOrderHibernate implements AdCarouselOrderDAO {

	@Override
	public int insert(AdCarouselOrderVO adCarouselOrderVO) {
		Session session = HibernateUtil.getSessionFactory().getCurrentSession();

		try {
			session.beginTransaction();
			Integer id = (Integer) session.save(adCarouselOrderVO);
			session.getTransaction().commit();
			return id;
		} catch (Exception e) {
			e.printStackTrace();
			session.getTransaction().rollback();
		}
		return -1;
	}

	@Override
	public int update(AdCarouselOrderVO adCarouselOrderVO) {
		Session session = HibernateUtil.getSessionFactory().getCurrentSession();

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
		Session session = HibernateUtil.getSessionFactory().getCurrentSession();

		try {
			session.beginTransaction();
			AdCarouselOrderVO adCarouselOrderVO = session.get(AdCarouselOrderVO.class, adcId);
			if (adCarouselOrderVO != null) {
				session.delete(adCarouselOrderVO);
			}
			session.getTransaction().commit();
			return 1;

		} catch (Exception e) {
			e.printStackTrace();
			session.getTransaction().rollback();
		}
		return -1;
	}

	@Override
	public AdCarouselOrderVO getById(Integer adcId) {
		Session session = HibernateUtil.getSessionFactory().getCurrentSession();

		try {
			session.beginTransaction();
			AdCarouselOrderVO adCarouselOrderVO = session.get(AdCarouselOrderVO.class, adcId);
			session.getTransaction().commit();
			return adCarouselOrderVO;
		} catch (Exception e) {
			e.printStackTrace();
			session.getTransaction().rollback();
		}
		return null;
	}

	@Override
	public List<AdCarouselOrderVO> getAll() {
		Session session = HibernateUtil.getSessionFactory().getCurrentSession();

		try {
			session.beginTransaction();
			List<AdCarouselOrderVO> list = session.createQuery("from AdCarouselOrderVO", AdCarouselOrderVO.class)
					.list();
			session.getTransaction().commit();
			return list;
		} catch (Exception e) {
			e.printStackTrace();
			session.getTransaction().rollback();
		}
		return null;
	}

}
