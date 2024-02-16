package com.fitanywhere.adcarouselorder.model.testcrud;

import org.hibernate.Session;

import com.fitanywhere.adcarouselorder.model.AdCarouselOrderVO;
import com.fitanywhere.util.HibernateUtil;

public class SaveOrUpdate {
	public static void main(String[] args) {
		Session session = HibernateUtil.getSessionFactory().getCurrentSession();
		try {
			session.beginTransaction();
			
			AdCarouselOrderVO adcVO = new AdCarouselOrderVO();
			adcVO.setAdcStartDate(new java.sql.Timestamp(new java.util.Date().getTime()));
			adcVO.setAdcEndDate(new java.sql.Timestamp(new java.util.Date().getTime()));
			adcVO.setAdcTotalPrice(750);
			adcVO.setAdcUpdatePic(null);
			adcVO.setAdcStatus(0);
			
			if(adcVO.getAdcStatus() != null && adcVO.getAdcStatus() == 1) {
				adcVO.setAdcOrderEnddate(new java.sql.Timestamp(new java.util.Date().getTime()));
			}
			
			session.saveOrUpdate(adcVO);
			session.getTransaction().commit();
			
		}catch(Exception e) {
			e.printStackTrace();
			session.getTransaction().rollback();
		}
	}

}
