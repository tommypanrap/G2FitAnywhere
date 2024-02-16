<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>課程測試</title>

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

<table id="table-1">
   <tr><td><h3>Fitanywhere 課程: Home</h3><h4>( MVC )</h4></td></tr>
</table>

<h3>資料查詢:</h3>
	
<%-- 錯誤表列 --%>
<c:if test="${not empty errorMsgs}">
	<font style="color:red">請修正以下錯誤:</font>
	<ul>
		<c:forEach var="message" items="${errorMsgs}">
			<li style="color:red">${message}</li>
		</c:forEach>
	</ul>
</c:if>

<ul>
  <li><a href='listAllCourse.jsp'>List</a> all Course    <h4>(byDAO).         </h4></li>
  
 <li>
    <FORM METHOD="post" ACTION="course.do" >
        <b>輸入課程ID :</b>
        <input type="text" name="crId">
        <input type="hidden" name="action" value="getOneCourse">
        <input type="submit" value="送出">                   <h4>(資料格式驗證  by Controller ).</h4> 
    </FORM>
  </li>
  

<jsp:useBean id="coursehibernate" scope="page" class="com.fitanywhere.course.model.CourseHibernate" />
   
  <li>
     <FORM METHOD="post" ACTION="course.do" >
       <b>選擇課程ID:</b>
       <select size="1" name="crId">
         <c:forEach var="courseVO" items="${coursehibernate.all}" > 
          <option value="${courseVO.crId}">${courseVO.crId}</option>
         </c:forEach>   
       </select>
       <input type="hidden" name="action" value="getOneCourse">
       <input type="submit" value="送出">
    </FORM>
  </li>
  
  <li>
     <FORM METHOD="post" ACTION="course.do" >
       <b>選擇課程名字:</b>
       <select size="1" name="crId">
         <c:forEach var="courseVO" items="${coursehibernate.all}" > 
          <option value="${courseVO.crId}">${courseVO.crTitle}</option>
         </c:forEach>   
       </select>
       <input type="hidden" name="action" value="getOneCourse">
       <input type="submit" value="送出">
     </FORM>
  </li>
</ul>


</body>
</html>