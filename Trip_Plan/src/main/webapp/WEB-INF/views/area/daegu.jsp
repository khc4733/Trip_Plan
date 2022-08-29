<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="contextPath" value="${pageContext.request.contextPath}" />
<%  request.setCharacterEncoding("UTF-8"); %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>daegu</title>
<link href="${contextPath}/resources/css/front.css" type="text/css"
	rel="stylesheet">
</head>
<body>
	<!-- top menu -->
     <div class="sub_menubar">
        <jsp:include page="../common/topmenu.jsp"/>
    </div>
	<!-- side menu -->
	<div>
		<jsp:include page="../common/sidemenu.jsp" />
	</div>
	<!-- 본문 내용 -->
   <div class="area_main">
	<div class="area_centered">
		<span>대구 테마코스</span>
		<hr class="area_hr-solid">
	</div>
	<div class="area_centered">
		<!-- daegu1 시작 -->
		<div style="border: 1px solid #d6d4d4; float: left; width: 32%;">
			<div id=a> <!-- 이미지 애니메이션 테스트 -->
				<a href="${contextPath}/contents/daegu/daegu1"> <img
					src="${contextPath}/resources/images/daegu1.jpg" width="100%"
					height="260px">
				</a>
			</div>
			<div class="area_course_title">
				<a href="${contextPath}/contents/daegu/daegu1"><p align="center"
						style="font-family: Tahoma; font-size: 20px; font-weight: bold; margin-top: 10px;">
						도심에서 만나는 휴식 같은 풍경</p></a>
				<div class="hashtag" style="border-top: 1px solid #e6e6e6;">
					<a>#한국관광의별 수상</a>&nbsp&nbsp<a>#당일치기여행&nbsp</a><a>#당일코스&nbsp</a>
					<a>#도심여행&nbsp</a><a>#휴식여행</a>
				</div>
			</div>
			<div>
				<ol class="area_ol">
					<li><a href="${contextPath}/area/seoul">대구 계산동성당</a></li>
					<li><a href="${contextPath}/area/incheon">이상화 고택</a></li>
					<li><a href="${contextPath}/area/daejeon">대구 약령시한의약박물관</a></li>
					<li><a href="${contextPath}/area/daegu">대구 진골목</a></li>
					<li><a href="${contextPath}/area/busan">대구 서문시장&야시장</a></li>
					<li><a href="${contextPath}/area/busan">김광석 다시그리기길</a></li>
				</ol>
			</div>
		</div>
		<!-- daegu1 끝 -->

		<!-- daegu2 시작 -->
		<div style="border: 1px solid #d6d4d4; float: left; width: 32%; margin-left: 2%">
			<div id=a> <!-- 이미지 애니메이션 테스트 -->
				<a href="${contextPath}/contents/daegu/daegu2"> <img
					src="${contextPath}/resources/images/daegu2.jpg" width="100%"
					height="260px">
				</a>
			</div>
			<div class="area_course_title">
				<a href="${contextPath}/contents/daegu/daegu2">
					<p align="center" style="font-family: Tahoma; font-size: 20px; font-weight: bold; margin-top: 10px;">대구의 핫플레이스를 둘러보는 </br>1박2일 여행 코스</p>
				</a>
				<div class="hashtag" style="border-top: 1px solid #e6e6e6;">
					<a>#대구가볼만한곳&nbsp</a><a>#가족과함께&nbsp</a><br>
					<a>#친구와함께&nbsp</a> <a>#힐링코스&nbsp</a><a>#1박2일</a>
				</div>
			</div>
			<div>
				<ol class="area_ol">
					<li><a href="${contextPath}/area/seoul">동인동 찜갈비골목</a></li>
					<li><a href="${contextPath}/area/incheon">두낫디스터브 비슬산</a></li>
					<li><a href="${contextPath}/area/daejeon">교향리 이팝나무 군락지</a></li>
					<li><a href="${contextPath}/area/daegu">대구 하중도(금호꽃섬)</a></li>
					<li><a href="${contextPath}/area/busan">안지랑 곱창골목</a></li>
					<li><a href="${contextPath}/area/gwangju">스파크랜드</a></li>
					<li><a href="${contextPath}/area/gwangju">대구수목원</a></li>
					<li><a href="${contextPath}/area/gwangju">대구평화시장</a></li>
				</ol>
			</div>
		</div>
		<!-- daegu2 끝 -->

		<!-- daegu3 시작 -->
		<div style="border: 1px solid #d6d4d4; float: right; width: 32%;">
			<div id=a> <!-- 이미지 애니메이션 테스트 -->
				<a href="${contextPath}/contents/daegu/daegu3"> <img
					src="${contextPath}/resources/images/daegu3.png" width="100%"
					height="260px">
				</a>
			</div>
			<div class="area_course_title">
				<a href="${contextPath}/contents/daegu/daegu3">
					<p align="center"
						style="font-family: Tahoma; font-size: 20px; font-weight: bold; margin-top: 10px;">
						대구 서부시장 구석구석</br>맛집탐방</p>
				</a>
				<div class="hashtag" style="border-top: 1px solid #e6e6e6;">
					<a>#프랜차이즈특화거리&nbsp</a><a>#이색음식거리&nbsp</a>
					<a>#맛집여행&nbsp</a><a>#맛집골목&nbsp</a><a>#당일코스&nbsp</a><br>
					<a>#연인과함께&nbsp</a><a>#가족과함께&nbsp</a>
				</div>
			</div>
			<div>
				<ol class="area_ol">
					<li><a href="${contextPath}/area/seoul">선교사 스윗즈주택</a></li>
					<li><a href="${contextPath}/area/incheon">서부 오미(味)가미(味)거리</a></li>
					<li><a href="${contextPath}/area/daejeon">인동촌 아나고골목</a></li>
				</ol>
			</div>
		</div>
		<!-- daegu3 끝 -->
	</div>
   </div>

	<!-- footer -->
	<div>
		<jsp:include page="../common/footer.jsp" />
	</div>
</body>
</html>
