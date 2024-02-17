<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="com.fitanywhere.course.model.*" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>新增課程</title>
<style>
table#table-1 {
	width: 450px;
	background-color: #CCCCFF;
	border: 2px solid black;
	text-align: center;
}

table#table-1 h4 {
	color: red;
	display: block;
	margin-bottom: 1px;
}

h4 {
	color: blue;
	display: inline;
}
</style>

<style>
table {
	background-color: white;
	margin-top: 1px;
	margin-bottom: 1px;
}

table, th, td {
	border: 0px solid #CCCCFF;
}

th, td {
	padding: 1px;
}
</style>
</head>
<body bgcolor='white'>

<table id="table-1">
		<tr>
			<td>
				<h3>新增課程</h3>
			</td>
			<td>
				<h4>
					<a href="course_page.jsp"><img src="images/add" width="100"
						height="100" border="0">回首頁</a>
				</h4>
			</td>
		</tr>
	</table>

	<h3>課程新增:</h3>


	<%-- 錯誤表列 --%>
	<c:if test="${not empty errorMsgs}">
		<font style="color: red">請修正以下錯誤:</font>
		<ul>
			<c:forEach var="message" items="${errorMsgs}">
				<li style="color: red">${message}</li>
			</c:forEach>
		</ul>
	</c:if>

	<FORM METHOD="post" ACTION="course.do" name="form1"
		enctype="multipart/form-data">
<table>
    <%-- <tr>
				<td>課程ID:</td>
				<td><input type="TEXT" name="crId" value="${param.crId}"
					size="20" /></td>
				<td>${errorMsgs.crId}</td>
			</tr> --%>
			<tr>
				<td>教練用戶ID:</td>
				<td><input type="TEXT" name="uId" value="${param.uId}"
					size="20" /></td>
<%-- 				<td>${errorMsgs.uId}</td> --%>
			</tr>
			<tr>
				<td>類別ID:</td>
				<td><input type="TEXT" name="crClass"
					value="${param.crClass}"></td>
<%-- 				<td>${errorMsgs.crClass}</td> --%>
			</tr>
			<tr>
				<td>課程狀態:</td>
				<td><input type="TEXT" name="crState" value="${param.crState}"
					size="45" /></td>
<%-- 				<td>${errorMsgs.crState}</td> --%>
			</tr>
			<tr>
				<td>課程標題:</td>
				<td><input type="TEXT" name="crTitle" value="${param.crTitle}"
					size="45" /></td>
<%-- 				<td>${errorMsgs.crTitle}</td> --%>
			</tr>
			<tr>
				<td>課程副標題:</td>
				<td><input type="TEXT" name="crSubtitle"
					value="${param.crSubtitle}" size="45" /></td>
<%-- 				<td>${errorMsgs.crSubtitle}</td> --%>
			</tr>
			<tr>
				<td>課程介紹:</td>
				<td><input type="TEXT" name="crIntro" value="${param.crIntro}"
					size="45" /></td>
<%-- 				<td>${errorMsgs.crIntro}</td> --%>
			</tr>
			<tr>
				<td>課程封面縮圖:</td>
				<td><input type="file" name="crCover"
					value="${param.crCover}" size="45" /></td>
<%-- 				<td>${errorMsgs.crCover}</td> --%>
			</tr>
			<tr>
				<td>課程定價:</td>
				<td><input type="TEXT" name="crPrice" value="${param.crPrice}"
					size="45" /></td>
<%-- 				<td>${errorMsgs.crPrice}</td> --%>
			</tr>
			<%-- <tr>
				<td>課程上架時間:</td>
				<td><input type="TEXT" name="crCreateDate" value="${param.crCreateDate}"
					size="45" /></td>
				<td>${errorMsgs.crCreateDate}</td>
			</tr>
			<tr>
				<td>課程最後更新時間:</td>
				<td><input type="TEXT" name="crEditDate" value="${param.crEditDate}"
					size="5" /></td>
				<td>${errorMsgs.crEditDate}</td>
			</tr> --%>
			<tr>
				<td>課程評論數量:</td>
				<td><input type="TEXT" name="crCmQuan" 
					value="${param.crCmQuan}" size="45" /></td>
<%-- 				<td>${errorMsgs.crCmQuan}</td> --%>
				<!-- <td><INPUT type="submit" value="上傳"></td> -->
			</tr>
			<tr>
				<td>課程總星數:</td>
				<td><input type="TEXT" name="crTotStar" value="${param.crTotStar}"
					size="45" /></td>
<%-- 				<td>${errorMsgs.crTotStar}</td> --%>
			</tr>
			<tr>
				<td>學習目標1:</td>
				<td><input type="TEXT" name="crPurpose1" value="${param.crPurpose1}"
					size="45" /></td>
<%-- 				<td>${errorMsgs.crPurpose1}</td> --%>
			</tr>
			<tr>
				<td>學習目標2:</td>
				<td><input type="TEXT" name="crPurpose2" value="${param.crPurpose2}"
					size="45" /></td>
<%-- 				<td>${errorMsgs.crPurpose2}</td> --%>
			</tr>
			<tr>
				<td>學習目標3:</td>
				<td><input type="TEXT" name="crPurpose3" value="${param.crPurpose3}"
					size="45" /></td>
<%-- 				<td>${errorMsgs.crPurpose3}</td> --%>
			</tr>
			<tr>
				<td>目標學習先決條件:</td>
				<td><input type="TEXT" name="crPre" value="${param.crPre}"
					size="45" /></td>
<%-- 				<td>${errorMsgs.crPre}</td> --%>
			</tr>
			<tr>
				<td>目標學習適合對象:</td>
				<td><input type="TEXT" name="crTarget1" value="${param.crTarget1}"
					size="45" /></td>
<%-- 				<td>${errorMsgs.crTarget1}</td> --%>
			</tr>
			<tr>
				<td>歡迎訊息:</td>
				<td><input type="TEXT" name="crHelloMsg" value="${param.crHelloMsg}"
					size="45" /></td>
<%-- 				<td>${errorMsgs.crHelloMsg}</td> --%>
			</tr>
			<tr>
				<td>祝賀訊息:</td>
				<td><input type="TEXT" name="crCong" value="${param.crCong}"
					size="45" /></td>
<%-- 				<td>${errorMsgs.crCong}</td> --%>
			</tr>
			<tr>
				<td>困難度:</td>
				<td><input type="TEXT" name="crLevel" value="${param.crLevel}"
					size="45" /></td>
<%-- 				<td>${errorMsgs.crLevel}</td> --%>
			</tr>

</table>
		<br> <input type="hidden" name="action" value="insert"> <input
			type="submit" value="送出新增">
	</FORM>

</body>
</html>