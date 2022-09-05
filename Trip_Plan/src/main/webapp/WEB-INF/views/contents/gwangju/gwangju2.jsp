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
<title>gwangju2</title>
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
				<label>광주 테마코스</label>
				<h2>광주의 예술가거리와 번화한 금남로</h2>
			</div>
			<div class="area_address">
				<span class="address">광주 북구</span> <span id="dist">코스 총거리 :
					22.65km</span>
			</div>
		</div>
		<div class="schedule_info">
			<ul class="schedule">
				<li style="float: left;"><span class="img"><img
						src="${contextPath}/resources/images/icon_cos_schedule1.gif"
						alt=""></span> <em>일정</em> <strong>당일여행</strong></li>
				<li style="margin-left: 50px;"><span class="img"><img
						src="${contextPath}/resources/images/icon_cos_theme1.gif" alt=""></span>
					<em>테마</em> <strong>나홀로코스</strong></li>
			</ul>
		</div>
		<div class="area_txtView">
			<div class="inr_wrap" style="overflow: visible; height: auto;">
				<div class="inr">
					<p>번화한 광주를 둘러볼 좋은 코스다. 호수생태공원의 아름다움 전경을 거닐고 남도 예술의 진수가 숨 쉬는 예술의
						거리, 가장 번화한 젊은이의 거리 금남로 쏘다니기도 즐거운 볼거리를 제공할 것이다. 겨울이라면 기나긴 지하상가 쇼핑도
						좋겠다. 광주는 잘 보존된 한옥가옥이 많다. 최승효 가옥도 그중의 하나다.</p>
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
					center : new kakao.maps.LatLng(35.16278746495964,
							126.95591722371582), //지도 중심좌표
					level : 7
				//지도 확대레벨
				};

				var map = new kakao.maps.Map(container, options); //지도 생성
				var linePath = [ //선을 구성하는 좌표 배열, 이 좌표들을 이어서 선을 표시
				new kakao.maps.LatLng(35.18438975406025, 127.0012186698596), //광주호 호수생태원
				new kakao.maps.LatLng(35.149556653607206, 126.9188942448176), //광주 예술의 거리
				new kakao.maps.LatLng(35.1515510253731, 126.91257364516574), //제일반점
				new kakao.maps.LatLng(35.15497290704111, 126.90813057703514), //금남로
				new kakao.maps.LatLng(35.141434183626366, 126.9138847918809) //최승효가옥
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
				var markerPosition = new kakao.maps.LatLng(35.18438975406025,
						127.0012186698596); //광주호 호수생태원
				var markerPosition2 = new kakao.maps.LatLng(35.149556653607206,
						126.9188942448176); //광주 예술의 거리
				var markerPosition3 = new kakao.maps.LatLng(35.1515510253731,
						126.91257364516574); //제일반점
				var markerPosition4 = new kakao.maps.LatLng(35.15497290704111,
						126.90813057703514); //금남로
				var markerPosition5 = new kakao.maps.LatLng(35.141434183626366,
						126.9138847918809); //최승효가옥

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

				var marker5 = new kakao.maps.Marker({
					position : markerPosition5
				});

				// 마커가 지도 위에 표시되도록 설정합니다
				marker.setMap(map);
				marker2.setMap(map);
				marker3.setMap(map);
				marker4.setMap(map);
				marker5.setMap(map);
			</script>
		</div>
		<div class=" line_wrap clearfix" name="Gyeongbokgung Palace(kr)">
			<div class="left">
				<img src="${contextPath}/resources/images/gwangju2-1.jpg">

			</div>
			<div class="right">

				<h5 class="mvp_h5">광주호 호수생태원</h5>

				<p>광주호(光州湖)의 호숫가 인근에 184,948m²의 부지에 자연관찰원, 자연학습장, 잔디휴식광장, 수변 습지
					등 테마별 단지로 조성된 생태공원이다. 광주시내에서 약 30분 정도 거리에 있어, 시민들이 찾기가 좋아 2006년 3월에
					개장한 후 아이들의 자연생태학습장이자 시민들의 휴식공간으로 이용된다.</p>
			</div>
		</div>

		<div class=" line_wrap clearfix" name="Gyeongbokgung Palace(kr)">
			<div class="left">
				<img src="${contextPath}/resources/images/gwangju2-2.jpg">

			</div>
			<div class="right">

				<h5 class="mvp_h5">광주 예술의 거리</h5>

				<p>광주광역시를 대표하는 거리는 바로 광주 예술의 거리이다.예술의 거리는 호남문화와 예술의 중심지인 예향 광주의
					전통을 계승 발전시키기 위해 조성됐다. 현재 동호인의 편의도모를 위해 서화, 도자기, 공예품 등 이 지방 예술의 상징적
					작품을 집산하여 전시, 판매하고 있으며, 한국화, 서예, 남도창을 중심으로 한 남도예술의 진수를 누구나 손쉽게 접할 수
					있는 명소이다.</p>
			</div>
		</div>
		<div class=" line_wrap clearfix" name="Gyeongbokgung Palace(kr)">
			<div class="left">
				<img src="${contextPath}/resources/images/gwangju2-3.jpg">

			</div>
			<div class="right">

				<h5 class="mvp_h5">추억이 가득한 옛날 짜장이 일품인 중식당</h5>

				<p>제일반점은 충장로 거리에 있는 중국요리 전문점이다. 1960년대에 광주에서 시작하여 50여 년간 영업 중인
					중식당이다. 볶은 춘장과 야채, 감자, 돼지고기 특수부위를 넣어 요리하는 옛날식 자장면, 돼지고기 등심 부위로 만드는
					탕수육 등 다양한 중국요리 메뉴를 제공한다.</p>
			</div>
		</div>
		<div class=" line_wrap clearfix" name="Gyeongbokgung Palace(kr)">
			<div class="left">
				<img src="${contextPath}/resources/images/gwangju2-4.jpg">

			</div>
			<div class="right">

				<h5 class="mvp_h5">금남로</h5>

				<p>금남로는 관청가로 형성되기 시작하여 지금은 수많은 은행, 보험, 관공서 등 빌딩들이 들어서서 광주의 중추
					기능을 하고 있다. 5.18 추모 행사때는 온 시민이 금남로에 모여 광주의 혼과 넋을 위로하고 그 날의 아픔을 민족적,
					국가적 힘으로 승화시키기 위해 대동의 한마당이 연출되는 곳이기도 하다.</p>
			</div>
		</div>
		<div class=" line_wrap clearfix" name="Gyeongbokgung Palace(kr)">
			<div class="left">
				<img src="${contextPath}/resources/images/gwangju2-5.jpg"> </a>
			</div>
			<div class="right">

				<h5 class="mvp_h5">최승효가옥</h5>

				<p>최승효가옥은 양림산 동남쪽 끝 부분에 위치하고 있는 전통가옥이다. 건물은 동향으로 지었으며, 정면 여덟 칸,
					측면 네 칸의 매우 큰 규모로 이루어져 있다. 건물의 구조를 살펴보면 일자형 평면의 팔작(八作)집이면서도 우측의 경사진
					부지를 자연 그대로 이용하여 1퇴(退) 공간의 반지하층을 구성하여 율동감을 주었다.</p>
			</div>
		</div>
	</div>
	<!-- footer -->
	<div>
		<jsp:include page="../../common/footer.jsp" />
	</div>
</body>
</html>