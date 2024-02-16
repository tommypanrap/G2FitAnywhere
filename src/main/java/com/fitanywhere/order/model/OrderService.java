package com.fitanywhere.order.model;

import java.sql.Timestamp;
import java.util.List;
import java.util.Set;

import com.fitanywhere.detail.model.DetailVO;
import com.fitanywhere.discount.model.DiscountVO;
import com.fitanywhere.user.model.UserVO;

public class OrderService {
//	private OrderDAO_interface dao2;

	private OrderDAOImpl dao = null;

	public OrderService() {
		dao = new OrderDAOImpl();
//		dao2 = new OrderJNDIDAOImpl();
	}

	public OrderVO addOrder(UserVO user, Integer odStatus, Integer odPrice, DiscountVO dc) {
		OrderVO orderVO = new OrderVO();

		orderVO.setUser(user);
		orderVO.setOdStatus(odStatus);
		orderVO.setOdPrice(odPrice);
		orderVO.setDc(dc);
		dao.insert(orderVO);
		return orderVO;

	}

	public OrderVO updateOrder(Integer odId, java.sql.Timestamp odCreateDate, UserVO user,java.sql.Timestamp odEndDate, Integer odStatus,
			Integer odPrice, DiscountVO dc) {
		OrderVO orderVO = new OrderVO();

		orderVO.setOdId(odId);
		orderVO.setUser(user);
		orderVO.setOdCreateDate(odCreateDate);
//		orderVO.setUId(uId);
		orderVO.setOdEndDate(odEndDate);
		orderVO.setOdStatus(odStatus);
		orderVO.setOdPrice(odPrice);
		orderVO.setDc(dc);
		dao.update(orderVO);

		return getOneOrder(odId);

	}

	public List<OrderVO> getAll() {
		return dao.getAll();
	}

	public OrderVO getOneOrder(Integer odId) {
		return dao.findByPrimaryKey(odId);
	}

//	public Set<DetailVO> getDetailsByOId(Integer odId){
//		return dao.getDetailsByOdId(odId);
//	}
	public void deleteOrder(Integer odId) {
		dao.delete(odId);
	}

}
