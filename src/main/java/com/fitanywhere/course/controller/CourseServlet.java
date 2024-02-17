package com.fitanywhere.course.controller;

import java.io.ByteArrayOutputStream;
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

import com.fitanywhere.course.model.CourseService;
import com.fitanywhere.course.model.CourseVO;

/**
 * Servlet implementation class CourseServlet
 */
@WebServlet("/front-end/course/course.do")
@MultipartConfig
public class CourseServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public CourseServlet() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doPost(req, res);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest req, HttpServletResponse res)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		req.setCharacterEncoding("UTF-8");
		String action = req.getParameter("action");
		
		if ("getOneCourse".equals(action)) {
			List<String> errorMsgs = new LinkedList<>();
			req.setAttribute("errorMsgs", errorMsgs);
			
			Integer crId = null; 
			
			try {
				crId = Integer.valueOf(req.getParameter("crId"));
			} catch (Exception e) {
				errorMsgs.add("請輸入課程編號");
			}
			if (!errorMsgs.isEmpty()) {
				RequestDispatcher failureView = req.getRequestDispatcher("/course/select_page.jsp");
				failureView.forward(req, res);
				return;
			}
			CourseService cSvc = new CourseService();
			CourseVO courseVO = cSvc.getOneCourse(crId);
			if (courseVO == null) {
				errorMsgs.add("查無資料");
			}
			if (!errorMsgs.isEmpty()) {
				RequestDispatcher failureView = req.getRequestDispatcher("/front-end/course/course_page.jsp");
				failureView.forward(req, res);
				return;
			}
			req.setAttribute("courseVO", courseVO);
			String url = "/front-end/course/list_one_course.jsp";
			RequestDispatcher successView = req.getRequestDispatcher(url);
			successView.forward(req, res);
		}
		if ("getOneForUpdate".equals(action)) {
			List<String> errorMsgs = new LinkedList<>();
			req.setAttribute("errorMsgs", errorMsgs);
			
			Integer crId = Integer.valueOf(req.getParameter("crId"));
			
			CourseService cSvc = new CourseService();
			CourseVO courseVO = cSvc.getOneCourse(crId);
			
			String param = "?crId=" + courseVO.getCrId() + "&uId=" + courseVO.getuId() + "&crClass="
					+ courseVO.getCrClass() + "&crState=" + courseVO.getCrState() + "&crSubtitle=" + courseVO.getCrSubtitle() + "&crTitle=" + courseVO.getCrTitle()
					+ "&crIntro=" + courseVO.getCrIntro() + "&crCover=" + courseVO.getCrCover() + "&crPrice="
					+ courseVO.getCrPrice() + "&crCreateDate=" + courseVO.getCrCreateDate() + "&crEditDate=" + courseVO.getCrEditDate()
					+ "&crCmQuan=" + courseVO.getCrCmQuan() + "&crTotStar=" + courseVO.getCrTotStar() + "&crPurpose1="
					+ courseVO.getCrPurpose1() + "&crPurpose2=" + courseVO.getCrPurpose2() + "&crPurpose3=" + courseVO.getCrPurpose3() + "&crPre=" + courseVO.getCrPre()
					+ "&crTarget1=" + courseVO.getCrTarget1() + "&crHelloMsg=" + courseVO.getCrHelloMsg() + "&crCong=" + courseVO.getCrCong() + "&crLevel=" + courseVO.getCrLevel();

			String url = "/front-end/course/update_course.jsp" + param;
			RequestDispatcher successView = req.getRequestDispatcher(url);
			successView.forward(req, res);
		}
		if("update".equals(action)) {
			List<String> errorMsgs = new LinkedList<>();
			req.setAttribute("errorMsgs", errorMsgs);

			Integer crId;
			crId = Integer.valueOf(req.getParameter("crId"));
//			try {
//			} catch (NumberFormatException e) {
//				errorMsgs.put("uId", "用戶ID請填數字");
//			}
//			String uIdReg = "^[0-9]+$";
//			if (uId == null || req.getParameter("uId") == null) {
//				errorMsgs.put("uId", "用戶ID: 請勿空白");
//			}
//				else if((uIdReg)) { //以下練習正則(規)表示式(regular-expression)
//					errorMsgs.put("ename","用戶ID: 只能是數字");
//	            }
			Integer uId;
			uId = Integer.valueOf(req.getParameter("uId"));
//			try {
//			} catch (NumberFormatException e) {
//				errorMsgs.put("moodId", "心情狀態請填數字");
//			}
//			if (moodId == null) {
//				errorMsgs.put("moodId", "心情狀態請勿空白");
//			}
			String crClass;
			crClass = req.getParameter("crClass");
//			try {
//			} catch (Exception e) {
//				errorMsgs.put("uNickname", "暱稱請勿空白");
//			}
//				try {
//					hiredate = java.sql.Date.valueOf(req.getParameter("hiredate").trim());
//				} catch (IllegalArgumentException e) {
//					errorMsgs.put("hiredate","請輸入日期");
//				}

			Integer crState;
			crState = Integer.valueOf(req.getParameter("crState"));
			System.out.println(crState);
//			try {
//			} catch (NumberFormatException e) {
//				errorMsgs.put("uName", "名字請勿空白");
//			}

			String crTitle;
			crTitle = req.getParameter("crTitle");
//			try {
//			} catch (NumberFormatException e) {
//				errorMsgs.put("uMail", "電子信箱請勿空白");
//			}

			String crSubtitle;
			crSubtitle = req.getParameter("crSubtitle");
//			try {
//			} catch (NumberFormatException e) {
//				errorMsgs.put("uPassword", "密碼請勿空白");
//			}

			String crIntro;
			crIntro = req.getParameter("crIntro");
//			try {
//			} catch (NumberFormatException e) {
//				errorMsgs.put("uPhone", "聯絡電話請勿空白");
//			}
			
			Part crCoverPart = req.getPart("crCover");
			InputStream inputStream = crCoverPart.getInputStream();
//			ByteArrayOutputStream outputStream = new ByteArrayOutputStream();
			byte[] crCover = inputStream.readAllBytes();

			if (crCover.length==0) {
				CourseService cSvc =  new CourseService();
				crCover = cSvc.getOneCourse(crId).getCrCover();
			}
			    inputStream.close();

			Integer crPrice;
			crPrice = Integer.valueOf(req.getParameter("crPrice"));
//			try {
//			} catch (NumberFormatException e) {
//				errorMsgs.put("uVerified", "請勿空白");
//			}

			Timestamp crCreateDate;
			crCreateDate = Timestamp.valueOf(req.getParameter("crCreateDate"));
//			try {
//			} catch (NumberFormatException e) {
//				errorMsgs.put("uCoach", "請勿空白");
//			}

			Timestamp crEditDate;
			crEditDate = Timestamp.valueOf(req.getParameter("crEditDate"));
//			try {
//			} catch (NumberFormatException e) {
//				errorMsgs.put("uGender", "請勿空白");
//			}

			Integer crCmQuan;
			crCmQuan = Integer.valueOf(req.getParameter("crCmQuan"));
//			try {
//			} catch (NumberFormatException e) {
//				errorMsgs.put("uAge", "年齡請勿空白");
//			}

			Integer crTotStar;
			crTotStar = Integer.valueOf(req.getParameter("crTotStar"));
//			uBirth = Integer.valueOf(req.getParameter("uBirth"));
//			try {
//			} catch (NumberFormatException e) {
//				errorMsgs.put("uAge", "年齡請勿空白");
//			}

			String crPurpose1;
			crPurpose1 = req.getParameter("crPurpose1");
//			try {
//			} catch (NumberFormatException e) {
//				errorMsgs.put("uAge", "年齡請勿空白");
//			}
			
			String crPurpose2;
			crPurpose2 = req.getParameter("crPurpose2");
			
			String crPurpose3;
			crPurpose3 = req.getParameter("crPurpose3");
			
			String crPre;
			crPre = req.getParameter("crPre");
//			try {
//			} catch (NumberFormatException e) {
//				errorMsgs.put("uAge", "年齡請勿空白");
//			}
//			Integer deptno = Integer.valueOf(req.getParameter("deptno").trim());
			
			String crTarget1;
			crTarget1 = req.getParameter("crTarget1");
			
			String crHelloMsg;
			crHelloMsg = req.getParameter("crHelloMsg");
			
			String crCong;
			crCong = req.getParameter("crCong");
			
			String crLevel;
			crLevel = req.getParameter("crLevel");

			// Send the use back to the form, if there were errors
//			if (!errorMsgs.isEmpty()) {
//				RequestDispatcher failureView = req.getRequestDispatcher("/emp/addEmp.jsp");
//				failureView.forward(req, res);
//				return;
//			}
			
			CourseVO courseVO = new CourseVO(crId,uId,crClass,crState,crTitle,crSubtitle,crIntro,crCover,crPrice,crCreateDate,crEditDate,crCmQuan,crTotStar,crPurpose1,crPurpose2,crPurpose3,crPre,crTarget1,crHelloMsg,crCong,crLevel);
			CourseService cSvc = new CourseService();
			CourseVO courseVO2 = cSvc.updateCourse(courseVO);

			req.setAttribute("courseVO", courseVO2);
			String url = "/front-end/course/list_one_course.jsp";
			RequestDispatcher successView = req.getRequestDispatcher(url);
			successView.forward(req, res);
			
		}
		if("insert".equals(action)) {
			List<String> errorMsgs = new LinkedList<>();
			req.setAttribute("errorMsgs", errorMsgs);
			
//			Integer crId;
//			crId = Integer.valueOf(req.getParameter("crId"));
//			try {
//			} catch (NumberFormatException e) {
//				errorMsgs.put("uId", "用戶ID請填數字");
//			}
//			String uIdReg = "^[0-9]+$";
//			if (uId == null || req.getParameter("uId") == null) {
//				errorMsgs.put("uId", "用戶ID: 請勿空白");
//			}
//				else if((uIdReg)) { //以下練習正則(規)表示式(regular-expression)
//					errorMsgs.put("ename","用戶ID: 只能是數字");
//	            }
			Integer uId;
			uId = Integer.valueOf(req.getParameter("uId"));
//			try {
//			} catch (NumberFormatException e) {
//				errorMsgs.put("moodId", "心情狀態請填數字");
//			}
//			if (moodId == null) {
//				errorMsgs.put("moodId", "心情狀態請勿空白");
//			}
			String crClass;
			crClass = req.getParameter("crClass");
//			try {
//			} catch (Exception e) {
//				errorMsgs.put("uNickname", "暱稱請勿空白");
//			}
//				try {
//					hiredate = java.sql.Date.valueOf(req.getParameter("hiredate").trim());
//				} catch (IllegalArgumentException e) {
//					errorMsgs.put("hiredate","請輸入日期");
//				}

			Integer crState;
			crState = Integer.valueOf(req.getParameter("crState"));
			System.out.println(crState);
//			try {
//			} catch (NumberFormatException e) {
//				errorMsgs.put("uName", "名字請勿空白");
//			}

			String crTitle;
			crTitle = req.getParameter("crTitle");
//			try {
//			} catch (NumberFormatException e) {
//				errorMsgs.put("uMail", "電子信箱請勿空白");
//			}

			String crSubtitle;
			crSubtitle = req.getParameter("crSubtitle");
//			try {
//			} catch (NumberFormatException e) {
//				errorMsgs.put("uPassword", "密碼請勿空白");
//			}

			String crIntro;
			crIntro = req.getParameter("crIntro");
//			try {
//			} catch (NumberFormatException e) {
//				errorMsgs.put("uPhone", "聯絡電話請勿空白");
//			}
			
			byte[] crCover = null;

			Part crCoverPart = req.getPart("crCover");
			InputStream inputStream = crCoverPart.getInputStream();
			ByteArrayOutputStream outputStream = new ByteArrayOutputStream();
			byte[] buffer = new byte[1024];

			int bytesRead;
			if (inputStream.available() != 0) {
				while ((bytesRead = inputStream.read(buffer)) != -1) {
					outputStream.write(buffer, 0, bytesRead);
				}
				crCover = outputStream.toByteArray();
				inputStream.close();
				outputStream.close();
			}else {
				InputStream in = getServletContext().getResourceAsStream("");
				crCover = in.readAllBytes();
//			    prodimageBytes = new byte[in.available()];
//			    in.read(prodimageBytes);
			    in.close();
			}


			Integer crPrice;
			crPrice = Integer.valueOf(req.getParameter("crPrice"));
			try {
			} catch (Exception e) {
				errorMsgs.add("價錢請勿空白");
			}

			long currentTimeMillis = System.currentTimeMillis();

			// 使用当前时间的毫秒数创建 Timestamp 对象
			Timestamp currentTimestamp = new Timestamp(currentTimeMillis);
			
			Timestamp crCreateDate = currentTimestamp;
//			crCreateDate = Timestamp.valueOf(req.getParameter("crCreateDate"));
//			try {
//			} catch (NumberFormatException e) {
//				errorMsgs.put("uCoach", "請勿空白");
//			}

			Timestamp crEditDate = currentTimestamp;
//			crEditDate = Timestamp.valueOf(req.getParameter("crEditDate"));
//			try {
//			} catch (NumberFormatException e) {
//				errorMsgs.put("uGender", "請勿空白");
//			}

			Integer crCmQuan;
			crCmQuan = Integer.valueOf(req.getParameter("crCmQuan"));
//			try {
//			} catch (NumberFormatException e) {
//				errorMsgs.put("uAge", "年齡請勿空白");
//			}

			Integer crTotStar;
			crTotStar = Integer.valueOf(req.getParameter("crTotStar"));
//			uBirth = Integer.valueOf(req.getParameter("uBirth"));
//			try {
//			} catch (NumberFormatException e) {
//				errorMsgs.put("uAge", "年齡請勿空白");
//			}

			String crPurpose1;
			crPurpose1 = req.getParameter("crPurpose1");
//			try {
//			} catch (NumberFormatException e) {
//				errorMsgs.put("uAge", "年齡請勿空白");
//			}
			
			String crPurpose2;
			crPurpose2 = req.getParameter("crPurpose2");
			
			String crPurpose3;
			crPurpose3 = req.getParameter("crPurpose3");
			
			String crPre;
			crPre = req.getParameter("crPre");
//			try {
//			} catch (NumberFormatException e) {
//				errorMsgs.put("uAge", "年齡請勿空白");
//			}
//			Integer deptno = Integer.valueOf(req.getParameter("deptno").trim());
			
			String crTarget1;
			crTarget1 = req.getParameter("crTarget1");
			
			String crHelloMsg;
			crHelloMsg = req.getParameter("crHelloMsg");
			
			String crCong;
			crCong = req.getParameter("crCong");
			
			String crLevel;
			crLevel = req.getParameter("crLevel");
			
			if (!errorMsgs.isEmpty()) {
				RequestDispatcher failureView = req.getRequestDispatcher("/front-end/course/add_course.jsp");
				failureView.forward(req, res);
				return;
			}
			
			CourseVO courseVO = new CourseVO(uId,crClass,crState,crTitle,crSubtitle,crIntro,crCover,crPrice,crCreateDate,crEditDate,crCmQuan,crTotStar,crPurpose1,crPurpose2,crPurpose3,crPre,crTarget1,crHelloMsg,crCong,crLevel);
			CourseService cSvc = new CourseService();
			Integer id = cSvc.addCourse(courseVO);
			req.setAttribute("id", id);

			String url = "/front-end/course/list_all_course.jsp";
			RequestDispatcher successView = req.getRequestDispatcher(url); // 新增成功後轉交listAllEmp.jsp
			successView.forward(req, res);
		}
	}

}
