package com.fitanywhere.socialpost.model;

import java.sql.Timestamp;
import java.util.List;

import com.fitanywhere.adcarouselorder.model.AdCarouselOrderVO;
import com.fitanywhere.user.model.UserVO;

public class SocialPostService implements SocialPostDAO{
	
	private SocialPostDAO dao;
	
	public SocialPostService() {
		dao = new SocialPostDAOImpl();
	}
	
	@Override
	public void insert(SocialPostVO socialPostVO) {
		dao.insert(socialPostVO);
	}
	
	@Override
	public void update(SocialPostVO socialPostVO) {
		
	}
	

	
	
	
	
	
}
