<%@ page contentType="text/html; charset=UTF-8" pageEncoding="Big5"%>
<%@ page import="com.fitanywhere.announcement.model.*"%>
<%-- �����Ƚm�߱ĥ� Script ���g�k���� --%>

<%
  AnnouncementVO announcementVO = (AnnouncementVO) request.getAttribute("announcementVO"); //EmpServlet.java(Concroller), �s�Jreq��empVO����
%>

<html>
<head>
<title>�ҵ{���i��� - listOneAnnouncement.jsp</title>

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

<h4>�����Ƚm�߱ĥ� Script ���g�k����:</h4>
<table id="table-1">
	<tr><td>
		 <h3>�ҵ{���i��� - listOneAnnouncement.jsp</h3>
		 <h4><a href="announcement_page.jsp"><img src="images/back1.gif" width="100" height="32" border="0">�^����</a></h4>
	</td></tr>
</table>

<table>
	<tr>
		<th>�ҵ{���i�s��</th>
		<th>�ҵ{�s��</th>
		<th>���i�ɶ�</th>
		<th>���i��s�ɶ�</th>
		<th>���i���D</th>
		<th>���i���e</th>
	</tr>
	<tr>
		<td><%=announcementVO.getAnId()%></td>
		<td><%=announcementVO.getCrId()%></td>
		<td><%=announcementVO.getAnDate()%></td>
		<td><%=announcementVO.getAnEditDate()%></td>
		<td><%=announcementVO.getAnTitle()%></td>
		<td><%=announcementVO.getAnContent()%></td>
	</tr>
</table>

</body>
</html>