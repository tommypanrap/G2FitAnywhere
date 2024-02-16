package com.fitanywhere.order.controller;

import java.io.IOException;
import java.sql.SQLException;
import java.sql.SQLIntegrityConstraintViolationException;
import java.sql.Timestamp;
import java.util.LinkedList;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.fitanywhere.discount.model.DiscountVO;
import com.fitanywhere.order.model.OrderService;
import com.fitanywhere.order.model.OrderVO;
import com.fitanywhere.user.model.UserVO;

public class OrderServlet extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		doPost(req, resp);

	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		req.setCharacterEncoding("UTF-8");
		String action = req.getParameter("action");

		if ("get_all".equals(action)) {
			OrderService odSvc = new OrderService();
			odSvc.getAll().stream().forEach((x) -> {
				System.out.println(x.toString());
			});;
			
			resp.getWriter().write("OK");
		}
		
		// 來自select_page.jsp的請求
		if ("getOne_For_Display".equals(action)) {
			List<String> errorMsgs = new LinkedList<String>();

			req.setAttribute("errorMsgs", errorMsgs);
			/*************************** 1.接收請求參數 - 輸入格式的錯誤處理 **********************/

			String str = req.getParameter("od_id");
			if (str == null || (str.trim()).length() == 0) {
				errorMsgs.add("請輸入課程訂單編號");
			}
			// Send the use back to the form, if there were errors
			if (!errorMsgs.isEmpty()) {
				RequestDispatcher failureView = req.getRequestDispatcher("/order/select_page.jsp");
				failureView.forward(req, resp);
				return; // 中斷
			}
			Integer odId = null;
			try {
				odId = Integer.valueOf(str);

			} catch (Exception e) {
				errorMsgs.add("課程訂單編號格式不正確");

			}
			// Send the use back to the form, if there were errors
			if (!errorMsgs.isEmpty()) {
				RequestDispatcher failureView = req.getRequestDispatcher("/order/select_page.jsp");
				failureView.forward(req, resp);
				return; // 程式中斷
			}
			/*************************** 2.開始查詢資料 *****************************************/
			OrderService odSvc = new OrderService();
			OrderVO orderVO = odSvc.getOneOrder(odId);
			if (orderVO == null) {
				errorMsgs.add("查無資料");
			}
			if (!errorMsgs.isEmpty()) {
				RequestDispatcher failureView = req.getRequestDispatcher("/order/select_page.jsp");
				failureView.forward(req, resp);
				return;// 程式中斷
			}
			/*************************** 3.查詢完成,準備轉交(Send the Success view) *************/
			req.setAttribute("orderVO", orderVO);
			String url = "/order/listOneOrder.jsp";
			RequestDispatcher successView = req.getRequestDispatcher(url);
			successView.forward(req, resp);
		}

		// 來自listAllEmp.jsp的請求
		if ("getOne_For_Update".equals(action)) {

			List<String> errorMsgs = new LinkedList<String>();
			// Store this set in the request scope, in case we need to
			// send the ErrorPage view.
			req.setAttribute("errorMsgs", errorMsgs);
			/*************************** 1.接收請求參數 ****************************************/
			Integer odId = Integer.valueOf(req.getParameter("od_id"));
			/*************************** 2.開始查詢資料 ****************************************/
			OrderService odSvc = new OrderService();
			OrderVO orderVO = odSvc.getOneOrder(odId);

			/*************************** 3.查詢完成,準備轉交(Send the Success view) ************/
			// 資料庫取出的empVO物件,存入req
			req.setAttribute("orderVO", orderVO);
			String url = "/order/update_order_input.jsp";
			// 成功轉交 update_emp_input.jsp
			RequestDispatcher successView = req.getRequestDispatcher(url);
			successView.forward(req, resp);
		}

		// 來自update_emp_input.jsp的請求
		if ("update".equals(action)) {
			List<String> errorMsgs = new LinkedList<String>();
			// Store this set in the request scope, in case we need to
			// send the ErrorPage view.
			req.setAttribute("errorMsgs", errorMsgs);

			/*************************** 1.接收請求參數 - 輸入格式的錯誤處理 **********************/

			// 課程訂單ID
			Integer odId = Integer.valueOf(req.getParameter("od_id").trim());

			// 課程訂單時間
			java.sql.Timestamp odCreateDate = null;
			try {
				odCreateDate = java.sql.Timestamp.valueOf(req.getParameter("od_create_date"));
			} catch (IllegalArgumentException e) {
				odCreateDate = new java.sql.Timestamp(System.currentTimeMillis());
//				errorMsgs.add("請輸入日期!");
			}

			// 購買人ID
			Integer uId = null;
			try {
				uId = Integer.valueOf(req.getParameter("u_id").trim());
			} catch (NumberFormatException e) {
				uId = 0;
				errorMsgs.add("購買人ID 請填寫數字！");
			}

//			 交易完成時間
			java.sql.Timestamp odEndDate = null;
			try {
				odEndDate = java.sql.Timestamp.valueOf(req.getParameter("od_end_date"));
			} catch (IllegalArgumentException e) {
				odEndDate = null;
//				odEndDate = new java.sql.Timestamp(System.currentTimeMillis());
//				errorMsgs.add("請輸入日期!");
			}

			// 交易狀態
			Integer odStatus = null;
			try {
				odStatus = Integer.valueOf(req.getParameter("od_status").trim());
			} catch (NumberFormatException e) {
				odStatus = 0;
				errorMsgs.add("交易狀態請以數字表示，1為已完成訂單，2為已付款，3為未付款");
			}

			Integer odPrice = null;
			// 課程訂單總金額
			try {
				odPrice = Integer.valueOf(req.getParameter("od_price").trim());
			} catch (NumberFormatException e) {
				odPrice = 0;
				errorMsgs.add("課程訂單總金額請填寫數字！");

			}

			// 優惠活動ID
			Integer dcId = null;

			try {
				dcId = Integer.valueOf(req.getParameter("dc_id").trim());
			} catch (NumberFormatException e) {
				dcId = 0;
				errorMsgs.add("優惠活動ID請填寫數字！");
			}

			OrderVO orderVO = new OrderVO();
			UserVO userVO = new UserVO();
			DiscountVO discountVO = new DiscountVO();
			userVO.setuId(uId);
			discountVO.setDcId(dcId);
			
			orderVO.setOdId(odId);
			orderVO.setUser(userVO);
			orderVO.setOdCreateDate(odCreateDate);
//			orderVO.setOdEndDate(odEndDate);
			orderVO.setOdStatus(odStatus);
			orderVO.setOdPrice(odPrice);
			orderVO.setDc(discountVO);
			
			// Send the use back to the form, if there were errors
			if (!errorMsgs.isEmpty()) {
				// 含有輸入格式錯誤的empVO物件,也存入req
				req.setAttribute("orderVO", orderVO);
				RequestDispatcher failureView = req.getRequestDispatcher("/order/update_order_input.jsp");
				failureView.forward(req, resp);
				return;// 程式中斷

			}
			/*************************** 2.開始修改資料 *****************************************/
			OrderService odSvc = new OrderService();
			orderVO = odSvc.updateOrder(odId, odCreateDate, userVO,odEndDate, odStatus, odPrice, discountVO);

			/*************************** 3.修改完成,準備轉交(Send the Success view) *************/
			// 資料庫update成功後,正確的的empVO物件,存入req
			req.setAttribute("orderVO", orderVO);
			String url = "/order/listOneOrder.jsp";

			// 修改成功後,轉交listOneEmp.jsp
			RequestDispatcher successView = req.getRequestDispatcher(url);
			successView.forward(req, resp);
		}

		// 來自addEmp.jsp的請求
		if ("insert".equals(action)) {
			List<String> errorMsgs = new LinkedList<>();
			// Store this set in the request scope, in case we need to
			// send the ErrorPage view.
			req.setAttribute("errorMsgs", errorMsgs);
			/*********************** 1.接收請求參數 - 輸入格式的錯誤處理 *************************/
			// u_id, od_status, od_price, dc_id

			// 購買人ID
			Integer uId = null;
			try {
				uId = Integer.valueOf(req.getParameter("u_id").trim());
			
			} catch (NumberFormatException e) {
				uId = 0;
				errorMsgs.add("購買人ID 請填數字！");
			}

			// 交易狀態
			Integer odStatus = null;
			try {
				odStatus = Integer.valueOf(req.getParameter("od_status").trim());

			} catch (NumberFormatException e) {
				odStatus = 0;
				errorMsgs.add("交易狀態請填數字！");
			}

			// 課程訂單總金額
			Integer odPrice = null;
			try {
				odPrice = Integer.valueOf(req.getParameter("od_price").trim());
			} catch (NumberFormatException e) {
				odPrice = 0;
				errorMsgs.add("課程訂單總金額請填數字！");

			}

			// 優惠活動 ID
			Integer dcId = null;
			try {
				dcId = Integer.valueOf(req.getParameter("dc_id").trim());
			} catch (NumberFormatException e) {
				dcId = 0;
				errorMsgs.add("優惠活動ID請填數字！");
			}

			OrderVO orderVO = new OrderVO();
			UserVO userVO = new UserVO();
			DiscountVO discountVO = new DiscountVO();
			userVO.setuId(uId);
			discountVO.setDcId(dcId);
			
			orderVO.setOdStatus(odStatus);
			orderVO.setOdPrice(odPrice);
			orderVO.setDc(discountVO);
			orderVO.setUser(userVO);
			// Send the use back to the form, if there were errors
			if (!errorMsgs.isEmpty()) {
				// 含有輸入格式錯誤的empVO物件,也存入req
				req.setAttribute("orderVO", orderVO);
				RequestDispatcher failureView = req.getRequestDispatcher("/order/addOrder.jsp");
				failureView.forward(req, resp);
				return;
			}
			/*************************** 2.開始新增資料 ***************************************/
			OrderService odSvc = new OrderService();
			orderVO = odSvc.addOrder(userVO,odStatus,odPrice,discountVO);
			
			
			/***************************3.新增完成,準備轉交(Send the Success view)***********/
			String url = "/order/listAllOrder.jsp";
			RequestDispatcher successView = req.getRequestDispatcher(url);
			successView.forward(req, resp);
		}

		
		 // 來自listAllEmp.jsp
		if("delete".equals(action)) {
			List<String> errorMsgs = new LinkedList<String>();
			// Store this set in the request scope, in case we need to
			// send the ErrorPage view.
			req.setAttribute("errorMsgs", errorMsgs);
			/***************************1.接收請求參數***************************************/
				
			Integer odId = Integer.valueOf(req.getParameter("od_id"));
			/***************************2.開始刪除資料***************************************/
			OrderService odSvc = new OrderService();
			odSvc.deleteOrder(odId);
			/***************************3.刪除完成,準備轉交(Send the Success view)***********/								
			String url = "/order/listAllOrder.jsp";
			RequestDispatcher successView = req.getRequestDispatcher(url);
			successView.forward(req, resp);
			
			
			
		}
	}

}
