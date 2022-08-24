<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
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
	<div id="sub_busan">
		<h4>부산</h4>
		<div class="sub_img">
			<img src="">
		</div>
	</div>
	<!--푸터-->
	<jsp:include page="../common/footer.jsp" />
</body>
</html>