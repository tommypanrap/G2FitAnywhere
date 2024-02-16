<%@ page contentType="text/html; charset=UTF-8" pageEncoding="Big5"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page import="java.util.*"%>
<%@ page import="com.fitanywhere.order.model.*"%>
<%@ page import="com.fitanywhere.user.model.*"%>
<%@ page import="com.fitanywhere.discount.model.*"%>
<%-- 此頁練習採用 EL 的寫法取值 --%>

<%
OrderService odSvc = new OrderService();
List<OrderVO> list = odSvc.getAll();
pageContext.setAttribute("list", list);
%>


<html>
<head>
<meta charset="BIG5">
<title>所有課程訂單資料 - listAllOrder.jsp</title>

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
		 <h3>所有課程訂單資料 - listAllOrder.jsp</h3>
		 <h4><a href="select_page.jsp"><img src="images/back1.gif" width="100" height="32" border="0">回首頁</a></h4>
	</td></tr>
</table>

<table>
	<tr>
		<th>課程訂單編號</th>
		<th>課程訂單時間</th>
		<th>購買人</th>
		<th>交易完成時間</th>
		<th>交易狀態</th>
		<th>訂單總金額</th>
		<th>優惠活動ID</th>

	</tr>
	<%@ include file="page1.file" %> 
	
	
	<c:forEach var="orderVO" items="${list}" begin="<%=pageIndex%>" end="<%=pageIndex+rowsPerPage-1%>">
		
		<tr>
			<td>${orderVO.odId}</td>
			<td>${orderVO.odCreateDate}</td>
<%-- 			<td>${orderVO.user.uId}</td> --%>
			<td>${(orderVO.user.uId ne null) ? orderVO.user.uId : ''}</td>
			
			<td>${orderVO.odEndDate}</td>
			<td>${orderVO.odStatus}</td>
			<td>${orderVO.odPrice}</td> 
<%-- 			<td>${orderVO.dc.dcId}</td> --%>
			<td>${(orderVO.dc.dcId ne null) ? orderVO.dc.dcId : ''}</td>
			
			<td>
			  <FORM METHOD="post" ACTION="<%=request.getContextPath()%>/order/order.do" style="margin-bottom: 0px;">
			     <input type="submit" value="修改">
			     <input type="hidden" name="od_id"  value="${orderVO.odId}">
			     <input type="hidden" name="action"	value="getOne_For_Update"></FORM>
			</td>
			<td>
			  <FORM METHOD="post" ACTION="<%=request.getContextPath()%>/order/order.do" style="margin-bottom: 0px;">
			     <input type="submit" value="刪除">
			     <input type="hidden" name="od_id"  value="${orderVO.odId}">
			     <input type="hidden" name="action" value="delete"></FORM>
			</td>
		</tr>
	</c:forEach>
</table>
<%@ include file="page2.file" %>

</body>
</html>