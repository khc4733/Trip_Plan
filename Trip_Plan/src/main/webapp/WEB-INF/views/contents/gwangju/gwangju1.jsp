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
<title>gwangju1</title>
<link href="${contextPath}/resources/css/front.css" type="text/css"
	rel="stylesheet">
</head>
<body>
	<!-- top menu -->
     <div class="sub_menubar">
        <jsp:include page="../../common/topmenu.jsp"/>
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
				<label>광주 테마코스</label>
				<h2>광주 서구 8경 중 4경을 찾아 떠나는 여행</h2>
			</div>
			<div class="area_address">
				<span class="address">광주 서구</span> <span id="dist">코스 총거리 :
					14.14km</span>
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
					<p>광주유니버시아드 주경기장이 있는 광주 서구에는 여덟가지의 풍경이 있다. 자연풍광과 문화유산이 어우러져 다양한
						볼거리를 가지고 있는 광주 서구의 8경, 그 중 제 1경 만귀정과 6경 양동시장, 7경 운천사마애여래좌상, 8경
						5·18 기념공원을 찾아 떠나보자!</p>
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
					center : new kakao.maps.LatLng(35.14090537632508,
							126.87361111074452), //지도 중심좌표
					level : 7
				//지도 확대레벨
				};

				var map = new kakao.maps.Map(container, options); //지도 생성
				var linePath = [ //선을 구성하는 좌표 배열, 이 좌표들을 이어서 선을 표시
				new kakao.maps.LatLng(35.1210995015995, 126.83384074738474), //만귀정
				new kakao.maps.LatLng(35.14203730318903, 126.85418660731473), //운천사마애여래좌상
				new kakao.maps.LatLng(35.156507155248875, 126.85671802603487), //5.18기념공원
				new kakao.maps.LatLng(35.15420887996721, 126.9022131959107) //광주 양동시장
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
				var markerPosition = new kakao.maps.LatLng(35.1210995015995,
						126.83384074738474); //만귀정
				var markerPosition2 = new kakao.maps.LatLng(35.14203730318903,
						126.85418660731473); //운천사마애여래좌상
				var markerPosition3 = new kakao.maps.LatLng(35.156507155248875,
						126.85671802603487); //5.18기념공원
				var markerPosition4 = new kakao.maps.LatLng(35.15420887996721,
						126.9022131959107); //광주 양동시장

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
				 <img
					src="${contextPath}/resources/images/gwangju1-1.jpg">
			</div>
			<div class="right">	
					<h5 class="mvp_h5">장창우가 후학을 가르치던 곳, 만귀정</h5>
				<p>서구 세하동 동하마을에 있는 정자이다. 효우공(孝友公) 장창우(張昌羽)가 후학을 가르치며 만년을 보내기 위해
					창건하였다고 한다. 그러나 원래의 건물은 세월이 지나면서 무너져 없어졌고, 후손들에 의한 1934년의 중건과 1945년의
					중수를 거쳐 오늘에 이른다.</p>
			</div>
		</div>

		<div class=" line_wrap clearfix" name="Gyeongbokgung Palace(kr)">
			<div class="left">
				 <img
					src="${contextPath}/resources/images/gwangju1-2.jpg">
			</div>
			<div class="right">
				
					<h5 class="mvp_h5">운천사마애여래좌상</h5>
				<p>원효대사가 무등산 원효사에 머무르던 어느 날 서쪽 하늘에 서기(瑞氣)가 가득함을 보고 제자 보광화상을 현지에
					보냈더니 뜻밖에 큰 바위에서 빛이 솟아나오므로 그 곳에 불상을 새긴 것이 이 마애불이라고 전하며, 이 곳에 절을 지어
					정토사라 불렀다 하나 고증할 기록이나 유물은 없다.</p>
			</div>
		</div>
		<div class=" line_wrap clearfix" name="Gyeongbokgung Palace(kr)">
			<div class="left">
				 <img
					src="${contextPath}/resources/images/gwangju1-3.jpg">
			</div>
			<div class="right">
				
					<h5 class="mvp_h5">5·18 기념공원</h5>
				<p>5·18 기념공원은 5·18의 교훈을 올바르게 계승, 발전하기 위해 조성된 시민 휴식공간으로, 상무대 이전부지
					일부를 시민공원부지로 무상양여 받아 공원을 조성하였다. 이곳은 넓이는 20만 4,985㎡로 전통연못과 다양한 수목들이
					자리하고 있어 아이들의 자연학습장으로도 널리 활용되고 있기도 하다.</p>
			</div>
		</div>
		<div class=" line_wrap clearfix" name="Gyeongbokgung Palace(kr)">
			<div class="left">
				 <img
					src="${contextPath}/resources/images/gwangju1-4.jpg">
			</div>
			<div class="right">
					<h5 class="mvp_h5">광주 양동시장</h5>
				<p>1910년대에 광주교 아래 백사장에서 달마다 2일과 7일에 열렸던 장이 양동시장의 기원으로 알려져있다.
					양동시장은 ‘후덕한 인심의 표상’이라고 불릴 만큼 각양각색의 물산들이 산적해 있고 먹을거리 또한 풍성해 광주 시민들에겐
					‘손 큰 시장’으로도 알려져 있다.</p>
			</div>
		</div>
	</div>
	<!-- footer -->
	<div>
		<jsp:include page="../../common/footer.jsp" />
	</div>
</body>
</html>