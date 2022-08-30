<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="contextPath" value="${pageContext.request.contextPath}" />
<%request.setCharacterEncoding("UTF-8");%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>daejeon</title>
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
			<span>대전 테마코스</span>
			<hr class="area_hr-solid">
		</div>
		<div class="area_centered">
			<!-- daejeon1 시작 -->
			<div style="border: 1px solid #d6d4d4; float: left; width: 32%;">
				<div id=a>
					<!-- 이미지 애니메이션 테스트 -->
					<a href="${contextPath}/contents/daejeon/daejeon1"> <img
						src="${contextPath}/resources/images/daejeon1.jpg" width="100%"
						height="260px">
					</a>
				</div>
				<div class="area_course_title">
					<a href="${contextPath}/contents/daejeon/daejeon1"><p
							align="center"
							style="font-family: Tahoma; font-size: 20px; font-weight: bold; margin-top: 10px;">밤의
							열기 가득한 도시의 야경</p></a>
					<div class="hashtag" style="border-top: 1px solid #e6e6e6;">
						<a>#복합문화공간</a>&nbsp&nbsp<a>#당일치기여행&nbsp</a> <a>#당일코스&nbsp</a><a>#도심여행&nbsp</a><a>#연인과함께</a>
					</div>
				</div>
				<div>
					<ol class="area_ol">
						<li><a href="${contextPath}/area/seoul">보문산 행복숲 둘레길</a></li>
						<li><a href="${contextPath}/area/incheon">은행동 으능정이 문화의거리</a></li>
						<li><a href="${contextPath}/area/daejeon">대흥동 문화예술의거리</a></li>
					</ol>
				</div>
			</div>
			<!-- daejeon1 끝 -->

			<!-- daejeon2 시작 -->
			<div
				style="border: 1px solid #d6d4d4; float: left; width: 32%; margin-left: 2%">
				<div id=a>
					<!-- 이미지 애니메이션 테스트 -->
					<a href="${contextPath}/contents/daejeon/daejeon2"> <img
						src="${contextPath}/resources/images/daejeon2.jpg" width="100%"
						height="260px">
					</a>
				</div>
				<div class="area_course_title">
					<a href="${contextPath}/contents/daejeon/daejeon2">
						<p align="center"
							style="font-family: Tahoma; font-size: 20px; font-weight: bold; margin-top: 10px;">
							도시의 자연 속에서 <br>휴식을 취하다
						</p>
					</a>
					<div class="hashtag" style="border-top: 1px solid #e6e6e6;">
						<a>#드라이브코스추천&nbsp</a><a>#자연과함께&nbsp</a><br> <a>#힐링여행&nbsp</a>
						<a>#연인코스&nbsp</a><a>#1박2일</a>
					</div>
				</div>
				<div>
					<ol class="area_ol">
						<li><a href="${contextPath}/area/seoul">대청호오백리길</a></li>
						<li><a href="${contextPath}/area/incheon">계족산 황톳길</a></li>
						<li><a href="${contextPath}/area/daejeon">천연기념물센터</a></li>
						<li><a href="${contextPath}/area/daegu">한밭수목원</a></li>
				</div>
			</div>
			<!-- daejeon2 끝 -->

			<!-- daejeon3 시작 -->
			<div style="border: 1px solid #d6d4d4; float: right; width: 32%;">
				<div id=a>
					<!-- 이미지 애니메이션 테스트 -->
					<a href="${contextPath}/contents/daejeon/daejeon3"> <img
						src="${contextPath}/resources/images/daejeon3.jpg" width="100%"
						height="260px">
					</a>
				</div>
				<div class="area_course_title">
					<a href="${contextPath}/contents/daejeon/daejeon3">
						<p align="center"
							style="font-family: Tahoma; font-size: 20px; font-weight: bold; margin-top: 10px;">
							생태환경과 과학으로<br> 꿈꾸는 멋진 도시
						</p>
					</a>
					<div class="hashtag" style="border-top: 1px solid #e6e6e6;">
						<a>#가족체험여행&nbsp</a><a>#교과서속여행&nbsp</a> <a>#아이와함께&nbsp</a><a>#유네스코세계문화유산</a>
					</div>
				</div>
				<div>
					<ol class="area_ol">
						<li><a href="${contextPath}/area/seoul">대전시립박물관</a></li>
						<li><a href="${contextPath}/area/incheon">공주 무령왕릉&왕릉원</a></li>
						<li><a href="${contextPath}/area/daejeon">공주 공산성</a></li>
						<li><a href="${contextPath}/area/daegu">충청남도 산림박물관</a></li>
						<li><a href="${contextPath}/area/daegu">유성온천지구</a></li>
					</ol>
				</div>
			</div>
			<!-- daejeon3 끝 -->
		</div>
	</div>
	<!-- footer -->
	<div>
		<jsp:include page="../common/footer.jsp" />
	</div>
</body>