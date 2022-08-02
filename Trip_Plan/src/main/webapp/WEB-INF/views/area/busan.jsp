<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c"  uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="contextPath" value="${pageContext.request.contextPath}"/>
<%  request.setCharacterEncoding("UTF-8"); %>  
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>busan</title>
<style>
        body {
        text-align: center;
            margin-left:200px;
            margin-right:50px;
        }
</style>
</head>
<body>
<!-- top menu -->
     <div>
        <jsp:include page="../common/topmenu.jsp"/>
    </div>
<!-- side menu -->
     <div>
        <jsp:include page="../common/sidemenu.jsp"/>
    </div>
<!-- 본문 내용 -->    
<div class="main_container">
    <div id="main_img--busan1">
          <a href="${contextPath}/contents/busan/busan1">
            <img src="${contextPath}/resources/images/busan1.jpg" width="25%" height="200px"> 
          </a>
        </div>
        
        <div id="main_img--busan2">
          <a href="${contextPath}/contents/busan/busan2">
            <img src="${contextPath}/resources/images/busan2.jpg" width="25%" height="200px"> 
          </a>
        </div>
    </div>
<!-- footer -->
     <div>
        <jsp:include page="../common/footer.jsp"/>
    </div>
</body>