<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="contextPath" value="${pageContext.request.contextPath}" />
<%  request.setCharacterEncoding("UTF-8"); %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>seoul</title>
<link href="${contextPath}/resources/css/front.css" type="text/css" rel="stylesheet">
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
		<span>서울 테마코스</span>
		<hr class="area_hr-solid">
	</div>
	<div class="area_centered">
		<!-- seoul1 시작 -->
		<div style="border: 1px solid #d6d4d4; float: left; width: 32%;">
			<div id=a> <!-- 이미지 애니메이션 테스트 -->
				<a href="${contextPath}/contents/seoul/seoul1"> <img
					src="${contextPath}/resources/images/seoul1.jpg" width="100%"
					height="260px">
				</a>
			</div>
			<div class="area_course_title">
				<a href="${contextPath}/contents/seoul/seoul1"><p align="center"
						style="font-family: Tahoma; font-size: 20px; font-weight: bold; margin-top: 10px;">조선의
						왕들이 지극히</br>아끼던 공간</p></a>
				<div class="hashtag" style="border-top: 1px solid #e6e6e6;">
					<a>#교과서속여행</a>&nbsp&nbsp<a>#당일치기여행&nbsp</a>
					<a>#당일코스&nbsp</a><a>#도심여행&nbsp</a><a>#아이와함께</a>
				</div>
			</div>
			<div>
				<ol class="area_ol">
					<li><a href="${contextPath}/area/seoul">창덕궁</a></li>
					<li><a href="${contextPath}/area/incheon">국립민속박물관</a></li>
					<li><a href="${contextPath}/area/daejeon">국립현대미술관</a></li>
					<li><a href="${contextPath}/area/daegu">종묘</a></li>
					<li><a href="${contextPath}/area/busan">광장시장</a></li>
				</ol>
			</div>
		</div>
		<!-- seoul1 끝 -->

		<!-- seoul2 시작 -->
		<div style="border: 1px solid #d6d4d4; float: left; width: 32%; margin-left: 2%">
			<div id=a> <!-- 이미지 애니메이션 테스트 -->
				<a href="${contextPath}/contents/seoul/seoul2"> <img
					src="${contextPath}/resources/images/seoul2.jpg" width="100%"
					height="260px">
				</a>
			</div>
			<div class="area_course_title">
				<a href="${contextPath}/contents/seoul/seoul2">
					<p align="center" style="font-family: Tahoma; font-size: 20px; font-weight: bold; margin-top: 10px;">서울의 랜드마크를 만나다</p>
				</a>
				<div class="hashtag" style="border-top: 1px solid #e6e6e6;">
					<a>#Feel_the_rhythm_of_korea&nbsp</a><a>#1박2일</a><br>
					<a>#데이트코스&nbsp</a><a>#가을여행코스&nbsp</a>
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
		<!-- seoul2 끝 -->

		<!-- seoul3 시작 -->
		<div style="border: 1px solid #d6d4d4; float: right; width: 32%;">
			<div id=a> <!-- 이미지 애니메이션 테스트 -->
				<a href="${contextPath}/contents/seoul/seoul3"> <img
					src="${contextPath}/resources/images/seoul3.jpeg" width="100%"
					height="260px">
				</a>
			</div>
			<div class="area_course_title">
				<a href="${contextPath}/contents/seoul/seoul3">
					<p align="center"
						style="font-family: Tahoma; font-size: 20px; font-weight: bold; margin-top: 10px;">서촌에서
						즐기는 즐거운 맛산책</p>
				</a>
				<div class="hashtag" style="border-top: 1px solid #e6e6e6;">
					<a>#갤러리팔레드서울&nbsp</a><a>#도심여행&nbsp</a><br>
					<a>#데이트코스&nbsp</a><a>#미술관&nbsp</a><a>#북촌한옥마을</a>
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
		<!-- seoul3 끝 -->
	</div>
   </div>

	<!-- footer -->
	<div>
		<jsp:include page="../common/footer.jsp" />
	</div>
</body>
</html>