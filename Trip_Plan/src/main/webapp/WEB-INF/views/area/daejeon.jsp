<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c"  uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="contextPath" value="${pageContext.request.contextPath}"/>
<%  request.setCharacterEncoding("UTF-8"); %>  
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>daejeon</title>
<style>
        body {
            margin-left:50px;
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

<!-- footer -->
     <div>
        <jsp:include page="../common/footer.jsp"/>
    </div>
</body>
