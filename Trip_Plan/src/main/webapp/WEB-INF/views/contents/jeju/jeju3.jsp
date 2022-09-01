<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="contextPath" value="${pageContext.request.contextPath}" />
<%request.setCharacterEncoding("UTF-8");%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>jeju3</title>
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
				<label>제주 테마코스</label>
				<h2>제주의 특별한 카페찾아가기</h2>
			</div>
			<div class="area_address">
				<span class="address">제주도</span> <span id="dist">코스 총거리 :
					23.54km</span>
			</div>
		</div>
		<div class="schedule_info">
			<ul class="schedule">
				<li style="float: left;"><span class="img"><img
						src="${contextPath}/resources/images/icon_cos_schedule1.gif"
						alt=""></span> <em>일정</em> <strong>당일여행</strong></li>
				<li style="margin-left: 50px;"><span class="img"><img
						src="${contextPath}/resources/images/icon_cos_theme1.gif" alt=""></span>
					<em>테마</em> <strong>맛코스</strong></li>
			</ul>
		</div>
		<div class="area_txtView">
			<div class="inr_wrap" style="overflow: visible; height: auto;">
				<div class="inr">
					<p>제주에는 다양한 먹거리 볼거리들이 너무 많지만 그 중에서도 특별히 즐길 수 있는 맛있는 찻집을 찾아가 보자.
						제주 도민만이 알 수 있는 디저트 카페와 특별한 체험을 즐겨볼 수 있는 이색적인 카페를 소개한다. 특히 동백꽃군락
						인근의 와랑와랑의 소담스런 분위기와 따뜻한 커피는 잊혀지지 않는 제주의 추억을 선사할 것이다.</p>
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
					center : new kakao.maps.LatLng(33.29854504525042,
							126.77692075204367), //지도 중심좌표
					level : 8
				//지도 확대레벨
				};

				var map = new kakao.maps.Map(container, options); //지도 생성
				var linePath = [ //선을 구성하는 좌표 배열, 이 좌표들을 이어서 선을 표시
				new kakao.maps.LatLng(33.27231225002305, 126.6765211178544), //와랑와랑
				new kakao.maps.LatLng(33.33077743345828, 126.8148180107789), //제주허브동산
				new kakao.maps.LatLng(33.32226788272906, 126.84226529525903), //제주민속촌
				new kakao.maps.LatLng(33.32558855742192, 126.8443912318574) //돌토고리족욕카페
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
				var markerPosition = new kakao.maps.LatLng(33.27231225002305,
						126.6765211178544); //와랑와랑
				var markerPosition2 = new kakao.maps.LatLng(33.33077743345828,
						126.8148180107789); //제주허브동산
				var markerPosition3 = new kakao.maps.LatLng(33.32226788272906,
						126.84226529525903); //제주민속촌
				var markerPosition4 = new kakao.maps.LatLng(33.32558855742192,
						126.8443912318574); //돌토고리족욕카페

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
				<a href="#" target="_blank" title="새창열기"> <img
					src="${contextPath}/resources/images/jeju3-1.jpg">
				</a>
			</div>
			<div class="right">
				<a href="#" target="_blank" title="새창열기">
					<h5 class="mvp_h5">와랑와랑</h5>
				</a>
				<p>제주의 겨울여행에서 빠지지 않는 코스인 제주 남부 지역 위미리 마을에 위치한 와랑와랑은 한겨울에 붉은 꽃을
					피워내는 매혹적인 동백나무 군락지에서 몇 걸음 떨어지지 않은 곳에 위치하고 있다. 다양한 종류의 커피와 차, 쿠키와 주스
					등을 판매하며, 그중에서도 단팥라떼와 찰떡구이는 와랑와랑의 겨울 별미이다.</p>
			</div>
		</div>

		<div class="line_wrap clearfix" name="Gyeongbokgung Palace(kr)">
			<div class="left">
				<a href="#" target="_blank" title="새창열기"> <img
					src="${contextPath}/resources/images/jeju3-2.jpg">
				</a>
			</div>
			<div class="right">
				<a href="#" target="_blank" title="새창열기">
					<h5 class="mvp_h5">제주허브동산</h5>
				</a>
				<p>현재 약 180여종의 허브와 우리산하의 야생화로 채워진 각양각색의 정원들과 작은 동산들, 그리고
					611.6m²(2,000평)의 체험 감귤농장 등 다양한 형태의 테마공원이 조성되어 있다. 또한 허브동산을 휘어감은
					산책로, 허브관련 제품을 구입할 수 있는 허브샵, 허브를 이용한 다양한 퓨전 음식을 맛볼 수 있는 카페, 허브에 대한
					지식과 정보를 공유하고 더욱 다양한 체험을 할 수 있는 허브체험관 등의 시설이 잘 구비되어 있어 연인 및 가족단위 혹은
					기업의 단체에서 자연학습 및 데이트 코스, 워크샵 등 여러가지 목적으로 이용 가능한 편안한 휴식처가 될 것이다.</p>
			</div>
		</div>
		<div class=" line_wrap clearfix" name="Gyeongbokgung Palace(kr)">
			<div class="left">
				<a href="#" target="_blank" title="새창열기"> <img
					src="${contextPath}/resources/images/jeju3-3.jpg">
				</a>
			</div>
			<div class="right">
				<a href="#" target="_blank" title="새창열기">
					<h5 class="mvp_h5">제주민속촌</h5>
				</a>
				<p>제주민속촌은 2001년에 개관한 제1종 전문 박물관으로 1890년대를 전시 기준 연대로 하여 제주의 민속자료를
					종합적으로 정리하여 전시하고 있으며, 100여채에 달하는 제주 전통가옥은 제주도민이 생활하였던 가옥과 돌, 기둥 등을
					그대로 옮겨와 복원해 전시하고 있다.</p>
			</div>
		</div>
		<div class=" line_wrap clearfix" name="Gyeongbokgung Palace(kr)">
			<div class="left">
				<a href="#" target="_blank" title="새창열기"> <img
					src="${contextPath}/resources/images/jeju3-4.jpg">
				</a>
			</div>
			<div class="right">
				<a href="#" target="_blank" title="새창열기">
					<h5 class="mvp_h5">돌토고리족욕카페</h5>
				</a>
				<p>표선해비치해변, 표선 포구 바로 뒤편에 위치한 디저트와 족욕을 즐길 수 있는 돌토고리카페는 검은 현무암으로
					만든 이색적인 족욕통과 직접 만드는 젤라또, 빵이 인기 있는 따뜻한 공간이다. 특히 이색적인 빵이 인기가 좋은데, 맛도
					맛이지만 다른 베이커리에는 없는 이 집만의 독특함이 있기 때문이다.</p>
			</div>
		</div>
	</div>
	<!-- footer -->
	<div>
		<jsp:include page="../../common/footer.jsp" />
	</div>
</body>
</html>