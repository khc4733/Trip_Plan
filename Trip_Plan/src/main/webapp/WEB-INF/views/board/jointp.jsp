<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt"   uri="http://java.sun.com/jsp/jstl/fmt"  %>
<c:set var="contextPath" value="${pageContext.request.contextPath}" />
<%  request.setCharacterEncoding("UTF-8"); %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link href="${contextPath}/resources/css/front.css" type="text/css" rel="stylesheet">
<title>이용 방법</title>
</head>
<body>
     <div class="sub_menubar">
        <jsp:include page="../common/topmenu.jsp"/>
    </div>
	<!-- 본문 -->
	<div class="jo_container">
		<h1>[Trip Plan 이용 방법]</h1>
			<div class="jo_content" style="border-top: 1px solid #ccc;">
				<div class="jo01">
					<h2>Area</h2>
					<img src="${contextPath}/resources/images/area01.jpg">
					<p>1. 원하는 지역을 선택합니다</p>
					<img src="${contextPath}/resources/images/area02.jpg">
					<p>2. 원하는 코스 사진을 클릭합니다</p>
					<img src="${contextPath}/resources/images/area03.JPG">
					<p><br>3. 코스 별로 사진을 볼 수 있습니다</p>					
				</div>
				<div class="jo02">
					<h2>리뷰 게시판</h2>
					<img src="${contextPath}/resources/images/reviewimg.png">
					<p>	<br>1. 리뷰는 작성한 본인만 수정 및 삭제가 가능합니다.</p>
					<p>2. 조회수 순서대로 리뷰가 보입니다</p>
					<p>3. 제일 높은 조회 수를 기록한 리뷰는 메인페이지에 노출됩니다.</p>
				</div>
				
			</div>
	</div>
	
	<jsp:include page="../common/footer.jsp" flush="false"/>
</body>
</html>