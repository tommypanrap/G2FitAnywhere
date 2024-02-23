package com.fitanywhere.user.model;

import com.fitanywhere.util.EncryptionUtil;
import com.fitanywhere.util.MailUtil;

import io.lettuce.core.api.StatefulRedisConnection;
import io.lettuce.core.api.sync.RedisCommands;

import com.fitanywhere.util.LettuceUtil;

import java.security.SecureRandom;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;
import java.util.Date;
import javax.mail.MessagingException;
import javax.servlet.http.HttpSession;

public class UserService {

	private UserDAO userDAO;

	public UserService() {
		// 初始化 UserDAOImpl
		this.userDAO = new UserDAOImpl();
	}

//	    ===================================================

//    傳遞註冊用的資料
	public UserVO registerUser(String uNickname, String uName, String uMail, String uPassword, String uPhone,
			Integer uGender, Date uBirth) {
		UserVO userVO = new UserVO();

		// 設置 UserVO 屬性
		userVO.setuNickname(uNickname);
		userVO.setuName(uName);
		userVO.setuMail(uMail);

		// 呼叫EncryptionUtil對密碼明碼執行單向加密進入DB (如不要加密則註解這段)
		String encryptedPassword = EncryptionUtil.encryptPassword(uPassword);
		userVO.setuPassword(encryptedPassword);

//        不啟用加密密碼的明碼寫入DB(如要加密則註解這段 如果改為不加密 則後續步驟都要修改)
//        userVO.setuPassword(uPassword);	 

		userVO.setuPhone(uPhone);
		userVO.setuVerified(0); // 預設值
		userVO.setuCoach(0); // 預設值
		userVO.setuGender(uGender);
		userVO.setuBirth(uBirth);
		userVO.setuStatus(0); // 預設值
		userVO.setuRegisterdate(new Date()); // 當下伺服器時間

		// 調用 DAO 層進行數據持久化
		return userDAO.registerUser(userVO);
	}

//	    ==========================================

//	    檢查會員註冊資料(排除重複)
	public boolean checkDuplicate(String uNickname, String uPhone, String uMail) {
		return ((UserDAOImpl) userDAO).registerCheck(uNickname, uPhone, uMail);
	}

//      ==========================================

//	    將會員註冊資料暫存到Session中
	public void storeRegistrationData(HttpSession session, String uName, String uNickname, String uBirth, String uPhone,
			String uMail, String uPassword, String uGender) {
		// 將數據存儲到Session中
		session.setAttribute("uName", uName);
		session.setAttribute("uNickname", uNickname);
		session.setAttribute("uBirth", uBirth);
		session.setAttribute("uPhone", uPhone);
		session.setAttribute("uMail", uMail);
		session.setAttribute("uPassword", uPassword);
		session.setAttribute("uGender", uGender);

//		單純在本機測試要跳過驗證信流程時使用
//		String verificationCode = "123456";
//		session.setAttribute("verificationCode", verificationCode);
	}

//  ==========================================

//    註冊-寄送驗證碼到會員信箱
	public void sendVerificationMail(String uMail, String verificationCode) {

		// 從請求中獲取郵件的目標地址、主題和內容
		String subject = "FitAnyWhere - 新會員註冊驗證信";

		// HTML 格式的郵件內容
		String message = "<!DOCTYPE html>" + "<html>" + "<head>" + "<style>"
				+ "body { font-family: Arial, sans-serif; }" + "p { line-height: 1.5; }"
				+ ".verification-code { color: red; font-size: 20px;}" + ".formatted-time { color: red; }" + "</style>"
				+ "</head>" + "<body>" + "<p>親愛的新會員您好:<br>" + "感謝您註冊本站的一般會員，本公司很高興有機會為您服務！<br>"
				+ "為了完成您的註冊流程，請在 <span class=\"formatted-time\">" + getFormattedTime() // 在這裡套用樣式
				+ "</span> 前在本站註冊頁面輸入下列驗證碼</p>" + "<p class=\"verification-code\"> " + verificationCode + " </p>"
				+ "<p>如有任何問題，歡迎隨時透過下方 email 聯絡本公司客服 </p>"
				+ "<p><a href=\"mailto:fitanywhere2024@gmail.com\">fitanywhere2024@gmail.com</a></p>"
				+ "<p>本信為系統自動發送請勿直接回信</p>" + "<p>再次歡迎與感謝您註冊本站</p>" + "</body>" + "</html>";

		// 使用MailUtil
		MailUtil mailUtil = new MailUtil();
		try {
			mailUtil.sendEmail(uMail, subject, message);
		} catch (MessagingException e) {
			System.out.println("驗證信寄送失敗!");
			e.printStackTrace();
		}

	}

