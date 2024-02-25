<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page import="com.fitanywhere.coursedetail.model.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>課程詳細資料修改</title>
<style>
  table#table-1 {
    width: 450px;
	background-color: #CCCCFF;
    border: 2px solid black;
    text-align: center;
  }
  table#table-1 h4 {
    color: red;s
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
	<tr><td>
		 <h3>課程資料修改</h3>
		 <h4><a href="<%=request.getContextPath()%>/front-end/coursedetail/course_detail.jsp"><img src="images/back1.gif" width="100" height="32" border="0">回首頁</a></h4>
	</td></tr>
</table>

<h3>課程資料修改:</h3>

<%-- 錯誤表列 --%>
<c:if test="${not empty errorMsgs}">
	<font style="color:red">請修正以下錯誤:</font>
	<ul>
		<c:forEach var="message" items="${errorMsgs}">
			<li style="color:red">${message.value}</li>
		</c:forEach>
	</ul>
</c:if>

<FORM METHOD="post" ACTION="<%= request.getContextPath()%>/front-end/coursedetail/coursedetail.do" name="form1" enctype="multipart/form-data">
<table>
   <tr>
				<td>課程詳細流水號ID:</td>
				<td><input type="TEXT" name="cdId" value="${param.cdId}"
					size="20" readonly/></td>
<%-- 				<td>${errorMsgs.crId}</td> --%>
			</tr>
			<tr>
				<td>課程ID:</td>
				<td><input type="TEXT" name="crId" value="${param.crId}"
					size="20" readonly/></td>
<%-- 				<td>${errorMsgs.uId}</td> --%>
			</tr>
			<tr>
				<td>課程影片:</td>
				<td><input type="file" name="cdVideo"
					value="${param.cdVideo}"></td>
<%-- 				<td>${errorMsgs.crClass}</td> --%>
			</tr>
			<tr>
				<td>促銷影片:</td>
				<td><input type="file" name="cdSaleVideo"
					value="${param.cdSaleVideo}" size="45" /></td>
<%-- 				<td>${errorMsgs.crCover}</td> --%>
			</tr>
			<tr>
				<td>PDF</td>
				<td><input type="file" name="cdPdf" value="${param.cdPdf}"
					size="45" /></td>
<%-- 				<td>${errorMsgs.crCreateDate}</td> --%>
			</tr>

</table>
<br>
<input type="hidden" name="action" value="update">
<input type="hidden" name="cdId" value="${param.cdId}">
<input type="submit" value="送出修改"></FORM>


</body>
</html>