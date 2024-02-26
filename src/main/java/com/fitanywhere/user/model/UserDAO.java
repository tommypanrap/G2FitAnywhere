package com.fitanywhere.user.model;

public interface UserDAO {

	// 將會員數據寫入MySQL(註冊)
	UserVO registerUser(UserVO user);

	// 檢查會員資料
	boolean registerCheck(String uNickname, String uPhone, String uMail);

	// 登入時以uMail查詢會員整筆資料(Hibernate限制)
	UserVO loginVerification(String uMail);

	// 寫入會員大頭照
	void writeHeadshot(Integer userId, byte[] image);
	
	// 讀取會員大頭照
	byte[] readHeadshot(Integer userId);


}