	// 自訂方法用於取得格式化後的時間
	private String getFormattedTime() {
		LocalDateTime now = LocalDateTime.now().plusMinutes(15); // 加上15分鐘
		DateTimeFormatter formatter = DateTimeFormatter.ofPattern("yyyy-MM-dd HH:mm");
		return formatter.format(now);
	}

//  ==========================================

//    註冊-生成驗證碼並寫入Redis
	public String setVerificationCodeInRedis(String uMail) {
		// 生成六位數的隨機驗證碼，包含前導零
		String verificationCode = generateRandomVerificationCode();

		// 使用try-with-resources語句確保連接被自動關閉
		try (StatefulRedisConnection<String, String> connection = LettuceUtil.getConnection()) {
			RedisCommands<String, String> syncCommands = connection.sync();

			// 將郵箱和驗證碼存儲到Redis並設定過期時間16分鐘
			syncCommands.setex(uMail, 16 * 60, verificationCode);

			System.out.println("驗證碼已存儲到Redis: " + uMail + ":" + verificationCode);
			return verificationCode;
		} // 自動關閉連接
	}

	private String generateRandomVerificationCode() {
		SecureRandom random = new SecureRandom();
		int num = random.nextInt(1000000); // 生成0到999999之間的隨機數
		return String.format("%06d", num); // 格式化為六位數，包含零起頭
	}

//  ==========================================

//    註冊-依據信箱從Redis讀取驗證碼

	public String getVerificationCodeInRedis(String uMail) {
		// 使用try-with-resources語句確保連接被自動關閉
		try (StatefulRedisConnection<String, String> connection = LettuceUtil.getConnection()) {
			RedisCommands<String, String> syncCommands = connection.sync();

			// 從Redis中查詢驗證碼
			String verificationCode = syncCommands.get(uMail);

			if (verificationCode != null) {
				System.out.println("從Redis中找到驗證碼: " + verificationCode);
				return verificationCode;
			} else {
				System.out.println("未在Redis中找到相應的驗證碼。");
				return null; // 或者可以返回一個特定的錯誤消息
			}
		} // 自動關閉連接
	}

//      ==========================================

//	    檢查會員輸入的驗證碼是否正確
	
	public int checkVerificationCode(HttpSession session, String verificationCodeFromRequest) {
		
//		這是讀取寫在Session中固定驗證碼123456的測試方法
//		String storedVerificationCode = (String) session.getAttribute("verificationCode");
		
//		從Session中讀取會員的uMail
		String uMailInSession = (String) session.getAttribute("uMail");
//		依據uMail進去Redis撈儲存的驗證碼
		String storedVerificationCode = getVerificationCodeInRedis(uMailInSession);
		
//		檢查資料是否傳輸異常
//		System.out.println(uMailInSession);
//		System.out.println(storedVerificationCode);
//		System.out.println(verificationCodeFromRequest);
		
		if (verificationCodeFromRequest != null && storedVerificationCode != null && verificationCodeFromRequest.equals(storedVerificationCode)) {
			return 0; // 驗證碼一致
		} else {
			return 1; // 驗證碼不一致
		}
	}

//      ==========================================

//	    負責讀取Session資料並呼叫註冊流程完成註冊
	public UserVO triggerRegistrationProcess(HttpSession session) {
		try {
			// 從session中提取註冊資料
			String uName = (String) session.getAttribute("uName");
			String uNickname = (String) session.getAttribute("uNickname");
			String uBirth = (String) session.getAttribute("uBirth");
			String uPhone = (String) session.getAttribute("uPhone");
			String uMail = (String) session.getAttribute("uMail");
			String uPassword = (String) session.getAttribute("uPassword");
			Integer uGender = Integer.parseInt((String) session.getAttribute("uGender"));

			// 轉換uBirth從String到Date
			SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
			Date birthDate = sdf.parse(uBirth);

			// 調用registerUser方法
			return registerUser(uNickname, uName, uMail, uPassword, uPhone, uGender, birthDate);
		} catch (ParseException e) {
			e.printStackTrace();
			System.out.println("註冊流程異常!");
			// 錯誤處理
			return null;
		}
	}

//  ==========================================	

// 	檢查郵件是否已註冊
	public boolean isEmailRegistered(String uMail) {
		UserVO user = userDAO.loginVerification(uMail);
		return user != null;
	}

//  ==========================================	

// 	處理會員登入   
	public UserVO userLogin(String uMail, String inputPassword) {
		UserVO user = userDAO.loginVerification(uMail);
		if (user != null && EncryptionUtil.checkPassword(inputPassword, user.getuPassword())) {
			return user; // 返回會員資料表示登錄成功
		}
		return null; // 登錄失敗
	}

//  ==========================================

}
