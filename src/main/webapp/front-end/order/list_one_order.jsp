<%@ page contentType="text/html; charset=UTF-8" pageEncoding="Big5"%>
<%@ page import="com.fitanywhere.order.model.*"%>

<%
OrderVO orderVO = (OrderVO) request.getAttribute("orderVO"); //EmpServlet.java(Concroller), �s�Jreq��empVO����
%>


<html>
<head>
<title>�q���� - listOneOrder.jsp</title>
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
		<tr>
			<td>
				<h3>�q���� - listOneOrder.jsp</h3>
				<h4>
					<a href="select_page.jsp"><img src="images/back1.gif"
						width="100" height="32" border="0">�^����</a>
				</h4>
			</td>
		</tr>
	</table>

	<table>
		<tr>
			<th>�ҵ{�q��ID</th>
			<th>�ҵ{�q��ɶ�</th>
			<th>�ʶR�H</th>
			<th>��������ɶ�</th>
			<th>������A</th>
			<th>�q���`���B</th>
			<th>�u�f����ID</th>

		</tr>
		<tr>
			<td><%=orderVO.getOdId()%></td>
			<td><%=orderVO.getOdCreateDate()%></td>
			<%-- 		<td><%=orderVO.getUId()%></td> --%>
			<td><%=(orderVO.getUser() != null) ? orderVO.getUser().getuId() : ""%></td>

			<td><%=orderVO.getOdEndDate()%></td>
			<td><%=orderVO.getOdStatus()%></td>
			<td><%=orderVO.getOdPrice()%></td>
			<%-- 		<td><%=orderVO.getDcId()%></td> --%>
			<td><%=(orderVO.getDc() != null) ? orderVO.getDc().getDcId() : ""%></td>

		</tr>
	</table>

</body>
</html>