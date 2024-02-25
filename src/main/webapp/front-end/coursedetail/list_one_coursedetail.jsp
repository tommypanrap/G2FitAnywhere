<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="com.fitanywhere.coursedetail.model.*"%>
<%@ page import="java.util.*"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>

<%
CourseDetailVO coursedetailVO = (CourseDetailVO)request.getAttribute("coursedetailVO");
%>

<html>
<head>
<meta charset="UTF-8">
<title>課程詳細資料</title>
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
	width: 600px;
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
				<h3>課程資料 - listOneCourse.jsp</h3>
				<h4>
					<a href="<%= request.getContextPath() %>/front-end/coursedetail/course_detail.jsp"><img src="images/back1.gif"
						width="100" height="32" border="0">回首頁</a>
				</h4>
			</td>
		</tr>
	</table>

	<table>
		<tr>
			<th>課程詳細流水號</th>
			<th>課程ID</th>
			<th>課程影片</th>
			<th>促銷影片</th>
			<th>PDF</th>
		</tr>
		<tr>
			<td>${coursedetailVO.cdId}</td>
			<td>${coursedetailVO.crId}</td>
			<td>${coursedetailVO.cdVideo}</td>
			<td>${coursedetailVO.cdSaleVideo}</td>
			<td>${coursedetailVO.cdPdf}</td>
		</tr>
	</table>

</body>
</html>