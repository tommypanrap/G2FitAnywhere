package com.fitanywhere.adcarouselorder.testCRUD;

import org.hibernate.Session;

import com.fitanywhere.adcarouselorder.model.AdCarouselOrderVO;
import com.fitanywhere.util.HibernateUtil;

public class Load {
	public static void main(String[] args) {
		Session session = HibernateUtil.getSessionFactory().getCurrentSession();
		
		try {
			session.beginTransaction();

			AdCarouselOrderVO getAdc = session.get(AdCarouselOrderVO.class, 3);
			System.out.println(getAdc);
			
			// load方法
//			AdCarouselOrderVO loadAdc = session.load(AdCarouselOrderVO.class, 2);
//			Hibernate.initialize(loadAdc);
//			session.getTransaction().commit();
//			System.out.println(loadAdc);
			
			// 多筆查詢
//			AdVO adVO = session.get(AdVO.class, 10);
//			for(AdCarouselOrderVO adcVO : adVO.AdCarouselOrderVO()) {
//				System.out.println(adcVO.getAdcId() + " " + adcVO.getAdcStatus());
//			}
			
		}catch(Exception e){
			e.printStackTrace();
			session.getTransaction().rollback();
		}
	}
}
