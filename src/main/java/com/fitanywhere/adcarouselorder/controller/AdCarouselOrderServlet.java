package com.fitanywhere.adcarouselorder.controller;

import java.io.IOException;
import java.io.InputStream;
import java.util.Base64;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.servlet.http.Part;

import com.fitanywhere.adcarouselorder.model.AdCarouselOrderDAOImpl;
import com.fitanywhere.adcarouselorder.model.AdCarouselOrderService;
import com.fitanywhere.adcarouselorder.model.AdCarouselOrderVO;

@MultipartConfig(fileSizeThreshold = 1024 * 1024, maxFileSize = 5 * 1024 * 1024, maxRequestSize = 5 * 5 * 1024 * 1024)
public class AdCarouselOrderServlet extends HttpServlet {
	
	private AdCarouselOrderService adcService;
	
	public void init() throws ServletException{
		adcService = new AdCarouselOrderService();
	}

	protected void doGet(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		doPost(req, res);
	}

	protected void doPost(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		req.setCharacterEncoding("UTF-8");
		String action = req.getParameter("action");
		

		if ("getAll".equals(action)) {
			AdCarouselOrderDAOImpl dao = new AdCarouselOrderDAOImpl();
			List<AdCarouselOrderVO> list = dao.getAll();

			HttpSession session = req.getSession();
			session.setAttribute("list", list);

			String url = "/Adc/list_all_adc.jsp";
			RequestDispatcher success = req.getRequestDispatcher(url);
			success.forward(req, res);
			return;
		}
	

		// 來自select_page.jsp的請求
		if ("getOneForDisplay".equals(action)) {

			Map<String, String> errorMsgs = new LinkedHashMap<String, String>();
			req.setAttribute("errorMsgs", errorMsgs);

			// 請求參數格式錯誤處理
			String adcIdstr = req.getParameter("adcId");
			if (adcIdstr == null || (adcIdstr.trim()).length() == 0) {
				errorMsgs.put("adcId", "請輸入輪播廣告訂單編號");
			}
			if (!errorMsgs.isEmpty()) {
				RequestDispatcher failureView = req.getRequestDispatcher("/Adc/select_page.jsp");
				failureView.forward(req, res);
				return;
			}

			Integer adcId = null;
			try {
				adcId = Integer.valueOf(adcIdstr);

			} catch (Exception e) {
				errorMsgs.put("adcId", "廣告訂單編碼格式不正確");
			}
			if (!errorMsgs.isEmpty()) {
				RequestDispatcher failureView = req.getRequestDispatcher("/Adc/select_page.jsp");
				failureView.forward(req, res);
				return;
			}
			
			AdCarouselOrderService adcSvc = new AdCarouselOrderService();
			AdCarouselOrderVO adcVO = adcSvc.getById(adcId);

			if (adcVO == null) {
				errorMsgs.put("adcId", "查無資料");
			}

			if (adcVO != null) {
				req.setAttribute("adcVO", adcVO);

				if (adcVO.getAdcUpdatePic() != null) {
					byte[] imageData = adcVO.getAdcUpdatePic();
					req.setAttribute("imageData", Base64.getEncoder().encodeToString(imageData));
				}
			} else {
				errorMsgs.put("adcId", "查無資料");
			}

			if (!errorMsgs.isEmpty()) {
				RequestDispatcher failureView = req.getRequestDispatcher("/Adc/select_page.jsp");
				failureView.forward(req, res);
				return;
			}

			// 查詢完成
			String url = "/Adc/list_one_adc.jsp";
			RequestDispatcher successView = req.getRequestDispatcher(url);
			successView.forward(req, res);
		}
		// 來自listAllAdc.jsp的請求
		if ("getOne_For_Update".equals(action)) {

			Map<String, String> errorMsgs = new LinkedHashMap<String, String>();
			req.setAttribute("errorMsgs", errorMsgs);

			Integer adcId = Integer.valueOf(req.getParameter("adcId"));

			AdCarouselOrderService adcSvc = new AdCarouselOrderService();
			AdCarouselOrderVO adcVO = adcSvc.getById(adcId);

			String param = "?adcId=" + adcVO.getAdcId() + "&adcStartDate=" + adcVO.getAdcStartDate() + "&adcEndDate="
					+ adcVO.getAdcEndDate() + "&adcTotalPrice=" + adcVO.getAdcTotalPrice() + "&adcUpdatePic="
					+ adcVO.getAdcUpdatePic() + "&adcStatus=" + adcVO.getAdcStatus() + "&adcOrderEnddate="
					+ adcVO.getAdcOrderEnddate();

			String url = "/Adc/update_adc_input.jsp" + param;
			System.out.println(url);
			RequestDispatcher successView = req.getRequestDispatcher(url);// 成功轉交 updateAdcinput.jsp

			successView.forward(req, res);
		}
		if ("update".equals(action)) { // 來自updateAdcInput.jsp的請求

			Map<String, String> errorMsgs = new LinkedHashMap<String, String>();
			req.setAttribute("errorMsgs", errorMsgs);

			Integer adcId = Integer.valueOf(req.getParameter("adcId").trim());
			Integer adId = Integer.valueOf(req.getParameter("adId").trim());
			Integer crId = Integer.valueOf(req.getParameter("crId").trim());
			Integer uId = Integer.valueOf(req.getParameter("uId").trim());

			java.sql.Timestamp adcStartDate = null;
			try {
				adcStartDate = java.sql.Timestamp.valueOf(req.getParameter("adcStartDate").trim());
			} catch (IllegalArgumentException e) {
				errorMsgs.put("adcStartDate", "請輸入開始日期");
			}

			java.sql.Timestamp adcEndDate = null;
			try {
				adcEndDate = java.sql.Timestamp.valueOf(req.getParameter("adcEndDate").trim());
			} catch (IllegalArgumentException e) {
				errorMsgs.put("adcEndDate", "請輸入結束日期");
			}

			Integer adcTotalPrice = Integer.valueOf(req.getParameter("adcTotalPrice").trim());
			
			// 抓取新增的上傳圖片
			Part part = req.getPart("adcUpdatePic");
			InputStream in = part.getInputStream();
			byte[] adcUpdatePic = in.readAllBytes();
			// 如果圖片沒有上傳會回傳0，再取用舊圖片
			// bytes回傳沒有值會是0，而不是null
			if (adcUpdatePic.length == 0) {
				AdCarouselOrderService adcSvc2 = new AdCarouselOrderService();
				adcUpdatePic = adcSvc2.getById(adcId).getAdcUpdatePic();
			}
			
			Integer adcStatus = Integer.valueOf(req.getParameter("adcStatus").trim());

			java.sql.Timestamp adcOrderEnddate = null;
			try {
				adcOrderEnddate = java.sql.Timestamp.valueOf(req.getParameter("adcOrderEnddate").trim());
			} catch (IllegalArgumentException e) {
				errorMsgs.put("adcOrderEnddate", "請輸入結束日期");
			}

			if (!errorMsgs.isEmpty()) {
				RequestDispatcher failureView = req.getRequestDispatcher("/Adc/update_adc_input.jsp");
				failureView.forward(req, res);
				return;
			}

			AdCarouselOrderService adcSvc = new AdCarouselOrderService();
			AdCarouselOrderVO adcVO = new AdCarouselOrderVO();
//			adcVO.setAdcId(adcId);
			adcVO.setAdcStartDate(adcStartDate);
			adcVO.setAdcEndDate(adcEndDate);
			adcVO.setAdcTotalPrice(adcTotalPrice);
			adcVO.setAdcUpdatePic(adcUpdatePic);
			adcVO.setAdcStatus(adcStatus);
			adcVO.setAdcOrderEnddate(adcOrderEnddate);
			adcSvc.update(adcVO);

			req.setAttribute("adcVO", adcVO);
			String url = "/Adc/list_all_adc.jsp";

			RequestDispatcher successViwe = req.getRequestDispatcher(url);
			successViwe.forward(req, res);
		}

		// 來自addAdc.jsp的請求
		if ("insert".equals(action)) {
			Map<String, String> errorMsgs = new LinkedHashMap<String, String>();
			req.setAttribute("errorMsgs", errorMsgs);

			Integer adcId = Integer.valueOf(req.getParameter("adcId").trim());
			Integer adId = Integer.valueOf(req.getParameter("adId").trim());
			Integer crId = Integer.valueOf(req.getParameter("crId").trim());
			Integer uId = Integer.valueOf(req.getParameter("uId").trim());
			Integer adcTotalPrice = Integer.valueOf(req.getParameter("adcTotalPrice").trim());

			java.sql.Timestamp adcStartDate = null;
			try {
				adcStartDate = java.sql.Timestamp.valueOf(req.getParameter("adcStartDate").trim());
			} catch (IllegalArgumentException e) {
				errorMsgs.put("adcStartDate", "請輸入開始日期");
			}

			java.sql.Timestamp adcEndDate = null;
			try {
				adcEndDate = java.sql.Timestamp.valueOf(req.getParameter("adcEndDate").trim());
			} catch (IllegalArgumentException e) {
				errorMsgs.put("adcEndDate", "請輸入結束日期");
			}
				
			byte[] adcUpdatePic = null;
			try {
				Part parts = req.getPart("adcUpdatePic");
				if (parts.getSize() > 0) {
					InputStream updatePic = parts.getInputStream();
					adcUpdatePic = updatePic.readAllBytes();
				} else {
					errorMsgs.put("adcUpdatePic", "請上傳圖片");
				}
			} catch (IOException e) {
				errorMsgs.put("adcUpdatePic", "上傳圖片發生錯誤");
			}
			
			
			
			// 如果有錯誤，轉發回 addAdc.jsp 顯示錯誤訊息
			if (!errorMsgs.isEmpty()) {
				RequestDispatcher failureView = req.getRequestDispatcher("/Adc/add_adc.jsp");
				failureView.forward(req, res);
				return;
			}

			Integer adcStatus = Integer.valueOf(req.getParameter("adcStatus").trim());


			java.sql.Timestamp adcOrderEnddate = null;
			try {
				adcOrderEnddate = java.sql.Timestamp.valueOf(req.getParameter("adcOrderEnddate").trim());
			} catch (IllegalArgumentException e) {
				errorMsgs.put("adcOrderEnddate", "請輸入結束日期");
			}

			AdCarouselOrderVO adcVO = new AdCarouselOrderVO();
			AdCarouselOrderService adcSvc = new AdCarouselOrderService();

			adcVO.setAdcStartDate(adcStartDate);
			adcVO.setAdcEndDate(adcEndDate);
			adcVO.setAdcTotalPrice(adcTotalPrice);
			adcVO.setAdcUpdatePic(adcUpdatePic);
			adcVO.setAdcStatus(adcStatus);
			adcVO.setAdcOrderEnddate(adcOrderEnddate);

			if (!errorMsgs.isEmpty()) {
				req.setAttribute("adcVO", adcVO);
				RequestDispatcher failureView = req.getRequestDispatcher("/Adc/add_adc.jsp");
				failureView.forward(req, res);
				return;
			}

//			adcVO = adcSvc.insert( adcStartDate, adcEndDate, adcTotalPrice, adcUpdatePic, adcStatus,
//					adcOrderEnddate);
			
			String url = "/Adc/list_all_adc.jsp";
			RequestDispatcher successView = req.getRequestDispatcher(url); // 新增成功後轉交listAllAdc.jsp
			successView.forward(req, res);
		}
		
		// 來自listAllAdc.jsp
		if ("delete".equals(action)) {

			Map<String, String> errorMsgs = new LinkedHashMap<String, String>();
			req.setAttribute("errorMsgs", errorMsgs);

			Integer adcId = Integer.valueOf(req.getParameter("adcId"));

			AdCarouselOrderService adcSvc = new AdCarouselOrderService();
			adcSvc.delete(adcId);

			String url = "/Adc/list_all_adc.jsp";
			RequestDispatcher successView = req.getRequestDispatcher(url);// 刪除成功後,轉交回送出刪除的來源網頁
			successView.forward(req, res);
		}

	}
}
