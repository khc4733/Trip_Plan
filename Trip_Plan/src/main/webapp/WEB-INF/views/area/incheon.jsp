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
				<div class="hashtag">
					<a>#교과서속여행</a>&nbsp&nbsp<a>#당일치기여행&nbsp</a><a>#당일코스&nbsp</a><br>
					<a>#도심여행&nbsp</a><a>#아이와함께</a>
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
		<!-- incheon2 끝 -->

		<!-- incheon3 시작 -->
		<div style="border: 1px solid #d6d4d4; float: right; width: 32%;">
			<a href="${contextPath}/contents/incheon/incheon3"> <img
				src="${contextPath}/resources/images/incheon3.jpeg" width="100%"
				height="260px">
			</a>
			<div class="area_course_title">
				<a href="${contextPath}/contents/seoul/seoul3">
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
		<!-- incheon3 끝 -->
	</div>


	<!-- footer -->
	<div>
		<jsp:include page="../common/footer.jsp" />
	</div>
</body>
</html>