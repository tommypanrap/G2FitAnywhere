package com.fitanywhere.adcarouselorder.model;

import java.util.List;

import org.hibernate.Session;

import com.fitanywhere.util.HibernateUtil;

public class AdCarouselOrderService implements AdCarouselOrderDAO{
	
	private AdCarouselOrderDAO dao;
	
	public AdCarouselOrderService() {
		dao = new AdCarouselOrderDAOImpl();
	}

	@Override
	public int insert(AdCarouselOrderVO adCarouselOrderVO) {
		return dao.insert(adCarouselOrderVO);
	}

	@Override
	public int update(AdCarouselOrderVO adCarouselOrderVO) {
		return dao.update(adCarouselOrderVO);
	}

	@Override
	public int delete(Integer adcId) {
		return dao.delete(adcId);
	}

	@Override
	public AdCarouselOrderVO getById(Integer adcId) {
		return dao.getById(adcId);
	}

	@Override
	public List<AdCarouselOrderVO> getAll() {
		return dao.getAll();
	}
}
