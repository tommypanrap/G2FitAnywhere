_<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page import="java.util.*"%>
<%@page import="com.fitanywhere.coursedetail.model.*"%>
<%@page import="java.util.Base64"%>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%
List<CourseDetailVO> list = (List<CourseDetailVO>) (request.getAttribute("list"));
%>

<!DOCTYPE html>
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
				<h3>所有課程詳細資料</h3>
				<h4>
					<a
						href="<%=request.getContextPath()%>/front-end/coursedetail/course_detail.jsp"><img
						src="images/back1.gif" width="100" height="32" border="0">回首頁</a>
				</h4>
			</td>
		</tr>
	</table>
	<%-- <% 
	Integer id = null ;
	if(request.getAttribute("id")!=null){
		id = Integer.valueOf(request.getAttribute("id").toString());
	}
	%>
	<table><tr><td><%= id %></td></tr></table> --%>

	<table>
		<tr>
			<th>課程詳細流水號</th>
			<th>課程ID</th>
			<th>課程影片</th>
			<th>促銷影片</th>
			<th>PDF</th>
		</tr>
		<c:forEach var="coursedetailVO" items="${list}">
			<tr>
				<td>${coursedetailVO.cdId}</td>
				<td>${coursedetailVO.crId}</td>
				<%-- <td><img
					src="data:image/jpeg;base64,${Base64.getEncoder().encodeToString(courseVO.crCover)}"
					alt="Ad Image" width="100" height="100"></td> --%>
				<td><video width="320" height="240" controls>
					<source src="cdVideo/2024-02-23 15:54:45.786.mp4" type="video/mp4">
				</video></td>
				<td>${coursedetailVO.cdSaleVideo}</td>
				<td>${coursedetailVO.cdPdf}</td>
				<td>
					<FORM METHOD="post"
						ACTION="<%=request.getContextPath()%>/front-end/coursedetail/coursedetail.do"
						style="margin-bottom: 0px;" enctype="multipart/form-data">
						<input type="submit" value="修改"> <input type="hidden"
							name="cdId" value="${coursedetailVO.cdId}"> <input
							type="hidden" name="action" value="getOneCourseDetailForUpdate">
					</FORM>
				</td>
				<td>
					<FORM METHOD="post"
						ACTION="<%=request.getContextPath()%>/front-end/coursedetail/coursedetail.do"
						style="margin-bottom: 0px;">
						<input type="submit" value="刪除"> <input type="hidden"
							name="cdId" value="${coursedetailVO.cdId}"> <input
							type="hidden" name="action" value="delete">
					</FORM>
				</td>
			</tr>
		</c:forEach>
	</table>
</body>
</html>