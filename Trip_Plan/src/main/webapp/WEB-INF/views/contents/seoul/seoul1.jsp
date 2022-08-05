<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c"  uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="contextPath" value="${pageContext.request.contextPath}"/>
<%  request.setCharacterEncoding("UTF-8"); %> 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>seoul1</title>
<link href="${contextPath}/resources/css/front.css" type="text/css" rel="stylesheet">
</head>
<body>
<!-- top menu -->
     <div>
        <jsp:include page="../../common/topmenu.jsp"/>
    </div>
<!-- side menu --> 
     <div>
        <jsp:include page="../../common/sidemenu.jsp"/>
    </div>
<!-- 본문 내용 -->
<!-- 조선의 왕들이 지극히 아끼던 공간 -->
<div class="contents_centered">
		<div class="titleType1">
			<div class="tit">
			    <label>서울 테마코스</label>
				<h2>조선의 왕들이 지극히 아끼던 공간</h2>
			</div>
			<div class="area_address">
				<span class="address">서울 종로구</span> <span id="dist">코스 총거리 :
					10.12km</span>
			</div>
		</div>
		<div class="schedule_info">
			<ul class="schedule">
				<li style="float: left;"><span class="img"><img
						src="${contextPath}/resources/images/icon_cos_schedule1.gif" alt=""></span>
					<em>일정</em> <strong>당일여행</strong></li>
				<li style="margin-left:50px;"><span class="img"><img
						src="${contextPath}/resources/images/icon_cos_theme1.gif" alt=""></span> <em>테마</em>
					<strong>가족코스</strong></li>
			</ul>
		</div>
		<div class="area_txtView"">
			<div class="inr_wrap" style="overflow: visible; height: auto;">
				<div class="inr">
					<p>우리나라를 대표하는 궁궐은 경복궁을 꼽는다. 그러나 유네스코에 등재된 것은 창덕궁이다. 창덕궁은 태종부터
						왕들이 경복궁보다 자주, 오래 머문 궁전이다. 이곳을 시작으로 민속박물관 등 서울 요지의 문화유산을 모두 볼 수 있는
						좋은 코스다.</p>
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
					center : new kakao.maps.LatLng(37.57609047340471,
							126.99420109470466), //지도 중심좌표
					level : 5
				//지도 확대레벨
				};

				var map = new kakao.maps.Map(container, options); //지도 생성
				var linePath = [ //선을 구성하는 좌표 배열, 이 좌표들을 이어서 선을 표시
				new kakao.maps.LatLng(37.581840913446065, 126.99162787647798), //창덕궁
				new kakao.maps.LatLng(37.58170870919596, 126.97906123732443), //국립민속박물관
				new kakao.maps.LatLng(37.578611720269464, 126.98008664070879), //국립현대미술관
				new kakao.maps.LatLng(37.57609047340471, 126.99420109470466), //종묘
				new kakao.maps.LatLng(37.57030172336719, 126.99990095364751) //광장시장
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
				var markerPosition = new kakao.maps.LatLng(37.581840913446065,
						126.99162787647798); //창덕궁
				var markerPosition2 = new kakao.maps.LatLng(37.58170870919596,
						126.97906123732443); //국립민속박물관
				var markerPosition3 = new kakao.maps.LatLng(37.578611720269464,
						126.98008664070879); //국립현대미술관
				var markerPosition4 = new kakao.maps.LatLng(37.57609047340471,
						126.99420109470466); //종묘
				var markerPosition5 = new kakao.maps.LatLng(37.57030172336719,
						126.99990095364751); //광장시장

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
				<a href="#"
					target="_blank" title="새창열기"> <img
					src="https://korean.visitseoul.net/comm/getImage?srvcId=MEDIA&amp;parentSn=31638&amp;fileTy=MEDIA&amp;fileNo=1"
					alt="경복궁 사진">
				</a>
			</div>
			<div class="right">
				<a href="#"
					target="_blank" title="새창열기">
					<h5 class="mvp_h5">창덕궁과 후원 [유네스코 세계문화유산]</h5>
				</a>
				<p>창덕궁(사적)은 1405년 경복궁 다음으로 지어진 별궁이었다. 정궁인 경복궁의 동쪽 방면에 있다 해서 ''동궐''이라고도 했다. 
				</p>
			</div>
		</div>
		<div class=" line_wrap clearfix" name="Gyeongbokgung Palace(kr)">
			<div class="left">
				<a href="#"
					target="_blank" title="새창열기"> <img
					src="https://korean.visitseoul.net/comm/getImage?srvcId=MEDIA&amp;parentSn=31638&amp;fileTy=MEDIA&amp;fileNo=1"
					alt="경복궁 사진">
				</a>
			</div>
			<div class="right">
				<a href="#"
					target="_blank" title="새창열기">
					<h5 class="mvp_h5">경복궁</h5>
				</a>
				<p>조선 왕조의 역사와 위엄을 느낄 수 있는 한국을 대표하는 궁. 한복을 입고 경복궁에서 시간 여행을 떠나보자.
				</p>
			</div>
		</div>	
		<div class=" line_wrap clearfix" name="Gyeongbokgung Palace(kr)">
			<div class="left">
				<a href="#"
					target="_blank" title="새창열기"> <img
					src="${contextPath}/resources/images/seoul1.jpg"
					alt="경복궁 사진">
				</a>
			</div>
			<div class="right">
				<a href="#"
					target="_blank" title="새창열기">
					<h5 class="mvp_h5">창덕궁과 후원 [유네스코 세계문화유산]</h5>
				</a>
				<p>조선 왕조의 역사와 위엄을 느낄 수 있는 한국을 대표하는 궁. 한복을 입고 경복궁에서 시간 여행을 떠나보자.
				</p>
			</div>
		</div>
		<div class=" line_wrap clearfix" name="Gyeongbokgung Palace(kr)">
			<div class="left">
				<a href="#"
					target="_blank" title="새창열기"> <img
					src="https://korean.visitseoul.net/comm/getImage?srvcId=MEDIA&amp;parentSn=31638&amp;fileTy=MEDIA&amp;fileNo=1"
					alt="경복궁 사진">
				</a>
			</div>
			<div class="right">
				<a href="#"
					target="_blank" title="새창열기">
					<h5 class="mvp_h5">경복궁</h5>
				</a>
				<p>조선 왕조의 역사와 위엄을 느낄 수 있는 한국을 대표하는 궁. 한복을 입고 경복궁에서 시간 여행을 떠나보자.
				</p>
			</div>
		</div>	
		<div class=" line_wrap clearfix" name="Gyeongbokgung Palace(kr)">
			<div class="left">
				<a href="#"
					target="_blank" title="새창열기"> <img
					src="https://korean.visitseoul.net/comm/getImage?srvcId=MEDIA&amp;parentSn=31638&amp;fileTy=MEDIA&amp;fileNo=1"
					alt="경복궁 사진">
				</a>
			</div>
			<div class="right">
				<a href="#"
					target="_blank" title="새창열기">
					<h5 class="mvp_h5">창덕궁과 후원 [유네스코 세계문화유산]</h5>
				</a>
				<p>조선 왕조의 역사와 위엄을 느낄 수 있는 한국을 대표하는 궁. 한복을 입고 경복궁에서 시간 여행을 떠나보자.
				</p>
			</div>
		</div>				
	</div>	
	<!-- footer -->
     <div>
        <jsp:include page="../../common/footer.jsp"/>
    </div>
</body>
</html>