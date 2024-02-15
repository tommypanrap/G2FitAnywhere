<%@ page contentType="text/html; charset=UTF-8" pageEncoding="Big5"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ page import="com.fitanywhere.adcarouselorder.model.*"%>
<%@ page import="com.fitanywhere.adrecommandorder.model.*"%>
<%@ page import="com.fitanywhere.ad.model.*"%>
<%@ page import="com.fitanywhere.user.model.*"%>
<%@ page import="com.fitanywhere.course.model.*"%>
<%@ page import="com.fitanywhere.addate.model.*"%>
<%@ page import="java.util.*"%>

<%

AdCarouselOrderService adcSvc = new AdCarouselOrderService();
List<AdCarouselOrderVO> list = adcSvc.getAll();
pageContext.setAttribute("list", list);

%>

<html>
<head>
<title>�Ҧ������s�i�q��</title>

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

img {
	max-width: 100%;
	max-height: 100%;
}
</style>

</head>
<body bgcolor='white'>
	<table id="table-1">
		<tr>
			<td>
				<h3>�Ҧ������s�i���</h3>
				<h4>
					<a href="select_page.jsp"><img src="images/back1.gif" width="100" height="32" border="0">�^����</a>
				</h4>
			</td>
		</tr>
	</table>

	<table>
		<tr>
			<th>�����s�i�s��</th>
			<th>�s�i�s��</th>
			<th>�ʶR�H</th>
			<th>�Q��񪺼s�i�ҵ{</th>
			<th>�s�i�}�l�ɶ�</th>
			<th>�s�i�����ɶ�</th>
			<th>�s�i�`��O���B</th>
			<th>�s�i��ڵ����ɶ�</th>
			<th>�s�i�v���Y��</th>
			<th>�ק�</th>
			<th>�R��</th>
		</tr>

		<%@ include file="page1.file"%>
		<c:forEach var="adcVO" items="${list}"> 
			<tr>
				<td>${adcVO.adcId}</td>
				<td>${adcVO.ad.adId}</td>
				<td>${adcVO.user.uId}</td>	
				<td>${adcVO.course.crId}</td>
				<td>${adcVO.adcStartDate}</td>
				<td>${adcVO.adcEndDate}</td>
				<td>${adcVO.adcTotalPrice}</td>
				<td>${adcVO.adcOrderEnddate}</td>
				<td><img
					src="data:image/jpeg;base64,${fn:escapeXml(Base64.getEncoder().encodeToString(adcVO.adcUpdatePic))}"
					alt="Ad Image"></td>

				<td>
					<FORM METHOD="post" ACTION="Adc.do"
						style="margin-bottom: 0px;  enctype="multipart/form-data">
						<input type="submit" value="�ק�">
						 <input type="hidden" name="adcId" value="${adcVO.adcId}"> 
						<input type="hidden" name="action" value="getOne_For_Update">
					</FORM>
				</td>
				<td>
					<FORM METHOD="post"
						ACTION="Adc.do"
						style="margin-bottom: 0px;">
						<input type="submit" value="�R��"> <input type="hidden"
							name="empno" value="${adcVO.adcId}"> <input type="hidden"
							name="action" value="delete">
					</FORM>
				</td>
			</tr>
		</c:forEach>
	</table>
	<%@ include file="page2.file"%>

</body>
</html>