<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c"   uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt"   uri="http://java.sun.com/jsp/jstl/fmt"  %>
<c:set var="contextPath" value="${pageContext.request.contextPath}"/>
<%  request.setCharacterEncoding("UTF-8"); %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>summary</title>	
<style>

</style>
<link href="${pageContext.request.contextPath}/resources/css/front.css"
	type="text/css" rel="stylesheet">
</head>
<body>
<!-- 메뉴바 -->
<jsp:include page="../common/topmenu.jsp" flush="false"/>

<!-- 사이드 메뉴 바 -->
<jsp:include page="../mypage/myside.jsp"/>
	
<img src="${contextPath}/resources/images/profile.jpg" width="150"><br/>	  
<div class="card">           
    <form action="/mypage/updateImg" method="post" enctype="multipart/form-data">
        <input type="file" name="file">
        <input type="hidden" name="memberId" id="memberId" value="${member.id}">
        <button type="submit" class="btn-sm btn-primary">사진변경</button>
	</form>
</div>

<!-- footer --> 
<jsp:include page="../common/footer.jsp" flush="false"/>

</body>
</html>