package com.fitanywhere.socialpost.model;

import java.util.*;

import com.fitanywhere.user.model.UserVO;


public interface SocialPostDAO {
	public void insert(SocialPostVO socialPostVO);
	public void update(SocialPostVO socialPostVO);
	public SocialPostVO findByPrimaryKey(Integer spid);
	public List<SocialPostVO> getAll();
}
