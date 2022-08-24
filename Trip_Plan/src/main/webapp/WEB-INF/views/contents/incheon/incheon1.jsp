<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c"  uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="contextPath" value="${pageContext.request.contextPath}"/>
<%  request.setCharacterEncoding("UTF-8"); %> 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>incheon1</title>
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
<!-- 인천의 근현대의 흔적을 만나다 -->
<div class="contents_centered">
		<div class="titleType1">
			<div class="tit">
			    <label>인천 테마코스</label>
				<h2>인천의 근현대의 흔적을 만나다</h2>
			</div>
			<div class="area_address">
				<span class="address">인천 중구</span> <span id="dist">코스 총거리 :
					37km</span>
			</div>
		</div>
		<div class="schedule_info">
			<ul class="schedule">
				<li style="float: left;"><span class="img"><img
						src="${contextPath}/resources/images/icon_cos_schedule1.gif" alt=""></span>
					<em>일정</em> <strong>당일여행</strong></li>
				<li style="margin-left:50px;"><span class="img"><img
						src="${contextPath}/resources/images/icon_cos_theme2.gif" alt=""></span> <em>테마</em>
					<strong>나홀로코스</strong></li>
			</ul>
		</div>
		<div class="area_txtView">
			<div class="inr_wrap" style="overflow: visible; height: auto;">
				<div class="inr">
					<p>자유공원은 우리나라 최초의 서구식 공원으로 인천 개항기부터 일제강점기, 한국전쟁 전후에 걸쳐 근현대사의 진면목을 만나볼 수 있는 곳이다. 
					인천 차이나타운을 시작해 삼국지 벽화거리를 거쳐 자유공원을 둘러본 뒤 일제강점기 때의 역사가 고스란히 남아 있는 은행지점을 둘러보면 인천의 역사를 한 번에 만나볼 수 있다.
					</p>
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
					center: new kakao.maps.LatLng(37.47555848710588, 126.6123880056454), //지도 중심좌표
					level: 5 //지도 확대레벨
				};
		
				var map = new kakao.maps.Map(container, options); //지도 생성
				var linePath = [ //선을 구성하는 좌표 배열, 이 좌표들을 이어서 선을 표시
				    new kakao.maps.LatLng(37.47558925750467, 126.62188422873038), //자유공원
				    new kakao.maps.LatLng(37.47420474605553, 126.6193221404238), //인천 차이나타운
				    new kakao.maps.LatLng(37.47285770014332, 126.6214118829507), //(구)인천일본제58은행지점
				    new kakao.maps.LatLng(37.476481034360546, 126.60394097240616) // 월미공원
				];
		
				// 지도에 표시할 선을 생성합니다
				var polyline = new kakao.maps.Polyline({
				    path: linePath, // 선을 구성하는 좌표배열 입니다
				    strokeWeight: 3, // 선의 두께 입니다
				    strokeColor: '#e30e0e', // 선의 색깔입니다
				    strokeOpacity: 0.7, // 선의 불투명도 입니다 1에서 0 사이의 값이며 0에 가까울수록 투명합니다
				    strokeStyle: 'solid' // 선의 스타일입니다
				});
				
				// 지도에 선을 표시합니다 
				polyline.setMap(map);  
				
				// 마커가 표시될 위치입니다 
				var markerPosition  = new kakao.maps.LatLng(37.47558925750467, 126.62188422873038); //자유공원
				var markerPosition2  = new kakao.maps.LatLng(37.47420474605553, 126.6193221404238); //인천 차이나타운
				var markerPosition3  = new kakao.maps.LatLng(37.47285770014332, 126.6214118829507); //(구)인천일본제58은행지점
				var markerPosition4  = new kakao.maps.LatLng(37.476481034360546, 126.60394097240616); // 월미공원
		
				// 마커를 생성합니다
				var marker = new kakao.maps.Marker({
				    position: markerPosition
				});
				var marker2 = new kakao.maps.Marker({
				    position: markerPosition2
				});
				var marker3 = new kakao.maps.Marker({
				    position: markerPosition3
				});
				
				var marker4 = new kakao.maps.Marker({
				    position: markerPosition4
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
				<a href="#" target="_blank" title="새창열기"> 
					<img src="${contextPath}/resources/images/incheon1-1.jpg">
				</a>
			</div>
			<div class="right">
				<a href="#" target="_blank" title="새창열기">
					<h5 class="mvp_h5">자유공원</h5>
				</a>
				<p>자유공원은 인천항 개항 5년 만에 만들어진 우리나라 최초의 서구식 공원이다. 지대가 높은데다 터가 넓고 숲이 울창해 산책하기 알맞다. 
				정상엔 한미수교 백주년기념탑이 있다. 1882년 4월 우리나라와 미국 사이에 조인된 한미수호 통상조약체결을 기념하기 위해 100주년이 되는1982년에 세운 것이다. 
				</p>
			</div>
		</div>
		<div class=" line_wrap clearfix" name="Gyeongbokgung Palace(kr)">
			<div class="left">
				<a href="#" target="_blank" title="새창열기">
					<img src="${contextPath}/resources/images/incheon1-2.jpg">
				</a>
			</div>
			<div class="right">
				<a href="#" target="_blank" title="새창열기">
					<h5 class="mvp_h5">인천 차이나타운</h5>
				</a>
				<p>인천 차이나타운은 1883년 인천항이 개항되고 1884년 이 지역이 청의 치외법권(治外法權) 지역으로 지정되면서 생겨났다. 
				과거에는 중국에서 수입된 물품들을 파는 상점들이 대부분이었으나 현재는 거의가 중국 음식점이다.
				</p>
			</div>
		</div>	
		<div class=" line_wrap clearfix" name="Gyeongbokgung Palace(kr)">
			<div class="left">
				<a href="#" target="_blank" title="새창열기">
					<img src="${contextPath}/resources/images/incheon1-3.jpg">
				</a>
			</div>
			<div class="right">
				<a href="#" target="_blank" title="새창열기">
					<h5 class="mvp_h5">(구)인천일본제58은행지점</h5>
				</a>
				<p>일본 오사카에 본점을 둔 일본 제 58은행이 설치한 인천지점으로 1892년에 개점하였다. 
				1946년에 조흥은행이 인천지점으로 사용하였으나 1958년 이후 신사옥을 지어 옮겨가면서 적십자사 경기도지사로 사용하다가 현재는 인천 중구 요식업조합에서 사용하고 있다. 
				</p>
			</div>
		</div>
		<div class=" line_wrap clearfix" name="Gyeongbokgung Palace(kr)">
			<div class="left">
				<a href="#" target="_blank" title="새창열기">
					<img src="${contextPath}/resources/images/incheon1-4.jpg">
				</a>
			</div>
			<div class="right">
				<a href="#" target="_blank" title="새창열기">
					<h5 class="mvp_h5">월미공원</h5>
				</a>
				<p>월미공원은 50여년간 군부대 주둔으로 시민의 출입이 제한되었으니 2001년 9월 10일 인천광역시가 국방부로 부터 인수하여 공원으로 변경하여 시민들에게 개방하게 되었다.
				월미공원은 자연생태계가 잘 보전되어 있을뿐만 아니라 근현대사 열강들의 각축장으로 그 역사성 또한 높아 자연생태공원 및 역사공원으로 조성되어 있다. 
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
	