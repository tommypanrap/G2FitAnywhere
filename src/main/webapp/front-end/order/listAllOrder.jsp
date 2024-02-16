<%@ page contentType="text/html; charset=UTF-8" pageEncoding="Big5"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page import="java.util.*"%>
<%@ page import="com.fitanywhere.order.model.*"%>
<%@ page import="com.fitanywhere.user.model.*"%>
<%@ page import="com.fitanywhere.discount.model.*"%>
<%-- �����m�߱ĥ� EL ���g�k���� --%>

<%
OrderService odSvc = new OrderService();
List<OrderVO> list = odSvc.getAll();
pageContext.setAttribute("list", list);
%>


<html>
<head>
<meta charset="BIG5">
<title>�Ҧ��ҵ{�q���� - listAllOrder.jsp</title>

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
<h4>�����m�߱ĥ� EL ���g�k����:</h4>
<table id="table-1">
	<tr><td>
		 <h3>�Ҧ��ҵ{�q���� - listAllOrder.jsp</h3>
		 <h4><a href="select_page.jsp"><img src="images/back1.gif" width="100" height="32" border="0">�^����</a></h4>
	</td></tr>
</table>

<table>
	<tr>
		<th>�ҵ{�q��s��</th>
		<th>�ҵ{�q��ɶ�</th>
		<th>�ʶR�H</th>
		<th>��������ɶ�</th>
		<th>������A</th>
		<th>�q���`���B</th>
		<th>�u�f����ID</th>

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
			     <input type="submit" value="�ק�">
			     <input type="hidden" name="od_id"  value="${orderVO.odId}">
			     <input type="hidden" name="action"	value="getOne_For_Update"></FORM>
			</td>
			<td>
			  <FORM METHOD="post" ACTION="<%=request.getContextPath()%>/order/order.do" style="margin-bottom: 0px;">
			     <input type="submit" value="�R��">
			     <input type="hidden" name="od_id"  value="${orderVO.odId}">
			     <input type="hidden" name="action" value="delete"></FORM>
			</td>
		</tr>
	</c:forEach>
</table>
<%@ include file="page2.file" %>

</body>
</html>