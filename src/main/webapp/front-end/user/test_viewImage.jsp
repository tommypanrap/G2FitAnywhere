<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>查詢圖片</title>
</head>
<body>
    <h2>查詢圖片</h2>
    <form action="/THA105G2/user_headshot_controller" method="post">
        <input type="hidden" name="action" value="viewImage">
        <label for="uId">用戶ID:</label><br>
        <input type="text" id="uId" name="uId" required><br><br>
        <input type="submit" value="查詢">
    </form>
    <br>
    <img id="userImage" src="" alt="用戶圖片將顯示在這裡" style="display:none;">
</body>
</html>

