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
 .container {
	 margin-bottom: 500px;
	 width: 500px;
	 text-align: center;
 }
</style>
</head>
<body>
<!-- 메뉴바 -->
<jsp:include page="../common/topmenu.jsp" flush="false"/>

<!-- 사이드 메뉴 바 -->
<jsp:include page="../mypage/myside.jsp"/>
	
	<div class="container">
   		<h4>${member.nname}님</h4>
	</div>  
	
	
	
	
	
	
<!-- footer --> 
<jsp:include page="../common/footer.jsp" flush="false"/>

</body>
</html>