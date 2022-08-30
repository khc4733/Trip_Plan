<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c"  uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="contextPath" value="${pageContext.request.contextPath}"/>
<%  request.setCharacterEncoding("UTF-8"); %> 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>daegu3</title>
<link href="${contextPath}/resources/css/front.css" type="text/css" rel="stylesheet">
</head>
<body>
<!-- top menu -->
     <div class="sub_menubar">
        <jsp:include page="../../common/topmenu.jsp"/>
    </div>
<!-- side menu --> 
     <div>
        <jsp:include page="../../common/sidemenu.jsp"/>
    </div>
<!-- 본문 내용 -->
<!-- 대구 서부시장 구석구석 맛집탐방 -->
<div class="contents_centered">
		<div class="titleType1">
			<div class="tit">
			    <label>대구 테마코스</label>
				<h2>대구 서부시장 구석구석 맛집탐방</h2>
			</div>
			<div class="area_address">
				<span class="address">대구 서구</span> <span id="dist">코스 총거리 :
					9.16km</span>
			</div>
		</div>
		<div class="schedule_info">
			<ul class="schedule">
				<li style="float: left;"><span class="img"><img
						src="${contextPath}/resources/images/icon_cos_schedule1.gif" alt=""></span>
					<em>일정</em> <strong>당일여행</strong></li>
				<li style="margin-left:50px;"><span class="img"><img
						src="${contextPath}/resources/images/icon_cos_theme5.gif" alt=""></span> <em>테마</em>
					<strong>맛코스</strong></li>
			</ul>
		</div>
		<div class="area_txtView">
			<div class="inr_wrap" style="overflow: visible; height: auto;">
				<div class="inr">
					<p>이 코스는 대구 중심지에서 맛있는 것을 찾아 즐기는 코스다. 다양한 먹거리와 업그레이드된 재래시장의 정취, 시골읍내의 정서가 그대로 묻어있는 
					달성공원 북비산 네거리 부근의 아나고골목을 돌아보자. 회로 먹어도 좋고 구워 먹어도 좋은 아나고의 고소한 냄새가 절로 식욕을 자극할 것이다. 
					선교사스윗즈주택의 고풍스러움도 함께 감상해보자!</p>
				</div>
			</div>
			<div class="cont_more" style="display: none;">
				<button type="button" class="btn_more" title="내용더보기">
					<span>더보기</span>
				</button>
			</div>
		</div>
		<div id="map">
			<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=2b2ca9aeab329e586b8575704eaf0afa"></script>
			<script>
				var container = document.getElementById('map'); //지도를 표시할 div
				var options = {
					center : new kakao.maps.LatLng(35.87361219253836,
							128.5786126187788), //지도 중심좌표
					level : 5
				//지도 확대레벨
				};
	
				var map = new kakao.maps.Map(container, options); //지도 생성
				var linePath = [ //선을 구성하는 좌표 배열, 이 좌표들을 이어서 선을 표시
				new kakao.maps.LatLng(35.867635335352716, 128.58494297636113), //선교사 스윗즈주택
				new kakao.maps.LatLng(35.874750619480714, 128.57220229880883), //서부 오미(味)가미(味)거리
				new kakao.maps.LatLng(35.876803095295024, 128.5778621160305) //인동촌 아나고골목
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
				var markerPosition = new kakao.maps.LatLng(35.867635335352716,
						128.58494297636113); //선교사 스윗즈주택
				var markerPosition2 = new kakao.maps.LatLng(35.874750619480714,
						128.57220229880883); //서부 오미(味)가미(味)거리
				var markerPosition3 = new kakao.maps.LatLng(35.876803095295024,
						128.5778621160305); //인동촌 아나고골목
	
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
	
				// 마커가 지도 위에 표시되도록 설정합니다
				marker.setMap(map);
				marker2.setMap(map);
				marker3.setMap(map);
			</script>
		</div>
		<div class=" line_wrap clearfix" name="Gyeongbokgung Palace(kr)">
			<div class="left">
				<a href="#" target="_blank" title="새창열기"> 
					<img src="${contextPath}/resources/images/daegu3-1.jpg">
				</a>
			</div>
			<div class="right">
				<a href="#" target="_blank" title="새창열기">
					<h5 class="mvp_h5">선교사 스윗즈주택</h5>
				</a>
				<p>본 건물은 1910년경 미국인 선교사들이 그들의 주택으로 지은 것으로 스윗즈 선교사 등이 거주하였다. 평면구성은 남쪽 우측부에 현관으로 이어지는 베란다를 두고 
				현관홀을 통하여 거실과 응접실을 직접 연결하였으며, 거실을 중심으로 침실, 계단실, 욕실, 부엌, 식당 등을 배치하였다. 외관은 안산암의 성돌로 바른층 쌓기의 기초를 하고 
				그 위에 붉은 벽돌을 4단 길이로 1단은 마구리로 쌓았다. 지붕은 한식기와를 이은 박공지붕이었으나 후에 함석으로 개조하였다. 
				</p>
			</div>
		</div>
		
		<div class=" line_wrap clearfix" name="Gyeongbokgung Palace(kr)">
			<div class="left">
				<a href="#" target="_blank" title="새창열기">
					<img src="${contextPath}/resources/images/daegu3-2.jpg">
				</a>
			</div>
			<div class="right">
				<a href="#" target="_blank" title="새창열기">
					<h5 class="mvp_h5">서부 오미(味)가미(味)거리</h5>
				</a>
				<p>오미(味)가미(味)에서 유추할 수 있 듯, ''오면서 먹고 가면서 먹는다''라는 뜻으로 다양한 국적의 음식과 더불어 독특한 메뉴들도 함께 즐길 수 있다. 
				가게명도 상당히 독특하고 취급하고 있는 음식이나 상품 또한 지역내 그 어디에서도 찾아보기 힘들기에 기존 먹자거리에서 식상함을 느낀 이들의 발길이 이어져 빠르게 사람들의 입소문을 타고 있다. 
				50여개의 음식점뿐만 아니라, 공방, 악세사리점, 전통 시장 점포 등이 함께 어우러져 있기에 임으로 눈으로 즐길 수 있다.
				</p>
			</div>
		</div>	
		<div class=" line_wrap clearfix" name="Gyeongbokgung Palace(kr)">
			<div class="left">
				<a href="#" target="_blank" title="새창열기">
					<img src="${contextPath}/resources/images/daegu3-3.jpg">
				</a>
			</div>
			<div class="right">
				<a href="#" target="_blank" title="새창열기">
					<h5 class="mvp_h5">인동촌 아나고골목</h5>
				</a>
				<p>시골읍내의 정서가 그대로 묻어나는 곳으로, 달성공원 담벼락에서 북비산네거리 쪽으로 150m에 이른다. 현재 20여개의 식당이 새벽까지 손님맞이에 여념이 없다. 
				아나고는 회로 먹어도 좋고, 구워 먹어도 그 맛이 일품이다. 술안주로도 제격이며, 양념장에 버무려 시원한 물김치와 함께 먹기도 한다. 단백질과 아미노산이 풍부해 여름철 
				기력회복에 좋다.
				</p>
			</div>
		</div>
	<!-- footer -->
     <div>
        <jsp:include page="../../common/footer.jsp"/>
    </div>
</body>
</html>




		
	
