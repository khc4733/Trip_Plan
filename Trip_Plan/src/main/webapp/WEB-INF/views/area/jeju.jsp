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
			<a href="${contextPath}/contents/jeju/jeju1"> <img
				src="${contextPath}/resources/images/jeju1.jpg" width="100%"
				height="260px">
			</a>
			<div class="area_course_title">
				<a href="${contextPath}/contents/jeju/jeju1"><p align="center"
						style="font-family: Tahoma; font-size: 20px; font-weight: bold; margin-top: 10px;">
						제주 사계해안도로, 바다와 산의 하모니에 홀릭하다!</p></a>
				<div class="hashtag">
					<a>#드라이브코스</a>&nbsp&nbsp<a>#당일치기여행&nbsp</a><a>#연인과함께&nbsp</a><a>#해안도로&nbsp</a><br>
					<a>#사진맛집</a><a>#자연속으로</a>
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
		<div
			style="border: 1px solid #d6d4d4; float: left; width: 32%; margin-left: 2%">
			<a href="${contextPath}/contents/jeju/jeju2"> <img
				src="${contextPath}/resources/images/jeju2.jpg" width="100%"
				height="260px">
			</a>
			<div class="area_course_title">
				<a href="${contextPath}/contents/jeju/jeju2">
					<p align="center" style="font-family: Tahoma; font-size: 20px; font-weight: bold; margin-top: 10px;">서울의 랜드마크를 만나다</p>
				</a>
				<div class="hashtag" style="border-top: 1px solid #e6e6e6;">
					<a>#Feel_the_rhythm_of_korea&nbsp</a><a>#가을여행코스&nbsp</a><br>
					<a>#데이트코스&nbsp</a> <a>#연인코스&nbsp</a><a>#1박2일</a>
				</div>
			</div>
			<div>
				<ol class="area_ol">
					<li><a href="${contextPath}/area/seoul">숭례문</a></li>
					<li><a href="${contextPath}/area/incheon">문화역 서울284</a></li>
					<li><a href="${contextPath}/area/daejeon">덕수궁</a></li>
					<li><a href="${contextPath}/area/daegu">서울광장</a></li>
					<li><a href="${contextPath}/area/busan">남산골 한옥마을</a></li>
					<li><a href="${contextPath}/area/gwangju">남산 서울타워</a></li>
				</ol>
			</div>
		</div>
		<!-- jeju2 끝 -->

		<!-- jeju3 시작 -->
		<div style="border: 1px solid #d6d4d4; float: right; width: 32%;">
			<a href="${contextPath}/contents/jeju/jeju3"> <img
				src="${contextPath}/resources/images/jeju3.jpeg" width="100%"
				height="260px">
			</a>
			<div class="area_course_title">
				<a href="${contextPath}/contents/jeju/jeju3">
					<p align="center"
						style="font-family: Tahoma; font-size: 20px; font-weight: bold; margin-top: 10px;">서촌에서
						즐기는 즐거운 맛산책</p>
				</a>
				<div class="hashtag">
					<a>#갤러리팔레드서울&nbsp</a><a>#도심여행&nbsp</a><a>#데이트코스&nbsp</a><br> <a>#미술관&nbsp</a><a>#북촌한옥마을</a>
				</div>
			</div>
			<div>
				<ol class="area_ol">
					<li><a href="${contextPath}/area/seoul">팔레 드 서울</a></li>
					<li><a href="${contextPath}/area/incheon">옥인피자</a></li>
					<li><a href="${contextPath}/area/daejeon">창의문</a></li>
					<li><a href="${contextPath}/area/daegu">북촌한옥마을</a></li>
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