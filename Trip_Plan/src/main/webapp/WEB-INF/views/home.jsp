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
<link href="${contextPath}/resources/css/front.css" type="text/css"
	rel="stylesheet">
<!-- resources오타 수정 sk -->
<title>메인 화면</title>
<script
	src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>

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
<script>
$(document).ready(function(){
	$("#ha").on("click",function(event){   
		   event.preventDefault();       
		   $("#course_1").css("background-image", "url(${contextPath}/resources/images/daegu2-6.jpg)");
		   $("#course_1 p").html("스파크랜드");
		   $("#course_2").css("background-image", "url(${contextPath}/resources/images/daejeon2-1.jpg)");
		   $("#course_2 p").html("대청호오백리길");
		   $("#course_3").css("background-image", "url(${contextPath}/resources/images/busan2-3.jpg)");
		   $("#course_3 p").html("수영만 요트경기장");		
		});   	 
	$("#hb").on("click",function(event){   
	   event.preventDefault();       
	   $("#course_1").css("background-image", "url(${contextPath}/resources/images/daejeon1-2.jpg)");
	   $("#course_1 p").html("은행동 으능정이 문화의거리");
	   $("#course_2").css("background-image", "url(${contextPath}/resources/images/seoul2-5.jpg)");
	   $("#course_2 p").html("남산골 한옥마을");
	   $("#course_3").css("background-image", "url(${contextPath}/resources/images/incheon1-2.jpg)");
	   $("#course_3 p").html("인천 차이나타운");		
	});     
	$("#hc").on("click",function(event){   
		   event.preventDefault();       
		   $("#course_1").css("background-image", "url(${contextPath}/resources/images/seoul3-4.jpg)");
		   $("#course_1 p").html("북촌한옥마을");
		   $("#course_2").css("background-image", "url(${contextPath}/resources/images/incheon3-5.jpg)");
		   $("#course_2 p").html("송도컨벤시아");
		   $("#course_3").css("background-image", "url(${contextPath}/resources/images/gwangju2-1.jpg)");
		   $("#course_3 p").html("광주호 호수생태원");		
	});  
	$("#hd").on("click",function(event){   
		   event.preventDefault();       
		   $("#course_1").css("background-image", "url(${contextPath}/resources/images/busan1-3.jpg)");
		   $("#course_1 p").html("영도 절영산책로");
		   $("#course_2").css("background-image", "url(${contextPath}/resources/images/gwangju3-4.jpg)");
		   $("#course_2 p").html("환벽당");
		   $("#course_3").css("background-image", "url(${contextPath}/resources/images/jeju2-4.jpg)");
		   $("#course_3 p").html("어영소공원");		
	});  	
		 
}); 
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
			<h2>

				"트랩 플랜"<span> 추천 여행지 및 코스를 알려드려요.</span>

			</h2>
			<div class="banner_title">
				<div class="home_hashtag">
					<a id="ha" href="#">#1박2일</a><a id="hb" href="#">#당일치기여행</a> <a
						id="hc" href="#">#도심여행</a><a id="hd" href="#">#가족체험여행</a>
				</div>
			</div>
			<div class="bestcourse">
				<div class="m_center"
					style="float: left; width: 32%; overflow: hidden;">
					<a href="${contextPath}/contents/daegu/daegu2">
						<div id="course_1">
							<span><p>스파크랜드</p></span>
						</div>
					</a>
				</div>
				<div class="m_center"
					style="float: left; width: 32%; margin-left: 2%; overflow: hidden;">
					<a href="${contextPath}/contents/daejeon/daejeon2">
						<div id="course_2">
							<span><p>대청호오백리길</p></span>
						</div>
					</a>
				</div>
				<div class="m_center"
					style="float: left; margin-left: 2%; width: 32%; overflow: hidden;">
					<a href="${contextPath}/contents/busan/busan2">
						<div id="course_3">
							<span><p>수영만 요트경기장</p></span>
						</div>
					</a>
				</div>
			</div>
		</div>

		<!-- 리뷰 & 공지 시작 -->
		<div class="front">
			<div id="main_review-container">
				<h3 class="tit_atc">인기 여행리뷰 Top 5</h3>
				<span class="date">트립플랜 인기 여행리뷰를 소개합니다.</span>
				<div class="btn_more">
					<a href="${contextPath}/board/boardList"><img
						src="${contextPath}/resources/images/btn_more.png" alt="더보기"></a>
				</div>
				<div id="main_review-table">
					<table
						style="width: 500px; height: 250px; text-align: center">
						<thead>
							<tr style="	border-bottom : 1px solid #ccc;">
								<th style="width:50px;">순위</th>
								<th style="width:350px;">제목</th>
								<th style="width:50px;">작성자</th>
							</tr>
						</thead>
						<tbody>
							<c:forEach items="${boardList}" var="list">
								<tr style="text-align: center; font-family: nanumB; font-size: 16px;">
									<td>${list.rownum}</td>
									<td><a
										href="${contextPath}/board/boardDetail?seq=${list.seq}"><b>${list.subject}</b></a></td>
									<td>${list.writer}</td>
								</tr>
							</c:forEach>
						</tbody>
					</table>
				</div>
			</div>

			<div id="main_notice-container">
				<h3 class="tit_atc">GUIDE</h3>
				<span class="date">사용자분들의 여행을 도와드립니다.</span>
				<div class="btn_more">
					<a href="${contextPath}/board/notice"><img
						src="${contextPath}/resources/images/btn_more.png" alt="더보기"></a>
				</div>
				<div id="main_notice-table">
					<table
						style="width: 500px; height: 250px; text-align: center">
						<thead>
							<tr style="	border-bottom : 1px solid #ccc;">
								<th>no</th>
								<th>제목</th>
							</tr>
						</thead>
						<tbody>
							<tr style="text-align: center; font-family: nanumB; font-size: 18px; border-bottom : 1px solid #ccc;">
								<td>1</td>
								<td><a href="${contextPath}/board/subway"><b>지역별
											지하철 노선도</b></a></td>
							</tr>
							<tr style="text-align: center; font-family: nanumB; font-size: 18px; border-bottom : 1px solid #ccc;">
								<td>2</td>
								<td><a href="${contextPath}/board/jointp"><b>Trip
											planner 이용방법</b></a></td>
							</tr>
							<tr style="text-align: center; font-family: nanumB; font-size: 18px;">
								<td>3</td>
								<td><a href="${contextPath}/member/memberRule"><b>개인
											정보 이용안내</b></a></td>
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