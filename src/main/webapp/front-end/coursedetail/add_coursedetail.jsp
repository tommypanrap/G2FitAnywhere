<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>新增課程詳細資料</title>
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
					<a
						href="<%=request.getContextPath()%>/front-end/coursedetail/course_detail.jsp"><img
						src="images/add" width="100" height="100" border="0">回首頁</a>
				</h4>
			</td>
		</tr>
	</table>

	<h3>課程詳細資料新增:</h3>


	<%-- 錯誤表列 --%>
	<c:if test="${not empty errorMsgs}">
		<font style="color: red">請修正以下錯誤:</font>
		<ul>
			<c:forEach var="message" items="${errorMsgs}">
				<li style="color: red">${message}</li>
			</c:forEach>
		</ul>
	</c:if>

	<FORM METHOD="post"
		ACTION="<%=request.getContextPath()%>/front-end/coursedetail/coursedetail.do"
		name="form1" enctype="multipart/form-data">
		<table>
			<jsp:useBean id="course" scope="page"
				class="com.fitanywhere.course.model.CourseDAOImpl" />
			<tr>
				<td>課程:</td>
				<td><select size="1" name="crId">
						<c:forEach var="course" items="${course.all}">
							<option value="${course.crId}">${course.crTitle}</option>
						</c:forEach>
				</select></td>
			</tr>
			<tr>
				<td>課程影片:</td>
				<td><input type="file" name="cdVideo" value="${param.cdVideo}"
					size="45" /></td>
			</tr>
			<tr>
				<td>促銷影片:</td>
				<td><input type="file" name="cdSaleVideo"
					value="${param.cdSaleVideo}" size="45" /></td>
			</tr>
			<tr>
				<td>PDF:</td>
				<td><input type="file" name="cdPdf" value="${param.cdPdf}"
					size="45" /></td>
			</tr>

		</table>
		<br> <input type="hidden" name="action" value="insert"> <input
			type="submit" value="送出新增">
	</FORM>
</body>
</html>