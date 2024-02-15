package com.fitanywhere.social.model;

import java.util.*;
import java.sql.*;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.naming.NamingException;
import javax.sql.DataSource;

import org.hibernate.Session;
import org.hibernate.SessionFactory;

import com.fitanywhere.social.model.SocialPostVO;
import com.fitanywhere.user.model.UserVO;
import com.fitanywhere.util.HibernateUtil;

public class SocialPostDAOImpl implements SocialPostDAO{
	private static DataSource ds = null;
	static {
		try {
			Context ctx = new InitialContext();
			ds = (DataSource) ctx.lookup("java:comp/env/jdbc/fitanywhere");
		} catch (NamingException e) {
			e.printStackTrace();
		}
	}
	
	
	private SessionFactory factory;
	
	public SocialPostDAOImpl() {
		factory = HibernateUtil.getSessionFactory();
	}
	
	private Session getSession() {
		return factory.getCurrentSession();
	}
	
	@Override
	public void insert(SocialPostVO entity) {
		// 回傳給 service 剛新增成功的自增主鍵值
		getSession().save(entity);
	}
	
	@Override
	public void update(SocialPostVO entity) {
		getSession().update(entity);
	}
	
	
	@Override
	public List<SocialPostVO> getAll() {
		return getSession().createQuery("from social_post", SocialPostVO.class).list();
	}

	@Override
	public SocialPostVO findByPrimaryKey(UserVO user) {
		// TODO Auto-generated method stub
		return null;
	}
	
}
