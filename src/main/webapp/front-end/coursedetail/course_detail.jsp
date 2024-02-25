<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>課程詳細資料</title>
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
   <tr><td><h3>Fitanywhere 課程詳細資料: Home</h3><h4>( MVC )</h4></td></tr>
</table>

<h3>課程詳細資料查詢:</h3>
	
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
  <li>
  <FORM METHOD="post" ACTION="<%= request.getContextPath()%>/front-end/coursedetail/coursedetail.do" >
        <b>所有課程 :</b>
        <input type="hidden" name="action" value="getAll">
        <input type="submit" value="搜尋">                 
    </FORM>
    </li>
  
 <li>
    <FORM METHOD="post" ACTION="<%= request.getContextPath() %>/front-end/coursedetail/coursedetail.do" >
        <b>輸入課程詳細資料ID :</b>
        <input type="text" name="cdId">
        <input type="hidden" name="action" value="getOneCourseDetail">
        <input type="submit" value="送出">                   <h4>(資料格式驗證  by Controller ).</h4> 
    </FORM>
  </li>
  

<jsp:useBean id="coursedetailhibernate" scope="page" class="com.fitanywhere.coursedetail.model.CourseDetailDAOImpl" />
   
  <li>
     <FORM METHOD="post" ACTION="<%= request.getContextPath() %>/front-end/coursedetail/coursedetail.do" >
       <b>選擇課程ID:</b>
       <select size="1" name="crId">
         <c:forEach var="coursedetailVO" items="${coursehibernate.all}" > 
          <option value="${coursedetailVO.cdId}">${coursedetailVO.cdId}</option>
         </c:forEach>   
       </select>
       <input type="hidden" name="action" value="getOneCourseDetail">
       <input type="submit" value="送出">
    </FORM>
  </li>
  
  <li>
     <FORM METHOD="post" ACTION="coursedetail.do" >
       <b>選擇課程ID:</b>
       <select size="1" name="cdId">
         <c:forEach var="coursedetailVO" items="${coursehibernate.all}" > 
          <option value="${coursedetailVO.cdId}">${coursedetailVO.crId}</option>
         </c:forEach>   
       </select>
       <input type="hidden" name="action" value="getOneCourseDetail">
       <input type="submit" value="送出">
     </FORM>
  </li>
</ul>

<h3>課程管理</h3>

<ul>
  <li><a href='<%= request.getContextPath() %>/front-end/coursedetail/add_coursedetail.jsp'>新增課程詳細資料測試</a></li>
</ul>

</body>
</html>