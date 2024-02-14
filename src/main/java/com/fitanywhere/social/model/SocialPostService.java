package com.fitanywhere.social.model;

import java.sql.Timestamp;
import java.util.List;
import com.fitanywhere.user.model.UserVO;

public class SocialPostService {
	
	private SocialPostDAO dao;
	
	public SocialPostService() {
		dao = new SocialPostDAOImpl();
	}
	
	public SocialPostVO addPost(Integer spid, UserVO user, String spcategory, Timestamp sptime, Timestamp spupdated, Integer spstatus, String sptitle, String spcontent) {
		
		SocialPostVO socialPostVO = new SocialPostVO();
		
		socialPostVO.setSpid(spid);
		socialPostVO.setUser(user);
		socialPostVO.setSpcategory(spcategory);
		socialPostVO.setSptime(sptime);
		socialPostVO.setSpupdated(spupdated);
		socialPostVO.setSpstatus(spstatus);
		socialPostVO.setSptitle(sptitle);
		socialPostVO.setSpcontent(spcontent);
		
		return socialPostVO;
		
	}
	
	public SocialPostVO updatePost(Integer spid, UserVO user, String spcategory, Timestamp sptime, Timestamp spupdated, Integer spstatus, String sptitle, String spcontent) {
		
		SocialPostVO socialPostVO = new SocialPostVO();
		
		socialPostVO.setSpid(spid);
		socialPostVO.setUser(user);
		socialPostVO.setSpcategory(spcategory);
		socialPostVO.setSptime(sptime);
		socialPostVO.setSpupdated(spupdated);
		socialPostVO.setSpstatus(spstatus);
		socialPostVO.setSptitle(sptitle);
		socialPostVO.setSpcontent(spcontent);
		
		return socialPostVO;
		
	}
	
	public SocialPostVO getOneUserPost(UserVO user) {
		return dao.findByPrimaryKey(user);
	}
	
	public List<SocialPostVO> getAll(){
		return dao.getAll();
	}
	
}
