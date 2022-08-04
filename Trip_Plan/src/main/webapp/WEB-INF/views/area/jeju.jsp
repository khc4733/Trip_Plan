<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="contextPath" value="${pageContext.request.contextPath}" />
<%  request.setCharacterEncoding("UTF-8"); %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>jeju</title>
<link href="${contextPath}/resources/css/front.css" type="text/css"
	rel="stylesheet">
</head>
<body>
	<!-- top menu -->
	<div>
		<jsp:include page="../common/topmenu.jsp" />
	</div>
	<!-- side menu -->
	<div>
		<jsp:include page="../common/sidemenu.jsp" />
	</div>
	<!-- 본문 내용 -->

	<div class="area_centered">
		<h1>제주 테마코스</h1>
		<hr class="area_hr-solid">
	</div>
	<div class="area_centered">
		<!-- jeju1 시작 -->
		<div style="border: 1px solid #d6d4d4; float: left; width: 32%;">
			<div id=a> <!-- 이미지 애니메이션 테스트 -->
				<a href="${contextPath}/contents/jeju/jeju1"> <img
					src="${contextPath}/resources/images/jeju1.jpg" width="100%"
					height="260px">
				</a>
			</div>
			<div class="area_course_title">
				<a href="${contextPath}/contents/jeju/jeju1"><p align="center"
						style="font-family: Tahoma; font-size: 20px; font-weight: bold; margin-top: 10px;">
						제주 사계해안도로, 바다와 산의 하모니에 홀릭하다!</p></a>
				<div class="hashtag" style="border-top: 1px solid #e6e6e6;">
					<a>#드라이브코스</a>&nbsp&nbsp<a>#당일치기여행&nbsp</a><a>#연인과함께&nbsp</a>
					<a>#해안도로&nbsp</a><a>#사진맛집</a>
				</div>
			</div>
			<div>
				<ol class="area_ol">
					<li><a href="${contextPath}/area/seoul">산방산</a></li>
					<li><a href="${contextPath}/area/incheon">용머리해안</a></li>
					<li><a href="${contextPath}/area/daejeon">사계해변</a></li>
					<li><a href="${contextPath}/area/daegu">사계 발자국화석 발견지</a></li>
					<li><a href="${contextPath}/area/busan">섯알오름</a></li>
					<li><a href="${contextPath}/area/busan">송악산</a></li>
				</ol>
			</div>
		</div>
		<!-- jeju1 끝 -->

		<!-- jeju2 시작 -->
		<div style="border: 1px solid #d6d4d4; float: left; width: 32%; margin-left: 2%">
			<div id=a> <!-- 이미지 애니메이션 테스트 -->
				<a href="${contextPath}/contents/jeju/jeju2"> <img
					src="${contextPath}/resources/images/jeju2.jpg" width="100%"
					height="260px">
				</a>
			</div>
			<div class="area_course_title">
				<a href="${contextPath}/contents/jeju/jeju2">
					<p align="center" style="font-family: Tahoma; font-size: 20px; font-weight: bold; margin-top: 10px;">
					놀멍쉬멍 제주 바다 구경떠나기</p>
				</a>
				<div class="hashtag" style="border-top: 1px solid #e6e6e6;">
					<a>#나들이&nbsp</a><a>#사계절&nbsp</a><a>#휴양여행&nbsp</a><br>
					<a>#바다풍경&nbsp</a> <a>#가족과함께&nbsp</a><a>#당일코스</a><br>
					<a>#데이트코스&nbsp</a> <a>#산책하기&nbsp</a><a>#힐링코스&nbsp</a>
				</div>
			</div>
			<div>
				<ol class="area_ol">
					<li><a href="${contextPath}/area/seoul">사라봉공원</a></li>
					<li><a href="${contextPath}/area/incheon">관덕정</a></li>
					<li><a href="${contextPath}/area/daejeon">용두암</a></li>
					<li><a href="${contextPath}/area/daegu">어영소공원</a></li>
				</ol>
			</div>
		</div>
		<!-- jeju2 끝 -->

		<!-- jeju3 시작 -->
		<div style="border: 1px solid #d6d4d4; float: right; width: 32%;">
			<div id=a> <!-- 이미지 애니메이션 테스트 -->
				<a href="${contextPath}/contents/jeju/jeju3"> <img
					src="${contextPath}/resources/images/jeju3.jpg" width="100%"
					height="260px">
				</a>
			</div>
			<div class="area_course_title">
				<a href="${contextPath}/contents/jeju/jeju3">
					<p align="center"
						style="font-family: Tahoma; font-size: 20px; font-weight: bold; margin-top: 10px;">
						제주의 특별한 카페찾아가기</p>
				</a>
				<div class="hashtag" style="border-top: 1px solid #e6e6e6;">
					<a>#친환경농산물&nbsp</a><a>#제주카페&nbsp</a><a>#서귀포카페&nbsp</a><br>
					<a>#당일코스&nbsp</a><a>#힐링여행</a><a>#데이트코스</a>
				</div>
			</div>
			<div>
				<ol class="area_ol">
					<li><a href="${contextPath}/area/seoul">와랑와랑</a></li>
					<li><a href="${contextPath}/area/incheon">제주허브동산</a></li>
					<li><a href="${contextPath}/area/daejeon">제주민속촌</a></li>
					<li><a href="${contextPath}/area/daegu">돌토고리족욕카페</a></li>
				</ol>
			</div>
		</div>
		<!-- jeju3 끝 -->
	</div>


	<!-- footer -->
	<div>
		<jsp:include page="../common/footer.jsp" />
	</div>
</body>
</html>