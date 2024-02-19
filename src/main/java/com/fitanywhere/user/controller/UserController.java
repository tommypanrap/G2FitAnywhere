package com.fitanywhere.user.controller;



import com.fitanywhere.user.model.UserService;
import com.fitanywhere.user.model.UserVO;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.Date;
import java.util.Enumeration;

@WebServlet("/user_controller")
public class UserController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private UserService userService = new UserService(); // 增加UserService實例

	public UserController() {
		super();
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// 設置請求和響應的字符編碼為UTF-8
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
		response.setContentType("text/html; charset=UTF-8");
		
//		除錯用的請求檢查(是否為空值)
//		request.getParameterMap().forEach((key, values) -> {
//			System.out.println(key + ": " + String.join(", ", values));
//		});

		String requestType = request.getParameter("requestType");

		if ("registerForm".equals(requestType)) {
			holdRegisterForm(request, response);
		} else if ("verificationMail".equals(requestType)) {
			checkVerificationCode(request, response);
		} else if ("login".equals(requestType)) {
			login(request, response);
		} else if ("checkDuplicate".equals(requestType)) {
			System.out.println("註冊資料預查啟動!");
			checkDuplicate(request, response);
		}

//		下面這段純粹是登入後在Eclipse console列印當下Session看有無添加成功
//		HttpSession session = request.getSession(false); // 獲取當前Session，不創建新的
//	    if (session != null) {
//	    	System.out.println("列印是否登入後成功將基本資訊寫入會員新發的Session中");
//	        Enumeration<String> attributeNames = session.getAttributeNames();
//	        while (attributeNames.hasMoreElements()) {	        	
//	            String attributeName = attributeNames.nextElement();
//	            System.out.println(attributeName + ": " + session.getAttribute(attributeName));
//	        }
//	    } else {
//	        System.out.println("原定在登入後寫入會員Session的基本資料寫入失敗");
//	    }

	}

//	在會員輸入註冊資料時先預查確保沒有重複註冊
	private void checkDuplicate(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String fieldId = request.getParameter("fieldId");
		String fieldValue = request.getParameter("fieldValue");

		boolean isDuplicate = false;
		UserService userService = new UserService(); // 假設已存在的服務類

		// 根據不同欄位執行重複檢查
		switch (fieldId) {
		case "u_nickname":
			isDuplicate = userService.checkDuplicate(fieldValue, null, null);
			break;
		case "u_phone":
			isDuplicate = userService.checkDuplicate(null, fieldValue, null);
			break;
		case "u_mail":
			isDuplicate = userService.checkDuplicate(null, null, fieldValue);
			break;
		}

		PrintWriter out = response.getWriter();
		out.print(isDuplicate);
		out.flush();
		out.close();
	}

//	將註冊表單的資訊暫存到Session中
	protected void holdRegisterForm(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// 從請求中讀取表單數據
		HttpSession session = request.getSession();
		String uName = request.getParameter("u_name");
		String uNickname = request.getParameter("u_nickname");
		String uBirth = request.getParameter("u_birth");
		String uPhone = request.getParameter("u_phone");
		String uMail = request.getParameter("u_mail");
		String uPassword = request.getParameter("u_password");
		String uGender = request.getParameter("u_gender");

		// 將數據存儲到Session中
		userService.storeRegistrationData(session, uName, uNickname, uBirth, uPhone, uMail, uPassword, uGender);

		String verificationCodeFromSession = (String) session.getAttribute("verificationCode");
		String uMailFromSession = (String) session.getAttribute("uMail");

		System.out.println("註冊資料暫存成功!");
		System.out.println("準備發送驗證碼到: " + uMailFromSession + " 驗證碼: " + verificationCodeFromSession);

	}

//  會員輸入驗證碼的比對
	protected void checkVerificationCode(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		HttpSession session = request.getSession();
		String verificationCodeFromRequest = request.getParameter("verificationCode");
		System.out.println("輸入驗證碼為: " + verificationCodeFromRequest);

		int verificationResult = userService.checkVerificationCode(session, verificationCodeFromRequest);

		if (verificationResult == 0) {
			// 驗證碼正確，進行註冊流程
			UserVO userVO = userService.triggerRegistrationProcess(session);
			if (userVO != null) {
				System.out.println("註冊成功");

				// 註冊成功則刪除Session 因為裡面有註冊資料
				session.invalidate();
				System.out.println("有清資料");

				// 創建一個新的 Session
				HttpSession newSession = request.getSession(true);
				System.out.println("有新session");

				// 將註冊成功的標誌存儲在 session 中
				newSession.setAttribute("registrationSuccess", true);
				System.out.println("有將註冊成功寫入session");


				// 重定向到登入頁面
//				String rePath = request.getContextPath();
//				System.out.println("rePath = " + rePath);
				
				response.setContentType("text/plain");
				PrintWriter out = response.getWriter();
				out.print("0"); //註冊成功
				out.flush();
				out.close();
			} else {
				System.out.println("註冊異常");
				// 可以根據實際需求返回錯誤信息或進行其他處理
			}
		} else {
			
			System.out.println("驗證碼錯誤");
			
			response.setContentType("text/plain");
			PrintWriter out = response.getWriter();
			out.print("1");//驗證碼錯誤
			out.flush();
			out.close();
		}
	}

//	處理一般會員登入
	protected void login(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String uMail = request.getParameter("u_email");
		String password = request.getParameter("u_password");

		UserVO user = userService.login(uMail, password);

		PrintWriter out = response.getWriter();
		response.setContentType("application/json");

		if (user != null) {
			// 登錄成功，更新Session
			HttpSession session = request.getSession();
			session.invalidate(); // 使舊Session失效

			HttpSession newSession = request.getSession(true); // 創建新的Session
//	        寫入基礎會員資訊(依據資料庫)
			newSession.setAttribute("uID", user.getuID());
			newSession.setAttribute("uNickname", user.getuNickname());
			newSession.setAttribute("uCoach", user.getuCoach());
			newSession.setAttribute("uStatus", user.getuStatus());
			
//			寫入額外的固定值會員資訊
//			uPerm代表一般會員的權限 暫定9為最小 未來管理員會是0/1/2之類的
			newSession.setAttribute("uPerm", 9);
			
//	        Session管理用的資訊 
//	        最後活動時間+Session時效=Session保存期限
//	        登陸狀態就是單純讀這個就知道有沒有登入
			newSession.setAttribute("loginDate", new Date()); // 登錄日期
			newSession.setAttribute("lastActiveTime", new Date()); // 最後活動時間
//			因為loginStatus是登入才寫入Session 可以單純驗有沒有這個項目判斷有無登入 不一定要核對loginStatus的值
			newSession.setAttribute("loginStatus", "logged_in"); // 登錄狀態
			newSession.setMaxInactiveInterval(30 * 60); // 設置Session時效

//	        單純是因為登入完還沒有頁面跳轉
			out.print("{\"status\":\"success\", \"message\":\"Login successful.\"}");
		} else {
			out.print("{\"status\":\"error\", \"message\":\"Login failed.\"}");
		}
	}

}
