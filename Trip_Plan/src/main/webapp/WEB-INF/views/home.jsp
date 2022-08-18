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
<link href="${pageContext.request.contextPath}/resources/css/front.css"
	type="text/css" rel="stylesheet">
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
        		<source src="${contextPath}/resources/images/mainv.mp4" type="video/mp4">
      		</video>
			<div class="home_data">
				<p>Trip_Plan</p>
				<h1 class="home_data-subtitle">Trip plan Beautiful Places</h1>
			</div>
		</div>



		<!--추천코스-->
		<div id="main_bestcourse">

			<div class="container">
				<div id="myCarousel" class="carousel slide text-center"
					data-ride="carousel">

					<ol class="carousel-indicators">
						<li data-target="#myCarousel" data-slide-to="0" class="active"></li>
						<li data-target="#myCarousel" data-slide-to="1"></li>
						<li data-target="#myCarousel" data-slide-to="2"></li>
					</ol>

					<div class="carousel-inner">
						<div class="item active">

							<img class="img-responsive center-block"
								src="${contextPath}/resources/images/seoul1.jpg" width="100%"
								height="200px" />

							<div class="carousel-caption">
								<span style="font-size: 30px; color: #fff; font-style:border;"></span>
							</div>
						</div>

						<div class="item ">
							<img class="img-responsive center-block"
								src="${contextPath}/resources/images/daejeon2.jpg" width="100%"
								height="200px" />

							<div class="carousel-caption">
								<h2></h2>
							</div>
						</div>

						<div class="item">
							<img class="img-responsive center-block"
								src="${contextPath}/resources/images/incheon3.jpg" width="100%"
								height="200px" />
							<div class="carousel-caption">
								<h2></h2>
							</div>
						</div>
					</div>


					<a class="left carousel-control" href="#myCarousel" role="button"
						data-slide="prev"> <span
						class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
						<span class="sr-only">Previous</span>
					</a> <a class="right carousel-control" href="#myCarousel" role="button"
						data-slide="next"> <span
						class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
						<span class="sr-only">Next</span>
					</a>
				</div>
			</div>
		</div>


		<!-- 리뷰 & 공지 시작 -->
		<div class="front">
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
								<td><a href="#"><b>진행 중인 리뷰 이벤트</b></a></td>
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
		</div>
	</div>

	<!--푸터-->
	<jsp:include page="./common/footer.jsp" />
</body>
</html>