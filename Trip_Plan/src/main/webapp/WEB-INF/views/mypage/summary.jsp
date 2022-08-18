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
	

  <form id="profileUpdate" action="/mypage/summary" method="post" enctype="multipart/form-data">
	<div class="container" style="margin-left:75px;">${member.nname} 님</div>
	<br/>
	<div class="content-item">
		<div class="item">프로필 사진</div>
		<div class="item-input">
		<img src="${contextPath}/resources/images/profile.jpg" width="150"> 
			<input class="update" type="file" name="profileImg" id="profileImg">
		</div>
	</div>
</form>

<!-- footer --> 
<jsp:include page="../common/footer.jsp" flush="false"/>

</body>
</html>