<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c"  uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="contextPath" value="${pageContext.request.contextPath}"/>
<%  request.setCharacterEncoding("UTF-8"); %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>seoul</title>
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
        <div id="main_img--seoul1">
          <a href="${contextPath}/contents/seoul/seoul1">
            <img src="${contextPath}/resources/images/seoul1.jpg" width="25%" height="200px"> 
          </a>
        </div>
        
        <div id="main_img--seoul2">
          <a href="${contextPath}/contents/seoul/seoul2">
            <img src="${contextPath}/resources/images/seoul2.jpg" width="25%" height="200px"> 
          </a>
        </div>
        
        <div id="main_img--seoul3">
          <a href="${contextPath}/contents/seoul/seoul3">
            <img src="${contextPath}/resources/images/seoul3.jpg" width="25%" height="200px"> 
          </a>
        </div>
    </div>
    

<!-- footer -->
	 <div>
	 <jsp:include page="../common/footer.jsp"/>
	 </div>
</body>
</html>