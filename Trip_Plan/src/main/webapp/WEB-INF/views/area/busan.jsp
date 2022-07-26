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
        <jsp:include page="../common/sidemenu.jsp"/>
    </div>
<!-- 본문 내용 -->
  <div class="area_main">
	<div class="area_centered">
		<span>부산 테마코스</span>
		<hr class="area_hr-solid">
	</div>
	<div class="area_centered">
		<!-- busan1 시작 -->
		<div style="border: 1px solid #d6d4d4; float: left; width: 32%;">
			<div id=a> <!-- 이미지 애니메이션 테스트 -->
				<a href="${contextPath}/contents/busan/busan1"> <img
					src="${contextPath}/resources/images/busan1.jpg" width="100%"
					height="260px">
				</a>
			</div>
			<div class="area_course_title">
				<a href="${contextPath}/contents/busan/busan1"><p align="center"
						style="font-family: Tahoma; font-size: 20px; font-weight: bold; margin-top: 10px;">영도의 바다를 만나다
						</p></a>
				<div class="hashtag" style="border-top: 1px solid #e6e6e6;">
					<a>#바다여행</a>&nbsp&nbsp<a>#당일치기여행&nbsp</a><a>#당일코스&nbsp</a><br>
					<a>#힐링여행&nbsp</a><a>#가족여행</a><a>#산책코스</a>
				</div>
			</div>
			<div>
				<ol class="area_ol">
					<li>낙동강하구 에코센터</li>
					<li>영도대교</li>
					<li>영도 절영산책로</li>
					<li>태종대</li>
				</ol>
			</div>
		</div>
		<!-- busan1 끝 -->

		<!-- busan2 시작 -->
		<div style="border: 1px solid #d6d4d4; float: left; width: 32%; margin-left: 2%">
			<div id=a> <!-- 이미지 애니메이션 테스트 -->
				<a href="${contextPath}/contents/busan/busan2"> <img
					src="${contextPath}/resources/images/busan2.jpg" width="100%"
					height="260px">
				</a>
			</div>
			<div class="area_course_title">
				<a href="${contextPath}/contents/busan/busan2">
					<p align="center" style="font-family: Tahoma; font-size: 20px; font-weight: bold; margin-top: 10px;">울산의 초록빛과 부산의 푸른빛에 
					둘려쌓여 자유를 만끽하다!</p>
				</a>
				<div class="hashtag" style="border-top: 1px solid #e6e6e6;">
					<a>#힐링여행&nbsp</a><a>#포토존&nbsp</a><a>#산림욕&nbsp</a><br>
					<a>#데이트코스&nbsp</a> <a>#연인코스&nbsp</a><a>#1박2일</a>
				</div>
			</div>
			<div>
				<ol class="area_ol">
					<li>편백산림욕장</li>
					<li>청사포다릿돌 전망대</li>
					<li>수영만 요트경기장</li>
					<li>더베이101</li>
					<li>광안리SUP Zone</li>
					<li>흰여울 문화마을</li>
				</ol>
			</div>
		</div>
		<!-- busan2 끝 -->

		<!-- busan3 시작 -->
		<div style="border: 1px solid #d6d4d4; float: right; width: 32%;">
			<div id=a> <!-- 이미지 애니메이션 테스트 -->
				<a href="${contextPath}/contents/busan/busan3"> <img
					src="${contextPath}/resources/images/busan3.png" width="100%"
					height="260px">
				</a>
			</div>
			<div class="area_course_title">
				<a href="${contextPath}/contents/busan/busan3">
					<p align="center"
						style="font-family: Tahoma; font-size: 20px; font-weight: bold; margin-top: 10px;">부산의 온천과 명물을 만나다!</p>
				</a>
				<div class="hashtag" style="border-top: 1px solid #e6e6e6;">
					<a>#동래온천&nbsp</a><a>#동래시장&nbsp</a><a>#산곰장어&nbsp</a><br> <a>#동래파전&nbsp</a>
					<a>#당일코스</a><a>#맛코스</a>
				</div>
			</div>
			<div>
				<ol class="area_ol">
					<li>동래온천 노천족욕탕</li>
					<li>원조소문난산곰장어</li>
					<li>동래시장</li>
					<li>부산 복천동 고분군</li>
					<li>동래할매파전</li>
					<li>충렬사</li>
				</ol>
			</div>
		</div>
		<!-- busan3 끝 -->
	</div>    
   </div>
<!-- footer -->
     <div>
        <jsp:include page="../common/footer.jsp"/>
    </div>
</body>