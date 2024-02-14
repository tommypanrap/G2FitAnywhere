package com.fitanywhere.social.model;

import java.util.*;

import com.fitanywhere.user.model.UserVO;


public interface SocialPostDAO {
	public void insert(SocialPostVO socialPostVO);
	public void update(SocialPostVO socialPostVO);
	public SocialPostVO findByPrimaryKey(UserVO user);
	public List<SocialPostVO> getAll();
}
