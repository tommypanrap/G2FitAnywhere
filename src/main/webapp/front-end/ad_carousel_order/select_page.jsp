<%@ page contentType="text/html; charset=UTF-8" pageEncoding="BIG5"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<html>
<head>
<title>AdCarousel Order: Home</title>

<style>
table#table-1 {
	width: 450px;
	background-color: #CCCCFF;
	margin-top: 5px;
	margin-bottom: 10px;
	border: 3px ridge Gray;
	height: 80px;
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
</head>

<body bgcolor='white'>

	<table id='table-1'>
		<tr>
			<td><h3>�o�O�s�i�q��d�߭���: Home</h3><h4>Hibernate</h4></td>
		</tr>
	</table>
	<h3>��Ƭd��:</h3>
	<c:if test="${not empty errorMsgs}">
		<font style="color: red">�Эץ��H�U���~:</font>
		<ul>
			<c:forEach var="message" items="${errorMsgs}">
				<li style="color: red">${message.value}</li>
			</c:forEach>
		</ul>
	</c:if>

	<ul>
		<li><a href='listAllAdc.jsp'>List</a> all AdCarousel Order <br>
			<br></li>

		<li><form method="post" action="Adc.do">
				<b>��J�s�i�q��s��(�p1):</b> <input type="text" name="adcId"
					value="${param.adcId}"> <font color="red">${errorMsgs.adcId}</font>
				<input type="hidden" name="action" value="getOneForDisplay">
				<input type="submit" value="�e�X">
			</form></li>

		<jsp:useBean id="adcSvc" scope="page"
			class="com.fitanywhere.adcarouselorder.model.AdCarouselOrderService" />

		<li>
			<FORM method="post" action="Adc.do">
				<b>��ܼs�i�q��s��:</b> <select size="1" name="adcId">
					<c:forEach var="adcVO" items="${dao.all}">
						<option value="${adcSvc.adcId}">${adcSvc.adcId}
					</c:forEach>
				</select> <input type="hidden" name="action" value="getOneForDisplay">
				<input type="submit" value="�e�X">
			</form>

		</li>
		<li>
			<form method="post" action="Adc.do">
				<b>��ܼs�i�q��s��:</b> <select size="1" name="adcId">
					<c:forEach var="adcVO" items="${dao.all}">
						<option value="${adcSvc.adcId}">${adcSvc.adcId}</option>
					</c:forEach>
				</select> <input type="hidden" name="action" value="getOneForDisplay">
				<input type="submit" value="�e�X">
			</form>
		</li>
	</ul>

	<h3>�s�i�q��޲z</h3>

	<ul>
		<li><a href='addAdc.jsp'>Add</a> a new ad.</li>
	</ul>


</body>
</html>