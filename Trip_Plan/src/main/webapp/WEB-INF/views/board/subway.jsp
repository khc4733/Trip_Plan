<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link href="${contextPath}/resources/css/front.css" type="text/css" rel="stylesheet">
<title>notice</title>
</head>
<body>
	<jsp:include page="../common/topmenu.jsp" flush="false" />

	<jsp:include page="../board/sbwsub.jsp" />

	<!-- 본문 -->
	<div id="sub_seoul">
		<div class="sub_img">
			<img src="${contextPath}/resources/images/subway_se.jpg">
		</div>
	</div>
	<!--푸터-->
	<jsp:include page="../common/footer.jsp" />
</body>
</html>