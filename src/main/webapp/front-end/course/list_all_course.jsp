<%@page import="org.hibernate.internal.build.AllowSysOut"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page import="java.util.*"%>
<%@page import="com.fitanywhere.course.model.*"%>
<%@ page import="java.util.Base64"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
    
<%
List<CourseVO> list = (List<CourseVO>)(request.getAttribute("list"));
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>課程資料</title>
<style>
table#table-1 {
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
	width: 800px;
	background-color: white;
	margin-top: 5px;
	margin-bottom: 5px;
}

table, th, td {
	border: 1px solid #CCCCFF;
}

th, td {
	padding: 5px;
	text-align: center;
}
</style>
</head>
<body bgcolor='white'>
<table id="table-1">
		<tr>
			<td>
				<h3>所有課程資料</h3>
				<h4>
					<a href="<%= request.getContextPath() %>/front-end/course/course_page.jsp"><img src="images/back1.gif"
						width="100" height="32" border="0">回首頁</a>
				</h4>
			</td>
		</tr>
	</table>
<% 
	Integer id = null ;
	if(request.getAttribute("id")!=null){
		id = Integer.valueOf(request.getAttribute("id").toString());
	}
	%>
	<table><tr><td><%= id %></td></tr></table>
	
	<table>
		<tr>
			<th>課程ID</th>
			<th>教練用戶ID</th>
			<th>類別ID</th>
			<th>課程狀態</th>
			<th>課程標題</th>
			<th>課程副標題</th>
			<th>課程介紹</th>
			<th>課程封面縮圖</th>
			<th>課程定價</th>
			<th>課程上架時間</th>
			<th>課程最後更新時間</th>
			<th>課程評論數量</th>
			<th>課程總星數</th>
			<th>學習目標1</th>
			<th>學習目標2</th>
			<th>學習目標3</th>
			<th>目標學習先決條件</th>
			<th>目標學習適合對象</th>
			<th>歡迎訊息</th>
			<th>祝賀訊息</th>
			<th>困難度</th>
		</tr>
		<c:forEach var="courseVO" items="${list}">
			<tr>
			<td>${courseVO.crId}</td>
			<td>${courseVO.uId}</td>
			<td>${courseVO.crClass}</td>
			<td>${courseVO.crState}</td>
			<td>${courseVO.crTitle}</td>
			<td>${courseVO.crSubtitle}</td>
			<td>${courseVO.crIntro}</td>
			<td><img
					src="data:image/jpeg;base64,${Base64.getEncoder().encodeToString(courseVO.crCover)}"
					alt="Ad Image" width="100" height="100"></td>
			<td>${courseVO.crPrice}</td>
			<td>${courseVO.crCreateDate}</td>
			<td>${courseVO.crEditDate}</td>
			<td>${courseVO.crCmQuan}</td>
			<td>${courseVO.crTotStar}</td>
			<td>${courseVO.crPurpose1}</td>
			<td>${courseVO.crPurpose2}</td>
			<td>${courseVO.crPurpose3}</td>
			<td>${courseVO.crPre}</td>
			<td>${courseVO.crTarget1}</td>
			<td>${courseVO.crHelloMsg}</td>
			<td>${courseVO.crCong}</td>
			<td>${courseVO.crLevel}</td>

				<td>
					<FORM METHOD="post" ACTION="<%= request.getContextPath() %>/front-end/course/course.do" style="margin-bottom: 0px;" 
						enctype="multipart/form-data">
						<input type="submit" value="修改"> <input type="hidden"
							name="crId" value="${courseVO.crId}"> <input type="hidden"
							name="action" value="getOneForUpdate">
					</FORM>
				</td>
				<td>
					<FORM METHOD="post" ACTION="<%= request.getContextPath() %>/front-end/course/course.do" style="margin-bottom: 0px;">
						<input type="submit" value="刪除"> <input type="hidden"
							name="crId" value="${courseVO.crId}"> <input type="hidden"
							name="action" value="delete">
					</FORM>
				</td>
			</tr>
		</c:forEach>
	</table>

</body>
</html>