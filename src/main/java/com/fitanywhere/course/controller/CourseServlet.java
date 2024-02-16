package com.fitanywhere.course.controller;

import java.io.IOException;
import java.util.LinkedList;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.fitanywhere.course.model.CourseService;
import com.fitanywhere.course.model.CourseVO;

/**
 * Servlet implementation class CourseServlet
 */
@WebServlet("/CourseServlet")
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
				RequestDispatcher failureView = req.getRequestDispatcher("/course/select_page.jsp");
				failureView.forward(req, res);
				return;
			}
			req.setAttribute("courseVO", courseVO);
			String url = "/course/listOneCourse.jsp";
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

//			String contextPath = request.getContextPath(); // 获取上下文路径
//			String url = contextPath + "/front-end/course/update_course.jsp" + param;

			String url = "pagecontext./front-end/course/update_course.jsp" + param;
			RequestDispatcher successView = req.getRequestDispatcher(url);
			successView.forward(req, res);
		}
	}

}
