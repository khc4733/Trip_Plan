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
<title>jeju2</title>
<link href="${contextPath}/resources/css/front.css" type="text/css"
	rel="stylesheet">
</head>
<body>
	<!-- top menu -->
	<div class="sub_menubar">
		<jsp:include page="../../common/topmenu.jsp" />
	</div>
	<!-- side menu -->
	<div>
		<jsp:include page="../../common/sidemenu.jsp" />
	</div>
	<!-- 본문 내용 -->
	<!-- 광주 서구 8경 중 4경을 찾아 떠나는 여행 -->
	<div class="contents_centered">
		<div class="titleType1">
			<div class="tit">
				<label>제주 테마코스</label>
				<h2>놀멍쉬멍 제주 바다 구경떠나기</h2>
			</div>
			<div class="area_address">
				<span class="address">제주도</span> <span id="dist">코스 총거리 :
					6.95km</span>
			</div>
		</div>
		<div class="schedule_info">
			<ul class="schedule">
				<li style="float: left;"><span class="img"><img
						src="${contextPath}/resources/images/icon_cos_schedule1.gif"
						alt=""></span> <em>일정</em> <strong>당일여행</strong></li>
				<li style="margin-left: 50px;"><span class="img"><img
						src="${contextPath}/resources/images/icon_cos_theme1.gif" alt=""></span>
					<em>테마</em> <strong>도보코스</strong></li>
			</ul>
		</div>
		<div class="area_txtView">
			<div class="inr_wrap" style="overflow: visible; height: auto;">
				<div class="inr">
					<p>가장 제주다운 풍경을 만날 수 있는 방법은 차편이나 걸어서 해안도로를 달려보는 것. 대자연의 너른 품에서
						바름과 구름, 돌과 나무와 하늘을 길동무 삼아 달리며 심신의 여유와 자유로움을 마음껏 느껴보시길.</p>
				</div>
			</div>
			<div class="cont_more" style="display: none;">
				<button type="button" class="btn_more" title="내용더보기">
					<span>더보기</span>
				</button>
			</div>
		</div>
		<div id="map">
			<script type="text/javascript"
				src="//dapi.kakao.com/v2/maps/sdk.js?appkey=2b2ca9aeab329e586b8575704eaf0afa"></script>
			<script>
				var container = document.getElementById('map'); //지도를 표시할 div
				var options = {
					center : new kakao.maps.LatLng(33.51274528051739,
							126.51825087844948), //지도 중심좌표
					level : 6
				//지도 확대레벨
				};

				var map = new kakao.maps.Map(container, options); //지도 생성
				var linePath = [ //선을 구성하는 좌표 배열, 이 좌표들을 이어서 선을 표시
				new kakao.maps.LatLng(33.51757108327539, 126.54509028768885), //사라봉공원
				new kakao.maps.LatLng(33.51344332133895, 126.52156206507131), //관덕정
				new kakao.maps.LatLng(33.51623696857795, 126.51198869013254), //용두암
				new kakao.maps.LatLng(33.51699935122952, 126.48647469218668) //어영소공원
				];

				// 지도에 표시할 선을 생성합니다
				var polyline = new kakao.maps.Polyline({
					path : linePath, // 선을 구성하는 좌표배열 입니다
					strokeWeight : 3, // 선의 두께 입니다
					strokeColor : '#e30e0e', // 선의 색깔입니다
					strokeOpacity : 0.7, // 선의 불투명도 입니다 1에서 0 사이의 값이며 0에 가까울수록 투명합니다
					strokeStyle : 'solid' // 선의 스타일입니다
				});

				// 지도에 선을 표시합니다 
				polyline.setMap(map);

				// 마커가 표시될 위치입니다 
				var markerPosition = new kakao.maps.LatLng(33.51757108327539,
						126.54509028768885); //사라봉공원
				var markerPosition2 = new kakao.maps.LatLng(33.51344332133895,
						126.52156206507131); //관덕정
				var markerPosition3 = new kakao.maps.LatLng(33.51623696857795,
						126.51198869013254); //용두암
				var markerPosition4 = new kakao.maps.LatLng(33.51699935122952,
						126.48647469218668); //어영소공원

				// 마커를 생성합니다
				var marker = new kakao.maps.Marker({
					position : markerPosition
				});
				var marker2 = new kakao.maps.Marker({
					position : markerPosition2
				});
				var marker3 = new kakao.maps.Marker({
					position : markerPosition3
				});

				var marker4 = new kakao.maps.Marker({
					position : markerPosition4
				});

				// 마커가 지도 위에 표시되도록 설정합니다
				marker.setMap(map);
				marker2.setMap(map);
				marker3.setMap(map);
				marker4.setMap(map);
			</script>
		</div>
		<div class=" line_wrap clearfix" name="Gyeongbokgung Palace(kr)">
			<div class="left">
				<img src="${contextPath}/resources/images/jeju2-1.jpg">

			</div>
			<div class="right">

				<h5 class="mvp_h5">사라봉공원</h5>

				<p>사라봉 공원은 제주시 동문로터리에서 동쪽으로 2km 거리에 있는 143m 높이의 낮은 동산이다. 이곳에서 볼
					수 있는 사봉 낙조는 영주 12경의 하나로 성산일출과 대조가 될만하다. 쪽으로는 바다를 끼고 남쪽으로는 한라산을 바라보고
					있는 이곳은 제주시민은 물론 관광객도 즐겨 찾는다.</p>
			</div>
		</div>

		<div class="line_wrap clearfix" name="Gyeongbokgung Palace(kr)">
			<div class="left">
				<img src="${contextPath}/resources/images/jeju2-2.jpg">

			</div>
			<div class="right">

				<h5 class="mvp_h5">관덕정(제주)</h5>

				<p>제주도내에서 가장 오래된 건축물 중의 하나인 관덕정은 보물로서 조선 시대 세종 30년(1448)에 목사
					신숙청이 사졸들을 훈련시키고 상무 정신을 함양할 목적으로 이 건물을 세웠다. 관덕정이란 이름은 [사이관덕]이란 문구에서
					나온 것으로 활을 쏘는 것은 평화시에는 심신을 연마하고 유사시에는 나라를 지키는 까닭에 이를 보는 것은 덕행으로 태어난
					곳이다.</p>
			</div>
		</div>
		<div class=" line_wrap clearfix" name="Gyeongbokgung Palace(kr)">
			<div class="left">
				<img src="${contextPath}/resources/images/jeju2-3.jpg">

			</div>
			<div class="right">

				<h5 class="mvp_h5">용두암</h5>

				<p>제주시내 북쪽 바닷가에 있는 용두암은 높이 10m가량의 바위로 오랜 세월에 걸쳐 파도와 바람에 씻겨 빚어진
					모양이 용의 머리와 닮았다 하여 용두암이라 불린다. 이곳 주변에서는 해녀가 작업하는 모습을 볼 수 있을 뿐만 아니라,
					이곳에서 해안 도로를 따라 10여 분 정도 걸어가면 카페 및 주점, 식당 등이 있다.</p>
			</div>
		</div>
		<div class=" line_wrap clearfix" name="Gyeongbokgung Palace(kr)">
			<div class="left">
				<img src="${contextPath}/resources/images/jeju2-4.jpg">

			</div>
			<div class="right">

				<h5 class="mvp_h5">어영소공원</h5>

				<p>제주도 용두암에서 약 1km정도 떨어진 곳에 용담 해안도로를 따라 길게 만들어진 공원이다. 야간에 각종
					조명시설로 야간공원으로 유명하다. 특히, 해 진 저녁, 맞은 편에 있는 카페, 레스토랑, 식당에서 어영소공원의 야경을
					감상하기 좋아 많은 관광객이 찾고있다.</p>
			</div>
		</div>
	</div>
	<!-- footer -->
	<div>
		<jsp:include page="../../common/footer.jsp" />
	</div>
</body>
</html>