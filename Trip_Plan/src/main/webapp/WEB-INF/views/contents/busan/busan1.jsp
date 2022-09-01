<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c"  uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="contextPath" value="${pageContext.request.contextPath}"/>
<%  request.setCharacterEncoding("UTF-8"); %> 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>busan1</title>
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
<!-- 영도의 바다를 만나다 -->
<div class="contents_centered">
		<div class="titleType1">
			<div class="tit">
			    <label>부산 테마코스</label>
				<h2>영도의 바다를 만나다</h2>
			</div>
			<div class="area_address">
				<span class="address">부산</span> <span id="dist">코스 총거리 :
					17.4km</span>
			</div>
		</div>
		<div class="schedule_info">
			<ul class="schedule">
				<li style="float: left;"><span class="img"><img
						src="${contextPath}/resources/images/icon_cos_schedule1.gif" alt=""></span>
					<em>일정</em> <strong>당일여행</strong></li>
				<li style="margin-left:50px;"><span class="img"><img
						src="${contextPath}/resources/images/icon_cos_theme3.gif" alt=""></span> <em>테마</em>
					<strong>도보코스</strong></li>
			</ul>
		</div>
		<div class="area_txtView">
			<div class="inr_wrap" style="overflow: visible; height: auto;">
				<div class="inr">
					<p>부산의 명물 영도다리를 건너 바닷길을 따라 태종대를 찾아간다. 절영해안산책로는 파도 소리를 친구 삼아 바다의 절경을 감상하며 걸을 수 있는 길이다. 해안도로가 끝나는 곳에서 다시 시작되는 솔숲은 시원한 그늘이 되어 도보 여행자를 안내한다.
					 영도 등대와 어우러진 태종대까지 걸으며 부산의 바다를 느껴보자.
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
					center: new kakao.maps.LatLng(35.09655894549506, 129.01858269308008), //지도 중심좌표
					level: 8 //지도 확대레벨
				};
		
				var map = new kakao.maps.Map(container, options); //지도 생성
				var linePath = [ //선을 구성하는 좌표 배열, 이 좌표들을 이어서 선을 표시
				    new kakao.maps.LatLng(35.10470658145553, 128.94579345731177), //낙동강하구에코센터
				    new kakao.maps.LatLng(35.09423382053527, 129.036901974079), //영도대교
				    new kakao.maps.LatLng(35.08138381441503, 129.04114291828915), //영도 절영산책로
				    new kakao.maps.LatLng(35.05818933015856, 129.08552177043563) //태종대
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
				var markerPosition  = new kakao.maps.LatLng(35.10470658145553, 128.94579345731177); //낙동강하구에코센터
				var markerPosition2  = new kakao.maps.LatLng(35.09423382053527, 129.036901974079); //영도대교
				var markerPosition3  = new kakao.maps.LatLng(35.08138381441503, 129.04114291828915); //영도 절영산책로
				var markerPosition4  = new kakao.maps.LatLng(35.05818933015856, 129.08552177043563); //태종대
				
		
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
					<img src="${contextPath}/resources/images/busan1-1.jpg">
				</a>
			</div>
			<div class="right">
				<a href="#" target="_blank" title="새창열기">
					<h5 class="mvp_h5">낙동강하구에코센터</h5>
				</a>
				<p>낙동강하구에코센터는 낙동강 하구 습지의 생태를 조사·관리·교육하는 기관으로, 강물이 바다와 어우러지는 지점이자, 세계적인 철새도래지인 숙도에 있다. 을숙도는 상단부의 을숙도생태공원, 하단부의 을숙도철새공원으로 나뉜다. 
				낙동강 하류 철새 도래지(천연기념물)의 핵심 지역이자 낙동강 하구 생태관광의 중심축으로, 겨울 철새와 하구 습지의 생태를 관찰하기 가장 좋은 장소다.
				</p>
			</div>
		</div>
		
		<div class=" line_wrap clearfix" name="Gyeongbokgung Palace(kr)">
			<div class="left">
				<a href="#" target="_blank" title="새창열기">
					<img src="${contextPath}/resources/images/busan1-2.jpg">
				</a>
			</div>
			<div class="right">
				<a href="#" target="_blank" title="새창열기">
					<h5 class="mvp_h5">영도대교</h5>
				</a>
				<p>일제가 우리나라를 수탈하던 시기에 사람들의 수송을 위해 육지(남포동)와 섬(영도)을 잇는 부산 최초로 건설된 다리이다. 남항과 북항을 오가는 배들이 지날 수 있도록 도개교 형태를 띠고 있으며 적을 때는 2회 많을 때는 7회까지 다리를 들어올렸다. 
				당시 다리가 하늘로 치솟는 신기한 모습을 보기위해 많은 사람들이 모였으며 점차 부산의 명물로 자리 잡았다. 
				</p>
			</div>
		</div>	
		<div class=" line_wrap clearfix" name="Gyeongbokgung Palace(kr)">
			<div class="left">
				<a href="#" target="_blank" title="새창열기">
					<img src="${contextPath}/resources/images/busan1-3.jpg">
				</a>
			</div>
			<div class="right">
				<a href="#" target="_blank" title="새창열기">
					<h5 class="mvp_h5">영도 절영산책로</h5>
				</a>
				<p>영도의 관문인 영도대교, 부산대교를 지나 영선동 아랫로타리에서 제2송도 바닷가쪽으로 500m정도 가다보면 반도보라아파트가 나타나고 산책로 입구에 위치한 관리동 및 
				휴게시설이 산책객을 맞이하고 있다. 이곳은 과거에는 지형이 가파르고 험난한 군사보호구역으로 접근이 어려웠으나 시민들의 해양관광 욕구를 충족시키기 위하여 공공근로사업으로
				 조성한 산책로로서, 대마도와 송도쪽으로 드넓은 바다 풍경을 배경삼아 연장 3㎞의 해안산책로를 2시간 정도 굽이굽이 거닐 때 마다 경치가 달라지고, 파도 곁으로 내려서면 자갈소리가 합창을 하며 곳곳에는 장승과 돌탑, 출렁다리, 장미터널, 파도광장, 무지개 분수대 등 아기자기한 볼거리, 즐길거리가 있다.
			</div>
		</div>
		<div class=" line_wrap clearfix" name="Gyeongbokgung Palace(kr)">
			<div class="left">
				<a href="#" target="_blank" title="새창열기">
					<img src="${contextPath}/resources/images/busan1-4.jpg">
				</a>
			</div>
			<div class="right">
				<a href="#" target="_blank" title="새창열기">
					<h5 class="mvp_h5">태종대</h5>
				</a>
				<p>백악기말에 호수에서 쌓인 퇴적층이 해수면 상승으로 파도에 의해 침식되어 만들어진 파식대지, 해식애, 해안동굴 등의 암벽해안으로 유명한 부산을 대표하는 해안 경관지이다.구상혼펠스, 슬럼프구조, 암맥, 단층, 꽃다발구조 등의 다양한 지질기록과 신비스러운 천연암벽화, 
				자갈마당 등의 경관이 어우러진 으뜸명소로 해안식물 생태코스, 태종대 전망대, 영도해양문화공간으로 이어지는 트레일 코스가 개발되어 있다. 
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

