<%@ page contentType="text/html; charset=UTF-8" pageEncoding="Big5"%>
<%@ page import="com.fitanywhere.order.model.*"%>

<%
OrderVO orderVO = (OrderVO) request.getAttribute("orderVO"); //EmpServlet.java(Concroller), 存入req的empVO物件
%>


<html>
<head>
<title>訂單資料 - listOneOrder.jsp</title>
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

	<h4>此頁暫練習採用 Script 的寫法取值:</h4>
	<table id="table-1">
		<tr>
			<td>
				<h3>訂單資料 - listOneOrder.jsp</h3>
				<h4>
					<a href="select_page.jsp"><img src="images/back1.gif"
						width="100" height="32" border="0">回首頁</a>
				</h4>
			</td>
		</tr>
	</table>

	<table>
		<tr>
			<th>課程訂單ID</th>
			<th>課程訂單時間</th>
			<th>購買人</th>
			<th>交易完成時間</th>
			<th>交易狀態</th>
			<th>訂單總金額</th>
			<th>優惠活動ID</th>

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