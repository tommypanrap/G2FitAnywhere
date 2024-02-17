
<%@ page language="java" contentType="text/html; charset=BIG5"
	pageEncoding="BIG5"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page import="com.fitanywhere.adcarouselorder.model.*"%>
<%@ page import="com.fitanywhere.adrecommandorder.model.*"%>
<%@ page import="com.fitanywhere.ad.model.*"%>
<%@ page import="com.fitanywhere.user.model.*"%>
<%@ page import="com.fitanywhere.course.model.*"%>
<%@ page import="com.fitanywhere.addate.model.*"%>

<%
// AdCarouselOrderVO adcVO = (AdCarouselOrderVO) request.getAttribute("adcVO");
%>

<html>
<head>
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
<title>�s�i��ƭק�</title>

<style>
table#table-1 {
	width: 450px;
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
				<h3>���u��ƭק�</h3>
				<h4>
					<a href="select_page.jsp"><img src="images/back1.gif" width="100" height="32" border="0">�^����</a>
				</h4>
			</td>
		</tr>
	</table>

	<h3>��ƭק�:</h3>
	<!-- 	���~��C -->
	<c:if test="${not empty errorMsgs}">
		<font style="color: red">�Эץ��H�U���~:</font>
		<ul>
			<c:forEach var="message" items="${errorMsgs}">
				<li style="color: red">${message.value}</li>
			</c:forEach>
		</ul>
	</c:if>

	<FORM METHOD="post" ACTION="Adc.do" name="form1" enctype="multipart/form-data">

		<table>
			<tr>
				<td>�����s�i�s��:</td>
				<td><input type="TEXT" name="adcId" 
				value="${param.adcId}" size="45" /></td>
			</tr>
			
			<tr>
				<td>�s�i�s��:</td>
				<td><input type="TEXT" name="adId"
					value="${param.adId}" size="45" /></td>
			</tr>
			
			<tr>
				<td>�ʶR�H�s��:</td>
				<td><input type="TEXT" name="uId"
					value="${param.uId}" size="45" /></td>
			</tr>
			

			<tr>
				<td>�Q�s�i���ҵ{�s��:</td>
				<td><input type="TEXT" name="crId"
					value="${param.crId}"  size="45" /></td>
			</tr>


			<tr>
				<td>�s�i�}�l���:</td>
				<td><input type="TEXT" name="adcStartDate"
					value="${param.adcStartDate}" size="45" /></td>
			</tr>

			<tr>
				<td>�s�i�������:</td>
				<td><input type="TEXT" name="adcEndDate"
					value="${param.adcEndDate}" size="45" /></td>
			</tr>

			<tr>
				<td>�s�i����:</td>
				<td><input type="TEXT" name="adcTotalPrice"
				value="${param.adcTotalPrice}"  size="45" /></td>
			</tr>

			<tr>
				<td>�s�i�Ϥ�:</td>
				<td><input type="file" name="adcUpdatePic" /></td>
			</tr>

			<tr>
				<td>�s�i���A:</td>
				<td><input type="TEXT" name="adcStatus"
				value="${param.adcStatus}" /></td>
			</tr>

			<tr>
				<td>�s�i��ڵ������:</td>
				<td><input type="TEXT" name="adcOrderEnddate"
				value="${param.adcOrderEnddate}" size="45" /></td>
			</tr>
		</table>
		

		<br>
	    <input type="hidden" name="action" value="update">
    	<input type="hidden" name="adc_id" value="${param.adcId}">
    	<input type="submit" value="�e�X�ק�">

	</FORM>

</body>
</html>