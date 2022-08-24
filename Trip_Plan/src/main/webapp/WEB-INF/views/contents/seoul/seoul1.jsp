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
    <div class="sub_menubar">
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
		<div class="area_txtView">
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
			<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=2b2ca9aeab329e586b8575704eaf0afa"></script>
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
				<a href="#" target="_blank" title="새창열기"> 
					<img src="${contextPath}/resources/images/seoul1-1.jpg">
				</a>
			</div>
			<div class="right">
				<a href="#" target="_blank" title="새창열기">
					<h5 class="mvp_h5">창덕궁과 후원 [유네스코 세계문화유산]</h5>
				</a>
				<p>창덕궁(사적)은 1405년 경복궁 다음으로 지어진 별궁이었다. 정궁인 경복궁의 동쪽 방면에 있다 해서 ''동궐''이라고도 했다. 
				창덕궁은 1997년 12월 이탈리아 나폴리에서 열린 유네스코(UNESCO) 세계 유산위원회에서 수원 화성과 함께 세계문화유산으로 등록되었다.
				</p>
			</div>
		</div>
		
		<div class=" line_wrap clearfix" name="Gyeongbokgung Palace(kr)">
			<div class="left">
				<a href="#" target="_blank" title="새창열기">
					<img src="${contextPath}/resources/images/seoul1-2.jpg">
				</a>
			</div>
			<div class="right">
				<a href="#" target="_blank" title="새창열기">
					<h5 class="mvp_h5">국립민속박물관&국립민속박물관 어린이박물관</h5>
				</a>
				<p>국립민속박물관은 우리나라 전통생활양식과 관련된 4,000여 점의 민속자료가 전시된 있는 국내 유일의 민속생활사 관련 국립·종합박물관이다.
				민속문화의 연구·수집·보존과 문화교육 및 생활문화 전시로 전통문화교육의 현장이다.
				3개의 상설전시실과 2개의 기획전시실이 있으며, 다양한 문화교육 프로그램과 행사에 참여 할 수 있다.
				</p>
			</div>
		</div>	
		<div class=" line_wrap clearfix" name="Gyeongbokgung Palace(kr)">
			<div class="left">
				<a href="#" target="_blank" title="새창열기">
					<img src="${contextPath}/resources/images/seoul1-3.jpg">
				</a>
			</div>
			<div class="right">
				<a href="#" target="_blank" title="새창열기">
					<h5 class="mvp_h5">국립현대미술관(서울관)</h5>
				</a>
				<p>국립현대미술관 서울관은 동시대 현대미술을 중점적으로 다루는 미술관이다. 
				1986년 과천관, 1998년 개관한 덕수궁관에 이어 2013년 개관한 서울관은 조선시대 소격서, 종친부, 규장각, 사간원이 있던 자리에 위치해 있다.
				서울관의 위치는 한국전쟁 후 서울대 의대 부속병원, 국군수도통합병원 등이 위치했던 곳으로 역사적 유래의 중심지이다.
				</p>
			</div>
		</div>
		<div class=" line_wrap clearfix" name="Gyeongbokgung Palace(kr)">
			<div class="left">
				<a href="#" target="_blank" title="새창열기">
					<img src="${contextPath}/resources/images/seoul1-4.jpg">
				</a>
			</div>
			<div class="right">
				<a href="#" target="_blank" title="새창열기">
					<h5 class="mvp_h5">종묘 [유네스코 세계문화유산]</h5>
				</a>
				<p>종묘는 조선왕조의 역대 왕과 왕비 그리고 사후에 추존된 왕과 왕비의 신주(神主)를 모신 사당이다. 
				56,500평의 경내에 종묘정전을 비롯, 별묘인 영녕전과 전사청, 어숙실, 향대청, 신당 등의 건물이 있다. 
				여기에 제사를 지내는 종묘대제(宗廟大祭)는 삼국 시대부터 있었던 국가적인 행사였다.
				</p>
			</div>
		</div>	
		<div class=" line_wrap clearfix" name="Gyeongbokgung Palace(kr)">
			<div class="left">
				<a href="#" target="_blank" title="새창열기">
					<img src="${contextPath}/resources/images/seoul1-5.jpg">
				</a>
			</div>
			<div class="right">
				<a href="#" target="_blank" title="새창열기">
					<h5 class="mvp_h5">광장시장</h5>
				</a>
				<p>1905년 고종 42년 을사조약 체결 후 실질적으로 주권행사는 일본이 장악했고 따라서 경제침략 정책을 기도한 바 
				그 예로서 남대문시장 경영권 장악하였고 경제적인 돌파구로 새롭게 문을 연 것이 종로의 광장시장이다.
				1905년 우리 나라 최초의 상설 시장 이 탄생한 순간이다.
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