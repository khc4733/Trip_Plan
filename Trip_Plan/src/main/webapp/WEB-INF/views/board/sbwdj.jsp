<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="contextPath" value="${pageContext.request.contextPath}" />		
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="${contextPath}/resources/css/front.css" type="text/css"
	rel="stylesheet">
</head>
<body>
	<jsp:include page="../common/topmenu.jsp" flush="false" />

	<jsp:include page="../board/sbwsub.jsp" />

	<!-- 본문 -->
	<div id="sub_main">
		<div class="sub_imgframe">
			<img class="sub_img" src="${contextPath}/resources/images/subway_dj.jpg">
		</div>
	</div>
	<!--푸터-->
	<jsp:include page="../common/footer.jsp" />
</body>
</html>