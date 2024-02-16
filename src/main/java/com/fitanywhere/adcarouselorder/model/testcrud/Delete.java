package com.fitanywhere.adcarouselorder.model.testcrud;

import org.hibernate.Session;

import com.fitanywhere.adcarouselorder.model.AdCarouselOrderVO;
import com.fitanywhere.util.HibernateUtil;

public class Delete {
	public static void main(String[] args) {
		Session session = HibernateUtil.getSessionFactory().getCurrentSession();
		try {
			session.beginTransaction();
			
			AdCarouselOrderVO adcVO = session.get(AdCarouselOrderVO.class, 9);
			if(adcVO != null) {
				session.delete(adcVO);
			}

			session.getTransaction().commit();
			
		}catch(Exception e) {
			e.printStackTrace();
			session.getTransaction().rollback();
		}
	}
}
