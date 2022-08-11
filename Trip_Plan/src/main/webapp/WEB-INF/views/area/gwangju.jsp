<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="contextPath" value="${pageContext.request.contextPath}" />
<%  request.setCharacterEncoding("UTF-8"); %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>gwangju</title>
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
 <div class="area_main">
	<div class="area_centered">
		<span>광주 테마코스</span>
		<hr class="area_hr-solid">
	</div>
	<div class="area_centered">
		<!-- gwangju1 시작 -->
		<div style="border: 1px solid #d6d4d4; float: left; width: 32%;">
			<div id=a> <!-- 이미지 애니메이션 테스트 -->
				<a href="${contextPath}/contents/gwangju/gwangju1"> <img
					src="${contextPath}/resources/images/gwangju1.jpg" width="100%"
					height="260px">
				</a>
			</div>
			<div class="area_course_title">
				<a href="${contextPath}/contents/gwangju/gwangju1"><p align="center"
						style="font-family: Tahoma; font-size: 20px; font-weight: bold; margin-top: 10px;">
						광주 서구 8경 중 </br>4경을 찾아 떠나는 여행</p></a>
				<div class="hashtag" style="border-top: 1px solid #e6e6e6;">
					<a>#교과서속여행</a>&nbsp&nbsp<a>#근대문화유산&nbsp</a><a>#당일코스&nbsp</a>
					<a>#역사문화관광&nbsp</a><a>#전통시장</a>
				</div>
			</div>
			<div>
				<ol class="area_ol">
					<li><a href="${contextPath}/area/seoul">만귀정</a></li>
					<li><a href="${contextPath}/area/incheon">운천사마애여래좌상</a></li>
					<li><a href="${contextPath}/area/daejeon">5.18기념공원</a></li>
					<li><a href="${contextPath}/area/daegu">광주 양동시장</a></li>
				</ol>
			</div>
		</div>
		<!-- gwangju1 끝 -->

		<!-- gwangju2 시작 -->
		<div style="border: 1px solid #d6d4d4; float: left; width: 32%; margin-left: 2%">
			<div id=a> <!-- 이미지 애니메이션 테스트 -->
				<a href="${contextPath}/contents/gwangju/gwangju2"> <img
					src="${contextPath}/resources/images/gwangju2.jpg" width="100%"
					height="260px">
				</a>
			</div>
			<div class="area_course_title">
				<a href="${contextPath}/contents/gwangju/gwangju2">
					<p align="center" style="font-family: Tahoma; font-size: 20px; font-weight: bold; margin-top: 10px;">
					광주의 예술가거리와</br>번화한 금남로</p>
				</a>
				<div class="hashtag" style="border-top: 1px solid #e6e6e6;">
					<a>#언택트관광지 100선&nbsp</a><a>#이색거리&nbsp</a><br>
					<a>#만남의광장&nbsp</a> <a>#연인코스&nbsp</a><a>#가족과함께</a>
				</div>
			</div>
			<div>
				<ol class="area_ol">
					<li><a href="${contextPath}/area/seoul">광주호 호수생태원</a></li>
					<li><a href="${contextPath}/area/incheon">광주 예술의 거리</a></li>
					<li><a href="${contextPath}/area/daejeon">제일반점</a></li>
					<li><a href="${contextPath}/area/daegu">금남로</a></li>
					<li><a href="${contextPath}/area/busan">최승효가옥</a></li>
				</ol>
			</div>
		</div>
		<!-- gwangju2 끝 -->

		<!-- gwangju3 시작 -->
		<div style="border: 1px solid #d6d4d4; float: right; width: 32%;">
			<div id=a> <!-- 이미지 애니메이션 테스트 -->
				<a href="${contextPath}/contents/gwangju/gwangju3"> <img
					src="${contextPath}/resources/images/gwangju3.png" width="100%"
					height="260px">
				</a>
			</div>
			<div class="area_course_title">
				<a href="${contextPath}/contents/gwangju/gwangju3">
					<p align="center"
						style="font-family: Tahoma; font-size: 20px; font-weight: bold; margin-top: 10px;">
						녹색의 에너지 체험과</br>광주의 유적지 탐방</p>
				</a>
				<div class="hashtag" style="border-top: 1px solid #e6e6e6;">
					<a>#이색체험&nbsp</a><a>#역사속으로&nbsp</a><a>#맛집탐방&nbsp</a><br>
					<a>#반려견동반&nbsp</a><a>#당일코스</a><a>#아이와함께</a>
				</div>
			</div>
			<div>
				<ol class="area_ol">
					<li><a href="${contextPath}/area/seoul">녹색에너지체험관</a></li>
					<li><a href="${contextPath}/area/incheon">월계동 장고분</a></li>
					<li><a href="${contextPath}/area/daejeon">소담(구 정통아구)</a></li>
					<li><a href="${contextPath}/area/daegu">쌍암공원</a></li>
					<li><a href="${contextPath}/area/daegu">환벽당</a></li>
				</ol>
			</div>
		</div>
		<!-- gwangju3 끝 -->
	</div>
</div>

	<!-- footer -->
	<div>
		<jsp:include page="../common/footer.jsp" />
	</div>
</body>
</html>