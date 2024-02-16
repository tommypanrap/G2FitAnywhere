<%@ page contentType="text/html; charset=UTF-8" pageEncoding="Big5"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page import="com.fitanywhere.order.model.*"%>

<%
//��com.emp.controller.EmpServlet.java��238��s�Jreq��empVO���� (������J�榡�����~�ɪ�empVO����)
OrderVO orderVO = (OrderVO) request.getAttribute("orderVO");
%>
--<%=orderVO == null%>--${empVO.deptno}--
<!-- line 100 -->

<html>
<head>
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
<title>�ҵ{�q���Ʒs�W - addOrder.jsp</title>
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
	width: 450px;
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
				<h3>�ҵ{�q���Ʒs�W - addOrder.jsp</h3>
			</td>
			<td>
				<h4>
					<a href="select_page.jsp"><img src="images/tomcat.png"
						width="100" height="100" border="0">�^����</a>
				</h4>
			</td>
		</tr>
	</table>
	<h3>��Ʒs�W:</h3>

	<%-- ���~��C --%>
	<c:if test="${not empty errorMsgs}">
		<font style="color: red">�Эץ��H�U���~:</font>
		<ul>
			<c:forEach var="message" items="${errorMsgs}">
				<li style="color: red">${message}</li>>
		</c:forEach>
		</ul>
	</c:if>


	<FORM METHOD="post" ACTION="order.do" name="form1">
		<table>
			<tr>
				<td>�ʶR�HID�G</td>
				<td><input type="TEXT" name="u_id"
					value="<%=(orderVO == null) ? "101" : orderVO.getUser().getuId()%>" size="45" /></td>

				
			</tr>

			<tr>
				<td>������A�G</td>
				<td><input type="TEXT" name="od_status"
					value="<%=(orderVO == null) ? "3" : orderVO.getOdStatus()%>"
					size="45" /></td>

			</tr>

			<tr>
				<td>�ҵ{�q���`���B�G</td>
				<td><input type="TEXT" name="od_price"
					value="<%=(orderVO == null) ? "999" : orderVO.getOdPrice()%>"
					size="45" /></td>

			</tr>

			<tr>
				<td>�u�f����ID�G</td>
				<td><input type="TEXT" name="dc_id"
					value="<%=(orderVO == null) ? "1" : orderVO.getDc().getDcId()%>" /></td>
			</tr>

		</table>
		<br> <input type="hidden" name="action" value="insert" /> <input
			type="submit" value="�e�X�s�W" />
	</FORM>


</body>
</html>