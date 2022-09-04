<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c"  uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="contextPath" value="${pageContext.request.contextPath}"/>
<%  request.setCharacterEncoding("UTF-8"); %> 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>daejeon2</title>
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
<!-- 도시의 자연 속에서 휴식을 취하다 -->
<div class="contents_centered">
		<div class="titleType1">
			<div class="tit">
			    <label>대전 테마코스</label>
				<h2>도시의 자연 속에서 휴식을 취하다</h2>
			</div>
			<div class="area_address">
				<span class="address">대전 동구</span> <span id="dist">코스 총거리 :
					43km</span>
			</div>
		</div>
		<div class="schedule_info">
			<ul class="schedule">
				<li style="float: left;"><span class="img"><img
						src="${contextPath}/resources/images/icon_cos_schedule1.gif" alt=""></span>
					<em>일정</em> <strong>당일여행</strong></li>
				<li style="margin-left:50px;"><span class="img"><img
						src="${contextPath}/resources/images/icon_cos_theme4.gif" alt=""></span> <em>테마</em>
					<strong>힐링코스</strong></li>
			</ul>
		</div>
		<div class="area_txtView">
			<div class="inr_wrap" style="overflow: visible; height: auto;">
				<div class="inr">
					<p>호반의 여름은 푸른빛이다. 대청호를 둘러싼 버드나무도, 버드나무가 머리를 길게 늘어트린 호수도 푸르다. 
					오백리에 다다르는 이 길은 걸어도 좋고 드라이브 코스로도 좋다. 푸른 길이 심심하다면 계족산 황톳길을 따라 온몸에 붉은 물을 들여 보자. 
					시원한 황토 감촉에 여름 더위는 한풀 물러난다. 시원한 바닥분수와 여름밤의 버스킹이 열리는 한밭수목원에서 마무리하면 여름 나들이 완성이다.
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
					center: new kakao.maps.LatLng(36.384927794814864, 127.42971905867657), //지도 중심좌표
					level: 7 //지도 확대레벨
				};
		
				var map = new kakao.maps.Map(container, options); //지도 생성
				var linePath = [ //선을 구성하는 좌표 배열, 이 좌표들을 이어서 선을 표시
					new kakao.maps.LatLng(36.37378336017493, 127.47190337018795), //대청호오백리길
				    new kakao.maps.LatLng(36.40352859159447, 127.44911849215336), //계족산 황톳길
				    new kakao.maps.LatLng(36.367933764478536, 127.39246420455326), //천연기념물센터
				    new kakao.maps.LatLng(36.36924606163258, 127.38799129373515) //한밭수목원
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
				var markerPosition  = new kakao.maps.LatLng(36.37378336017493, 127.47190337018795); //대청호오백리길
				var markerPosition2  = new kakao.maps.LatLng(36.40352859159447, 127.44911849215336); //계족산 황톳길
				var markerPosition3  = new kakao.maps.LatLng(36.367933764478536, 127.39246420455326); //천연기념물센터
				var markerPosition4  = new kakao.maps.LatLng(36.36924606163258, 127.38799129373515); //한밭수목원
				
		
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
				<img src="${contextPath}/resources/images/daejeon2-1.jpg">
			</div>
			<div class="right">
				<h5 class="mvp_h5">대청호 오백리길</h5>
				<p>대청호오백리길은 대전(동구, 대덕구)과 충북(청원, 옥천, 보은)에 걸쳐 있는 약 220km의 도보길이며 대청호 주변 자연부락과 소하천, 
				등산길, 임도, 옛길 등을 포함하고 있다. 또한 서울, 부산에서 대청호까지 거리가 약 오백리 정도가 되어 그 상징적 의미를 더하고 있다. 
				</p>
			</div>
		</div>
		<div class=" line_wrap clearfix" name="Gyeongbokgung Palace(kr)">
			<div class="left">
				<img src="${contextPath}/resources/images/daejeon2-2.jpg">
			</div>
			<div class="right">
				<h5 class="mvp_h5">계족산 황톳길</h5>
				<p>계족산 황톳길은 2006년 임도 총14.5km에 질 좋은 황토 2만여톤을 투입하여 조성한 맨발 트래킹의 명소이다. 
				경사가 완만해 맨발로 걷기 무리 없을 뿐 아니라, 여름에는 발끝부터 황토의 시원한 기운이 올라와 무더위를 식히기 좋다. 
				</p>
			</div>
		</div>	
		<div class=" line_wrap clearfix" name="Gyeongbokgung Palace(kr)">
			<div class="left">
				<img src="${contextPath}/resources/images/daejeon2-3.jpg">
			</div>
			<div class="right">
				<h5 class="mvp_h5">천연기념물센터</h5>
				<p> 천연기념물센터 전시관에는 자연유산에 대한 연구 결과물인 공룡알·발자국 등의 화석, 반달가슴곰, 수달, 독수리 등의 동물 박제 표본, 
				존도리 소나무 등의 식물 표본 등을 전시하여 전문연구자와 청소년의 학습에 도움을 주고 있으며, 체험 공간, 검색 키오스크, 영상실 등을 통하여 
				독창적인 체험학습 기회를 제공하고 있습니다. 
				</p>
			</div>
		</div>
		<div class=" line_wrap clearfix" name="Gyeongbokgung Palace(kr)">
			<div class="left">
				<img src="${contextPath}/resources/images/daejeon2-4.jpg">
			</div>
			<div class="right">
				<h5 class="mvp_h5">한밭수목원</h5>
				<p>도심 속의 한밭수목원은 정부대전청사와 과학공원의 녹지축을 연계한 전국 최대의 도심 속 인공수목원으로 각종 식물종의 유전자 보존과 청소년들에게 
				자연체험학습의 장, 시민들에게는 도심 속에서 푸르름을 만끽하며 휴식할 수 있는 공간 제공을 목적으로 조성했다.
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
		
	