<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<html>
<head>
<title>IBM Announcement: Home</title>

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
   <tr><td><h3>IBM Announcement: Home</h3><h4>( MVC )</h4></td></tr>
</table>

<p>This is the Home page for IBM Announcement : Home</p>

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
  <li><a href='list_all_announcement.jsp'>List</a> all Announcements.  <br><br></li>
  
  
  <li>
    <FORM METHOD="post" ACTION="announcement.do" >
        <b>輸入課程公告編號 (如aa7001):</b>
        <input type="text" name="anId">
        <input type="hidden" name="action" value="getOne_For_Display">
        <input type="submit" value="送出">
    </FORM>
  </li>

  <jsp:useBean id="announcementHibernate" scope="page" class="com.fitanywhere.announcement.model.AnnouncementHibernateDAOImpl" />
   
  <li>
     <FORM METHOD="post" ACTION="announcement.do" >
       <b>選擇課程公告編號:</b>
       <select size="1" name="anId"> 
         <c:forEach var="announcementVO" items="${announcementHibernateDAO.all}" > 
          <option value="${announcementVO.anId}">${announcementVO.anId}</option>
         </c:forEach>   
       </select>
       <input type="hidden" name="action" value="getOne_For_Display">
       <input type="submit" value="送出">
    </FORM>
  </li>
  
  <li>
     <FORM METHOD="post" ACTION="announcement.do" >
       <b>選擇課程編號:</b>
       <select size="1" name="anId">
         <c:forEach var="announcementVO" items="${announcementSvc.all}" > 
          <option value="${announcementVO.anId}">${announcementVO.crId}
         </c:forEach>   
       </select>
       <input type="hidden" name="action" value="getOne_For_Display">
       <input type="submit" value="送出">
     </FORM>
  </li>
</ul>


<h3>員工管理</h3>

<ul>
  <li><a href='addAnnouncement.jsp'>Add</a> a new Announcement.</li>
</ul>

</body>
</html>