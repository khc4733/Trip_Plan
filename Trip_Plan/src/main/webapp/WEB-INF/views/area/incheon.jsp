<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="contextPath" value="${pageContext.request.contextPath}" />
<%  request.setCharacterEncoding("UTF-8"); %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>incheon</title>
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
		<h1>인천 테마코스</h1>
		<hr class="area_hr-solid">
	</div>
	<div class="area_centered">
		<!-- incheon1 시작 -->
		<div style="border: 1px solid #d6d4d4; float: left; width: 32%;">
			<a href="${contextPath}/contents/incheon/incheon1"> <img
				src="${contextPath}/resources/images/incheon1.jpg" width="100%"
				height="260px">
			</a>
			<div class="area_course_title">
				<a href="${contextPath}/contents/incheon/incheon1"><p align="center"
						style="font-family: Tahoma; font-size: 20px; font-weight: bold; margin-top: 10px;">
						인천 근현대의 흔적을 만나다</p></a>
				<div class="hashtag" style="border-top: 1px solid #e6e6e6;">
					<a>#나홀로코스</a>&nbsp&nbsp<a>#당일치기여행&nbsp</a><a>#당일코스&nbsp</a><br>
					<a>#역사여행&nbsp</a><a>#가족여행</a><a>#힐링여행</a>
				</div>
			</div>
			<div>
				<ol class="area_ol">
					<li><a href="${contextPath}/area/seoul">자유공원</a></li>
					<li><a href="${contextPath}/area/incheon">인천 차이나타운</a></li>
					<li><a href="${contextPath}/area/daejeon">(구)인천일본제58은행지점</a></li>
					<li><a href="${contextPath}/area/daegu">월미공원</a></li>
				</ol>
			</div>
		</div>
		<!-- incheon1 끝 -->

		<!-- incheon2 시작 -->
		<div
			style="border: 1px solid #d6d4d4; float: left; width: 32%; margin-left: 2%">
			<a href="${contextPath}/contents/incheon/incheon2"> <img
				src="${contextPath}/resources/images/incheon2.jpg" width="100%"
				height="260px">
			</a>
			<div class="area_course_title">
				<a href="${contextPath}/contents/incheon/incheon2">
					<p align="center" style="font-family: Tahoma; font-size: 20px; font-weight: bold; margin-top: 10px;">화려하게 빛나는 인천의 낮과 밤</p>
				</a>
				<div class="hashtag" style="border-top: 1px solid #e6e6e6;">
					<a>#가족코스&nbsp</a><a>#야경여행지&nbsp</a><a>#뷰맛집&nbsp</a><br>
					<a>#힐링코스&nbsp</a> <a>#연인코스&nbsp</a><a>#1박2일</a>
				</div>
			</div>
			<div>
				<ol class="area_ol">
					<li><a href="${contextPath}/area/seoul">개항장 거리</a></li>
					<li><a href="${contextPath}/area/incheon">송월동 동화마을</a></li>
					<li><a href="${contextPath}/area/daejeon">월미도</a></li>
					<li><a href="${contextPath}/area/daegu">송도 센트럴파크</a></li>
					<li><a href="${contextPath}/area/busan">소래포구</a></li>
				</ol>
			</div>
		</div>
		<!-- incheon2 끝 -->

		<!-- incheon3 시작 -->
		<div style="border: 1px solid #d6d4d4; float: right; width: 32%;">
			<a href="${contextPath}/contents/incheon/incheon3"> <img
				src="${contextPath}/resources/images/incheon3.jpg" width="100%"
				height="260px">
			</a>
			<div class="area_course_title">
				<a href="${contextPath}/contents/seoul/seoul3">
					<p align="center"
						style="font-family: Tahoma; font-size: 20px; font-weight: bold; margin-top: 10px;">
						이국적인 분위기와</br>달콤한 도시 송도</p>
				</a>
				<div class="hashtag" style="border-top: 1px solid #e6e6e6;">
					<a>#맛코스&nbsp</a><a>#도심여행&nbsp</a><a>#데이트코스&nbsp</a><br>
					<a>#맛집여행&nbsp</a><a>#복합문화공간</a><a>#디저트맛집</a>
				</div>
			</div>
			<div>
				<ol class="area_ol">
					<li><a href="${contextPath}/area/seoul">버거룸 181</a></li>
					<li><a href="${contextPath}/area/incheon">그리다 디저트</a></li>
					<li><a href="${contextPath}/area/daejeon">인천도시역사관</a></li>
					<li><a href="${contextPath}/area/daegu">애플삼겹살</a></li>
					<li><a href="${contextPath}/area/daegu">송도컨벤시아</a></li>
				</ol>
			</div>
		</div>
		<!-- incheon3 끝 -->
	</div>


	<!-- footer -->
	<div>
		<jsp:include page="../common/footer.jsp" />
	</div>
</body>
</html>