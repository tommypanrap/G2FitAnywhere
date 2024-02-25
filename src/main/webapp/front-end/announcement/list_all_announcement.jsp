<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page import="java.util.*"%>
<%@ page import="com.fitanywhere.announcement.model.*"%>

<%-- 此頁練習採用 EL 的寫法取值 --%>

<%
	AnnouncementService aSvc = new AnnouncementService();
    List<AnnouncementVO> list = aSvc.getAll();
    pageContext.setAttribute("list",list);
%>


<html>
<head>
<title>所有員工資料 - listAllEmp.jsp</title>

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

<h4>此頁練習採用 EL 的寫法取值:</h4>
<table id="table-1">
	<tr><td>
		 <h3>所有課程公告資料 - listAllAnnouncement.jsp</h3>
		 <h4><a href="announcement_page.jsp"><img src="images/back1.gif" width="100" height="32" border="0">回首頁</a></h4>
	</td></tr>
</table>

<table>
	<tr>
		<th>課程公告編號</th>
		<th>課程編號</th>
		<th>公告時間</th>
		<th>公告更新時間</th>
		<th>公告標題</th>
		<th>公告內容</th>
		<th>修改</th>
		<th>刪除</th>
	</tr>
	<%-- <%@ include file="page1.file" %>  --%>
	<%-- begin="<%=pageIndex%>" end="<%=pageIndex+rowsPerPage-1%>" --%>
	<c:forEach var="announcementVO" items="${list}" >
		<tr>
			<td>${announcementVO.anId}</td>
			<td>${announcementVO.crId}</td>
			<td>${announcementVO.anDate}</td>
			<td>${announcementVO.anEditDate}</td>
			<td>${announcementVO.anTitle}</td>
			<td>${announcementVO.anContent}</td> 
			<td>
			  <FORM METHOD="post" ACTION="announcement.do" style="margin-bottom: 0px;">
			     <input type="submit" value="修改">
			     <input type="hidden" name="anId"  value="${announcementVO.anId}">
			     <input type="hidden" name="action"	value="getOne_For_Update"></FORM>
			</td>
			<td>
			  <FORM METHOD="post" ACTION="<%=request.getContextPath()%>/Announcement/announcement.do" style="margin-bottom: 0px;">
			     <input type="submit" value="刪除">
			     <input type="hidden" name="anId"  value="${announcementVO.anId}">
			     <input type="hidden" name="action" value="delete"></FORM>
			</td>
		</tr>
	</c:forEach>
</table>
<%-- <%@ include file="page2.file" %> --%>

</body>
</html>