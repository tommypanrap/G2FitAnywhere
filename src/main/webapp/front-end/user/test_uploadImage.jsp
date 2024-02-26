<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>上傳圖片</title>
</head>
<body>
    <h2>上傳圖片</h2>
    <form action="/THA105G2/user_headshot_controller" method="post" enctype="multipart/form-data">
        <input type="hidden" name="action" value="uploadImage">
        <label for="uId">用戶ID:</label><br>
        <input type="text" id="uId" name="uId" required><br>
        <label for="image">選擇圖片:</label><br>
        <input type="file" id="image" name="image" required><br><br>
        <input type="submit" value="上傳">
    </form>
</body>
</html>