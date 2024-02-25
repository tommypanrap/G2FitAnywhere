package com.fitanywhere.coursedetail.controller;

import java.io.ByteArrayOutputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.sql.Timestamp;
import java.util.LinkedList;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

import com.fitanywhere.course.model.CourseDAOImpl;
import com.fitanywhere.course.model.CourseVO;
import com.fitanywhere.coursedetail.model.CourseDetailService;
import com.fitanywhere.coursedetail.model.CourseDetailVO;

/**
 * Servlet implementation class CourseDetailServlet
 */
@WebServlet("/front-end/coursedetail/coursedetail.do")
@MultipartConfig
public class CourseDetailServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public CourseDetailServlet() {
        super();
    }

	protected void doGet(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		doPost(req, res);
	}

	protected void doPost(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		req.setCharacterEncoding("UTF-8");
		String action = req.getParameter("action");
		
		if ("getOneCourseDetail".equals(action)) {
			List<String> errorMsgs = new LinkedList<>();
			req.setAttribute("errorMsgs", errorMsgs);
			
			Integer cdId = null; 
			
			try {
				cdId = Integer.valueOf(req.getParameter("cdId"));
			} catch (Exception e) {
				errorMsgs.add("請輸入課程詳細資料編號");
			}
			if (!errorMsgs.isEmpty()) {
				RequestDispatcher failureView = req.getRequestDispatcher("/front-end/coursedetail/coursedetail.jsp");
				failureView.forward(req, res);
				return;
			}
			CourseDetailService cdSvc = new CourseDetailService();
			CourseDetailVO courseDetailVO = cdSvc.getOneCourseDetail(cdId);
			if (courseDetailVO == null) {
				errorMsgs.add("查無資料");
			}
			if (!errorMsgs.isEmpty()) {
				RequestDispatcher failureView = req.getRequestDispatcher("/front-end/coursedetail/coursedetail.jsp");
				failureView.forward(req, res);
				return;
			}
			req.setAttribute("courseDetailVO", courseDetailVO);
			String url = "/front-end/coursedetail/list_one_coursedetail.jsp";
			RequestDispatcher successView = req.getRequestDispatcher(url);
			successView.forward(req, res);
		}
		if ("getOneCourseDetailForUpdate".equals(action)) {
			List<String> errorMsgs = new LinkedList<>();
			req.setAttribute("errorMsgs", errorMsgs);
			
			Integer cdId = Integer.valueOf(req.getParameter("cdId"));
			
			CourseDetailService cdSvc = new CourseDetailService();
			CourseDetailVO coursedetailVO = cdSvc.getOneCourseDetail(cdId);
			
			String param = "?cdId=" + coursedetailVO.getCdId() + "&crId=" + coursedetailVO.getCrId() + "&cdVideo="
					+ coursedetailVO.getCdVideo() + "&cdSaleVideo=" + coursedetailVO.getCdSaleVideo()
					+ "&cdUrl=" + "&cdPdf=" + coursedetailVO.getCdPdf();

			String url = "/front-end/coursedetail/update_coursedetail.jsp" + param;
			RequestDispatcher successView = req.getRequestDispatcher(url);
			successView.forward(req, res);
		}
		if("update".equals(action)) {
			List<String> errorMsgs = new LinkedList<>();
			req.setAttribute("errorMsgs", errorMsgs);

			Integer cdId;
			cdId = Integer.valueOf(req.getParameter("cdId"));
			
			Integer crId;
			crId = Integer.valueOf(req.getParameter("crId"));

			
			
			//修改影片的程式碼
			String cdVideo = null;
//			Part cdVideoPart = req.getPart("cdVideo");
//			InputStream inputStream = cdVideoPart.getInputStream();
////			ByteArrayOutputStream outputStream = new ByteArrayOutputStream();
//			byte[] cdVideo = inputStream.readAllBytes();
//
//			if (cdVideo.length==0) {
//				CourseDetailService cdSvc =  new CourseDetailService();
//				cdVideo = cdSvc.getOneCourseDetail(cdId).getCdVideo();
//			}
//			    inputStream.close();
//			    
			String cdSaleVideo = null;
//			Part cdSaleVideoPart = req.getPart("cdSaleVideo");
//			InputStream inputStream2 = cdSaleVideoPart.getInputStream();
////			ByteArrayOutputStream outputStream = new ByteArrayOutputStream();
//			byte[] cdSaleVideo = inputStream2.readAllBytes();
//
//			if (cdSaleVideo.length==0) {
//				CourseDetailService cdSvc =  new CourseDetailService();
//				cdSaleVideo = cdSvc.getOneCourseDetail(cdId).getCdSaleVideo();
//			}
//			    inputStream.close();

			Part cdPdfPart = req.getPart("cdPdf");
			InputStream inputStream3 = cdPdfPart.getInputStream();
//			ByteArrayOutputStream outputStream = new ByteArrayOutputStream();
			byte[] cdPdf = inputStream3.readAllBytes();

			if (cdPdf.length==0) {
				CourseDetailService cdSvc =  new CourseDetailService();
				cdPdf = cdSvc.getOneCourseDetail(cdId).getCdPdf();
			}
			    inputStream3.close();
			
			CourseDetailVO coursedetailVO = new CourseDetailVO(cdId,crId,cdVideo,cdSaleVideo,cdPdf);
			CourseDetailService cdSvc = new CourseDetailService();
			CourseDetailVO coursedetailVO2 = cdSvc.updateCourseDetail(coursedetailVO);

			req.setAttribute("coursedetailVO", coursedetailVO2);
			String url = "/front-end/coursedetail/list_one_coursedetail.jsp";
			RequestDispatcher successView = req.getRequestDispatcher(url);
			successView.forward(req, res);
		}
		if("insert".equals(action)) {
			List<String> errorMsgs = new LinkedList<>();
			req.setAttribute("errorMsgs", errorMsgs);
			
			Integer crId;
			crId = Integer.valueOf(req.getParameter("crId"));
			
			CourseDAOImpl cDAO = new CourseDAOImpl();
			CourseVO courseVO = cDAO.findByPrimaryKey(crId);
			String crTitle = courseVO.getCrTitle();

			String cdVideo = null;
			
			Part cdVideoPart = req.getPart("cdVideo");
			InputStream inputStream = cdVideoPart.getInputStream();
			byte[] videoArray = inputStream.readAllBytes();
			
			long currentTimeMillis = System.currentTimeMillis();
			Timestamp timestamp = new Timestamp(currentTimeMillis);
			
			String userHome = System.getProperty("user.home");
			cdVideo = userHome+"/Desktop/THA105/THA105G2/src/main/webapp/front-end/coursedetail/cdVideo/"+timestamp+".mp4";
			FileOutputStream fos = new FileOutputStream(cdVideo);
			fos.write(videoArray);
			fos.close();
			inputStream.close();

			String cdSaleVideo = null;
			
			Part cdSaleVideoPart = req.getPart("cdSaleVideo");
			InputStream inputStream2 = cdSaleVideoPart.getInputStream();
			byte[] videoArray2 = inputStream2.readAllBytes();
			
			cdSaleVideo = userHome+"/Desktop/THA105/THA105G2/src/main/resources/cdSaleVideo/"+crTitle+timestamp+".mp4";
			FileOutputStream fos2 = new FileOutputStream(cdSaleVideo);
			fos2.write(videoArray2);
			fos2.close();
			inputStream2.close();

			
			byte[] cdPdf = null;

			Part cdPdfPart = req.getPart("cdPdf");
			InputStream inputStream3 = cdPdfPart.getInputStream();
			ByteArrayOutputStream outputStream3 = new ByteArrayOutputStream();
			byte[] buffer3 = new byte[1024];

			int bytesRead3;
			if (inputStream3.available() != 0) {
				while ((bytesRead3 = inputStream3.read(buffer3)) != -1) {
					outputStream3.write(buffer3, 0, bytesRead3);
				}
				cdPdf = outputStream3.toByteArray();
				inputStream3.close();
				outputStream3.close();
			}else {
				InputStream in = getServletContext().getResourceAsStream("");
				cdPdf = in.readAllBytes();
//			    prodimageBytes = new byte[in.available()];
//			    in.read(prodimageBytes);
			    in.close();
			}
			
			if (!errorMsgs.isEmpty()) {
				RequestDispatcher failureView = req.getRequestDispatcher("/front-end/coursedetail/add_coursedetail.jsp");
				failureView.forward(req, res);
				return;
			}
			
			CourseDetailVO coursedetailVO = new CourseDetailVO(crId,cdVideo,cdSaleVideo,cdPdf);
			CourseDetailService cdSvc = new CourseDetailService();
			Integer id = cdSvc.addCourseDetail(coursedetailVO);
			req.setAttribute("id", id);
			List<CourseDetailVO> list = cdSvc.getAll();
			req.setAttribute("list", list);

			String url = "/front-end/coursedetail/list_all_coursedetail.jsp";
			RequestDispatcher successView = req.getRequestDispatcher(url); // 新增成功後轉交listAllEmp.jsp
			successView.forward(req, res);
		}
		if ("getAll".equals(action)) { 
			List<String> errorMsgs = new LinkedList<>();
			req.setAttribute("errorMsgs", errorMsgs);

			CourseDetailService cdSvc = new CourseDetailService();
			List<CourseDetailVO> list = cdSvc.getAll();
			req.setAttribute("list", list);

//			String url = req.getContextPath()+"/front-end/coursedetail/list_all_coursedetail.jsp";
			String url = "list_all_coursedetail.jsp";
			RequestDispatcher successView = req.getRequestDispatcher(url);// 刪除成功後,轉交回送出刪除的來源網頁
			successView.forward(req, res);
		}
	}
}
