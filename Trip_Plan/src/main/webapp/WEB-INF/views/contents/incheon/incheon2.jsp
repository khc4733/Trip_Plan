<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c"  uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="contextPath" value="${pageContext.request.contextPath}"/>
<%  request.setCharacterEncoding("UTF-8"); %> 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>incheon2</title>
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
<!-- 화려하게 빛나는 인천의 낮과 밤 -->
<div class="contents_centered">
		<div class="titleType1">
			<div class="tit">
			    <label>인천 테마코스</label>
				<h2>화려하게 빛나는 인천의 낮과 밤</h2>
			</div>
			<div class="area_address">
				<span class="address">인천 중구</span> <span id="dist">코스 총거리 :
					31.9km</span>
			</div>
		</div>
		<div class="schedule_info">
			<ul class="schedule">
				<li style="float: left;"><span class="img"><img
						src="${contextPath}/resources/images/icon_cos_schedule2.gif" alt=""></span>
					<em>일정</em> <strong>1박2일</strong></li>
				<li style="margin-left:50px;"><span class="img"><img
						src="${contextPath}/resources/images/icon_cos_theme4.gif" alt=""></span> <em>테마</em>
					<strong>힐링코스</strong></li>
			</ul>
		</div>
		<div class="area_txtView">
			<div class="inr_wrap" style="overflow: visible; height: auto;">
				<div class="inr">
					<p>낮 동안 인천의 역사와 문화예술을 만나고 밤에 더욱 화려해지는 야경과 함께 하는 코스다. 
					인천 개항장 거리에서 인천 개항기의 역사와 조화를 이루는 현대 문화예술을 만나고, 송월동 동화마을에서 동심의 세계에 빠져볼 수 있다. 
					외국의 어느 항구도시 같은 송도센트럴파크에는 바닷물로 만들어진 인공호수가 있다. 주변에 특급호텔과 쇼핑몰, 음식점들이 밀집해 있고, 야경이 무척 아름다운 명소다. 
					인천의 역사와 문화예술을 만난 후 바라보는 소래포구 상인들의 삶은 더욱 뭉클하고 깊게 기억될 것이다. 서해의 맛은 덤이다.
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
					center: new kakao.maps.LatLng(37.43625828305586, 126.69094301150022), //지도 중심좌표
					level: 8 //지도 확대레벨
				};
		
				var map = new kakao.maps.Map(container, options); //지도 생성
				var linePath = [ //선을 구성하는 좌표 배열, 이 좌표들을 이어서 선을 표시
				    new kakao.maps.LatLng(37.47283787704427, 126.62084956895656), //개항장 거리
				    new kakao.maps.LatLng(37.47796750911464, 126.62035447254695), //송월동 동화마을
				    new kakao.maps.LatLng(37.47562649977419, 126.59769369725569), //월미도
				    new kakao.maps.LatLng(37.39333364509282, 126.63842681723563), //송도 센트럴파크
				    new kakao.maps.LatLng(37.39797797100191, 126.7392786747088) //소래포구
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
				var markerPosition  = new kakao.maps.LatLng(37.47283787704427, 126.62084956895656); //개항장 거리
				var markerPosition2  = new kakao.maps.LatLng(37.47796750911464, 126.62035447254695); //송월동 동화마을
				var markerPosition3  = new kakao.maps.LatLng(37.47562649977419, 126.59769369725569); //월미도
				var markerPosition4  = new kakao.maps.LatLng(37.39333364509282, 126.63842681723563); //송도 센트럴파크
				var markerPosition5  = new kakao.maps.LatLng(37.39797797100191, 126.7392786747088); //소래포구
		
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
				
				var marker5 = new kakao.maps.Marker({
				    position: markerPosition5
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
					<img src="${contextPath}/resources/images/incheon2-1.jpg">
				</a>
			</div>
			<div class="right">
				<a href="#" target="_blank" title="새창열기">
					<h5 class="mvp_h5">개항장 거리</h5>
				</a>
				<p>1883년 인천 개항장 126년 세월의 흔적이 쌓인 개항기 역사와 문화의 만남의 장소이다. 
				이곳은 옛 일본영사관인 중구청과 일본 제1은행 인천지점,일본 제58은행 인천지점 등 근대 건축을 그대로 볼 수 있는 장소이다.
				이곳은 인천문화 관광해설사가 배치되어 해설을 들으며 도보관광을 즐길 수 있어 가족 단위나 여행단체의 큰 호응을 얻고 있다.
				</p>
			</div>
		</div>
		<div class=" line_wrap clearfix" name="Gyeongbokgung Palace(kr)">
			<div class="left">
				<a href="#" target="_blank" title="새창열기">
					<img src="${contextPath}/resources/images/incheon2-2.jpg">
				</a>
			</div>
			<div class="right">
				<a href="#" target="_blank" title="새창열기">
					<h5 class="mvp_h5">송월동 동화마을</h5>
				</a>
				<p>1883년 인천항이 개항된 후에는 독일인들을 비롯한 외국인들이 거주하기 시작하면서 부촌을 형성하였으나, 젊은 사람들이 떠나고 마을에는 연로하신 분들만이 남아
				 활기를 잃고 침체되었으며, 빈집들은 방치되고 있었다. 이런 주거환경을 개선하기 위해 꽃길 및 세계 명작 동화를 테마로 담벼락에 색칠을 하여 
				 동화마을로 변화하였다.
				</p>
			</div>
		</div>	
		<div class=" line_wrap clearfix" name="Gyeongbokgung Palace(kr)">
			<div class="left">
				<a href="#" target="_blank" title="새창열기">
					<img src="${contextPath}/resources/images/incheon2-3.jpg">
				</a>
			</div>
			<div class="right">
				<a href="#" target="_blank" title="새창열기">
					<h5 class="mvp_h5">월미도</h5>
				</a>
				<p> 1920년대 후반부터 1930년대까지가 월미도 유원지의 전성기였다. 당시 조선인과 일본인 남녀노소를 가릴 것 없이 월미도의 이름을 모르는 사람이 없을 정도였다. 
				1989년 7월 문화의 거리가 조성된 후 문화예술의 장, 만남과 교환의 장 그리고 공연놀이 마당 등으로도 알려지기 시작한 월미도는 인천하면 떠올릴 만큼 유명한 곳으로 
				자리잡았다.
				</p>
			</div>
		</div>
		<div class=" line_wrap clearfix" name="Gyeongbokgung Palace(kr)">
			<div class="left">
				<a href="#" target="_blank" title="새창열기">
					<img src="${contextPath}/resources/images/incheon2-4.jpg">
				</a>
			</div>
			<div class="right">
				<a href="#" target="_blank" title="새창열기">
					<h5 class="mvp_h5">송도 센트럴파크</h5>
				</a>
				<p>바다를 메워 만든 인공 섬 송도는 도회적인 이미지의 상징이 되었다. 휘황찬란한 마천루는 저마다 디자인과 도시경관 등 엄격한 심사를 거쳐 건축 허가를 얻고 
				지어진 건물에서 기인한다. 건축물 자체가 하나의 작품처럼 보이는 이유도 그 때문이다. 송도에 대한 첫인상은 대개 미래 도시에 온 것 같다는 것으로 통한다. 
				</p>
			</div>
		</div>
		<div class=" line_wrap clearfix" name="Gyeongbokgung Palace(kr)">
			<div class="left">
				<a href="#" target="_blank" title="새창열기">
					<img src="${contextPath}/resources/images/incheon2-5.jpg">
				</a>
			</div>
			<div class="right">
				<a href="#" target="_blank" title="새창열기">
					<h5 class="mvp_h5">소래포구</h5>
				</a>
				<p>소래포구는 인천 남동구에 위치해 있으며, 수도권에 가장 쉽게 바다를 느낄 수 있는 여행지 중 하나이다. 소래포구는 아픈 과거를 가지고 있고 또한 
				그 아픈 과거가 만들어낸 관광지다. 1930년 후반 화약의 원료인 양질의 소금을 이 지역에서 수탈하기 위해 철도를 건설하면서 소래포구의 발전사가 시작되었다. 
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
		
	