<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c"  uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="contextPath" value="${pageContext.request.contextPath}"/>
<%  request.setCharacterEncoding("UTF-8"); %>  
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>busan</title>
</head>
<body>
<!-- top menu -->
     <div>
        <jsp:include page="../common/topmenu.jsp"/>
    </div>
<!-- side menu -->
     <div>
        <jsp:include page="../common/sidemenu.jsp"/>
    </div>
<!-- 본문 내용 -->
	<div class="area_centered">
		<h1>부산 테마코스</h1>
		<hr class="area_hr-solid">
	</div>
	<div class="area_centered">
		<!-- busan1 시작 -->
		<div style="border: 1px solid #d6d4d4; float: left; width: 32%;">
			<a href="${contextPath}/contents/busan/busan1"> <img
				src="${contextPath}/resources/images/busan1.jpg" width="100%"
				height="260px">
			</a>
			<div class="area_course_title">
				<a href="${contextPath}/contents/busan/busan1"><p align="center"
						style="font-family: Tahoma; font-size: 20px; font-weight: bold; margin-top: 10px;">영도의 바다를 만나다
						</p></a>
				<div class="hashtag">
					<a>#바다여행</a>&nbsp&nbsp<a>#당일치기여행&nbsp</a><a>#당일코스&nbsp</a><br>
					<a>#힐링여행&nbsp</a><a>#가족여행</a>
				</div>
			</div>
			<div>
				<ol class="area_ol">
					<li><a href="${contextPath}/area/seoul">낙동강하구 에코센터</a></li>
					<li><a href="${contextPath}/area/incheon">영도대교</a></li>
					<li><a href="${contextPath}/area/daejeon">영도 절영산책로</a></li>
					<li><a href="${contextPath}/area/daegu">태종대</a></li>
				</ol>
			</div>
		</div>
		<!-- busan1 끝 -->

		<!-- busan2 시작 -->
		<div
			style="border: 1px solid #d6d4d4; float: left; width: 32%; margin-left: 2%">
			<a href="${contextPath}/contents/busan/busan2"> <img
				src="${contextPath}/resources/images/busan2.jpg" width="100%"
				height="260px">
			</a>
			<div class="area_course_title">
				<a href="${contextPath}/contents/busan/busan2">
					<p align="center" style="font-family: Tahoma; font-size: 20px; font-weight: bold; margin-top: 10px;">울산의 초록빛과 부산의 푸른빛에 
					둘려쌓여 자유를 만끽하다!</p>
				</a>
				<div class="hashtag" style="border-top: 1px solid #e6e6e6;">
					<a>#힐링여행</a><a>#포토존&nbsp</a><br>
					<a>#데이트코스&nbsp</a> <a>#연인코스&nbsp</a><a>#1박2일</a>
				</div>
			</div>
			<div>
				<ol class="area_ol">
					<li><a href="${contextPath}/area/seoul">편백산림욕장</a></li>
					<li><a href="${contextPath}/area/incheon">청사포다릿돌 전망대</a></li>
					<li><a href="${contextPath}/area/daejeon">수영만 요트경기장</a></li>
					<li><a href="${contextPath}/area/daegu">더베이101</a></li>
					<li><a href="${contextPath}/area/busan">광안리SUP Zone</a></li>
					<li><a href="${contextPath}/area/gwangju">흰여울 문화마을</a></li>
				</ol>
			</div>
		</div>
		<!-- busan2 끝 -->

		<!-- busan3 시작 -->
		<div style="border: 1px solid #d6d4d4; float: right; width: 32%;">
			<a href="${contextPath}/contents/busan/busan3"> <img
				src="${contextPath}/resources/images/busan3.jpeg" width="100%"
				height="260px">
			</a>
			<div class="area_course_title">
				<a href="${contextPath}/contents/busan/busan3">
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
		<!-- busan3 끝 -->
	</div>    

<!-- footer -->
     <div>
        <jsp:include page="../common/footer.jsp"/>
    </div>
</body>