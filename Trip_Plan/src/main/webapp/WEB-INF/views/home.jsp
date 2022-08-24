<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="contextPath" value="${pageContext.request.contextPath}" />
<%
request.setCharacterEncoding("UTF-8");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link href="${contextPath}/resources/css/front.css" type="text/css" rel="stylesheet">
<!-- resources오타 수정 sk -->
<title>메인 화면</title>
<script>
function getLocation() {
	  let lon; //경도
	  let lat; //위도

	  if (navigator.geolocation) {
	    navigator.geolocation.getCurrentPosition((position) => {
	      lon = position.coords.longitude.toFixed(2);
	      lat = position.coords.latitude.toFixed(2);
	      linkToApi(lon, lat)
	    })
	  }
	}

</script>
</head>
<body>

	<jsp:include page="./common/topmenu.jsp" flush="false" />

	<div id="main_container">

		<!--배경사진-->
		<div class="h_container">
			<video muted autoplay loop>
				<source src="${contextPath}/resources/images/mainv.mp4"
					type="video/mp4">
			</video>
			<div class="home_data">
				<p>Welcome</p>
				<h1 class="home_data-subtitle">Plan Beautiful Places</h1>
			</div>
		</div>



		<!--추천코스-->
		<div id="main_bestcourse">
			<h2>인기 여행지 살펴보기</h2>
			<div class="banner_title">
				<table class="clearfix">
					<tr>
						<th><a href="${contextPath}/area/seoul">서울</a></th>
						<th><a href="${contextPath}/area/busan">부산</a></th>
						<th><a href="${contextPath}/area/jeju">제주</a></th>
					</tr>
				</table>
			</div>
			<div class="m_center" style="float: left; width: 32%;">
				<a href="${contextPath}/area/seoul">
					<div id="course_1">
						<h3>Seoul</h3>
						<p>서울</p>
					</div>
				</a>
			</div>
			<div class="m_center" style="float: left; width: 32%; margin-left: 2%">
				<a href="${contextPath}/area/busan">
					<div id="course_2">
						<h3>Busan</h3>
						<p>부산</p>
					</div>
				</a>
			</div>
			<div class="m_center" style="float: left; margin-left: 2%; width: 32%;">
				<a href="${contextPath}/area/jeju">
					<div id="course_3">
						<h3>Jeju</h3>
						<p>제주</p>
					</div>
				</a>
			</div>
		</div>

		<!-- 리뷰 & 공지 시작 -->
		<div class="front">
			<div id="main_review-container">
				<h3 class="title">BEST REVIEW</h3>
				<div class="btn_more">
					<a href="./board/review"><img
						src="${contextPath}/resources/images/btn_more.png" alt="더보기"></a>
				</div>
				<div id="main_review-table">
					<table
						style="width: 500px; height: 250px; border-collapse: collapse; text-align: center">
						<thead>
							<tr
								style="text-align: center; color: #101c3d; font-size: 20px; background-color: white;">
								<th>순위</th>
								<th>이름</th>
								<th>제목</th>
								<th>글쓴이</th>
							</tr>
						</thead>
						<tbody
							style="text-align: center; font-family: nanumB; font-size: 18px;">
							<tr>
								<td>1</td>
								<td>서울 맛집</td>
								<td><a href="#"><b>애완동물 동반 가능 맛집</b></a></td>
								<td>bog2</td>
							</tr>
							<tr>
								<td>2</td>
								<td>제주도 포토존</td>
								<td><a href="#"><b>산방산 포토존</b></a></td>
								<td>jedo</td>
							</tr>
							<tr>
								<td>3</td>
								<td>대전 빵투어</td>
								<td><a href="#"><b>빵 구매 목록 알짜배기!</b></a></td>
								<td>bbang4</td>
							</tr>
						</tbody>
					</table>
				</div>
			</div>

			<div id="main_notice-container">
				<h3 class="title">NOTICE</h3>
				<div class="btn_more">
					<a href="./board/notice"><img
						src="${contextPath}/resources/images/btn_more.png" alt="더보기"></a>
				</div>
				<div id="main_notice-table">
					<table
						style="width: 500px; height: 250px; border-collapse: collapse; text-align: center">
						<thead>
							<tr
								style="text-align: center; color: #101c3d; font-size: 20px; background-color: white;">
								<th>no</th>
								<th>제목</th>
							</tr>
						</thead>
						<tbody
							style="text-align: center; font-family: nanumB; font-size: 18px;">
							<tr>
								<td>1</td>
								<td><a href="./board/subway"><b>지역별 지하철 노선도</b></a></td>
							</tr>
							<tr>
								<td>2</td>
								<td><a href="#"><b>Trip planner 이용방법</b></a></td>
							</tr>
							<tr>
								<td>3</td>
								<td><a href="#"><b>개인 정보 이용내역</b></a></td>
							</tr>
						</tbody>
					</table>
				</div>
			</div>
		</div>
	</div>

	<!--푸터-->
	<jsp:include page="./common/footer.jsp" />
</body>
</html>