package com.fitanywhere.order.model;

import java.util.List;
import java.util.Set;

import com.fitanywhere.detail.model.DetailVO;

public interface OrderDAO {
	public int insert(OrderVO entity);

	public int update(OrderVO entity);
	
	public int delete(Integer id);
	 
	
	public OrderVO findByPrimaryKey(Integer odId);
	
	public List<OrderVO> getAll();
//	public Set<DetailVO> getDetailsByOdId(Integer odId);

}
