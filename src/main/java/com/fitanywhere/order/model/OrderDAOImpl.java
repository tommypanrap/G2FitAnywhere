package com.fitanywhere.order.model;

import java.sql.Timestamp;
import java.text.SimpleDateFormat;
import java.time.Instant;
import java.util.Date;
import java.util.List;

import org.apache.naming.java.javaURLContextFactory;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;

import com.fitanywhere.discount.model.DiscountVO;
import com.fitanywhere.user.model.UserVO;
import com.fitanywhere.util.HibernateUtil;
import com.mysql.cj.x.protobuf.MysqlxCrud.Order;

//import lombok.experimental.var;

public class OrderDAOImpl implements OrderDAO {

	private SessionFactory sessionFactory = HibernateUtil.getSessionFactory();

	public List<OrderVO> getAll() {
		Session session = sessionFactory.getCurrentSession();
		List<OrderVO> list = null;

		try {
			session.beginTransaction();
			list = session.createQuery("from OrderVO", OrderVO.class).getResultList();
			session.getTransaction().commit();
		} catch (Exception e) {
			session.getTransaction().rollback();
			e.printStackTrace();
		}
		return list;
	}

	@Override
	public int insert(OrderVO entity) {
		Session session = sessionFactory.getCurrentSession();
		try {
			// `order`(u_id, od_status, od_price, dc_id) VALUES (?, ?, ?, ?)"
			session.beginTransaction();
//			OrderVO order = new OrderVO();
//			UserVO user = new UserVO();
//			DiscountVO dc = new DiscountVO();
//			// 購買者 ID
//			user.setuId(entity.getUser().getuId());
//			dc.setDcId(entity.getDc().getDcId());
//			order.setUser(user);
//			order.setOdStatus(entity.getOdStatus());
//			order.setOdPrice(entity.getOdPrice());
//			// 使用的discount ID
//			order.setDc(dc);
			session.save(entity);
			session.getTransaction().commit();
			return 1;
		} catch (Exception e) {
			e.printStackTrace();
			session.getTransaction().rollback();
			return 0;
		}
	}

	@Override
	public int update(OrderVO entity) {
		Session session = sessionFactory.getCurrentSession();
		try {
			session.beginTransaction();
//			OrderVO order = session.get(OrderVO.class, entity.getOdId());
			// "UPDATE `order` set od_create_date=? ,u_id=?, od_status=? ,
			// od_end_date= CASE WHEN od_status = 1 THEN CURRENT_TIMESTAMP ELSE NULL END
			// , od_price=? , dc_id=? where od_id = ?"
			if (entity != null) {
//				order.setOdCreateDate(entity.getOdCreateDate());
//				order.setUser(entity.getUser());
//				order.setOdStatus(entity.getOdStatus());
				// 如果 status = 1 ，訂單完成狀態，更新完成訂單時間
				if (entity.getOdStatus() == 1) {
					Timestamp nowTimestamp = Timestamp.from(Instant.now());
//					System.out.println(nowTimestamp);
					entity.setOdEndDate(nowTimestamp);

				}
//				order.setOdPrice(entity.getOdPrice());
//				order.setDc(entity.getDc());

				session.update(entity);

				session.getTransaction().commit();

			}
			return 1;
		} catch (Exception e) {
			e.printStackTrace();
			session.getTransaction().rollback();
			return -1;
		}
	}

	@Override
	public int delete(Integer id) {
		SessionFactory sessionFactory = HibernateUtil.getSessionFactory();
		Session session = sessionFactory.getCurrentSession();
		try {
			session.beginTransaction();
			OrderVO order = session.get(OrderVO.class, id);
			if (order != null) {
				session.delete(order);
			}
			session.getTransaction().commit();
			return 1;
		} catch (Exception e) {
			e.printStackTrace();
			session.getTransaction().rollback();
			return -1;

		}

	}

	@Override
	public OrderVO findByPrimaryKey(Integer odId) {
		SessionFactory sessionFactory = HibernateUtil.getSessionFactory();
		OrderVO order = null;

		try {
			Session session = sessionFactory.openSession();
			session.beginTransaction();
			order = session.get(OrderVO.class, odId);
			session.getTransaction().commit();
//			session.flush();

		} catch (Exception e) {
			e.printStackTrace();
		}
//		finally {
//			
//				HibernateUtil.shutdown();

//			if (session != null) {
//				session.close();
//			}
//		}
		return order;
	}

}
