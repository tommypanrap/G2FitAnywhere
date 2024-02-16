package com.fitanywhere.adcarouselorder.model;

import java.util.List;

public interface AdCarouselOrderDAO {
	
	int insert(AdCarouselOrderVO adCarouselOrderVO);
	int update(AdCarouselOrderVO adCarouselOrderVO);
	
	int delete(Integer adcId);
	
	AdCarouselOrderVO getById(Integer adcId);
	List<AdCarouselOrderVO> getAll();

}
