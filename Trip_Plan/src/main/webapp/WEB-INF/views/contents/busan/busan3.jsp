<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c"  uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="contextPath" value="${pageContext.request.contextPath}"/>
<%  request.setCharacterEncoding("UTF-8"); %> 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>busan3</title>
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
<!-- 부산의 온천과 명물을 맛나다 -->
<div class="contents_centered">
		<div class="titleType1">
			<div class="tit">
			    <label>부산 테마코스</label>
				<h2>부산의 온천과 명물을 맛나다</h2>
			</div>
			<div class="area_address">
				<span class="address">부산 동래구</span> <span id="dist">코스 총거리 :
					8km</span>
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
					<p>동래온천은 신라 때부터 존재해 조선에 이르기까지 최고의 온천지로 명성을 날렸다. 지금은 놀이테마파크에 밀려 그만한 명성은 없지만 허심청의 다양한 부대시설을 이용한 후 동래의 명물 ‘곰장어구이’와 ‘동래파전’으로 보양을 해보자. 
					온천장 곰장어 골목에는 10곳이 넘는 곰장어집과 밀가루대신 쌀가루를 넣어 더욱 쫄깃한 파전 위에 양념고기와 조갯살, 새우 등 해산물이 푸짐하니 한 끼 식사로 충분하다.</p>
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
					center: new kakao.maps.LatLng(35.212261607069735, 129.08363656801686), //지도 중심좌표
					level: 6 //지도 확대레벨
				};
		
				var map = new kakao.maps.Map(container, options); //지도 생성
				var linePath = [ //선을 구성하는 좌표 배열, 이 좌표들을 이어서 선을 표시
				    new kakao.maps.LatLng(35.21995046938737, 129.08142274046494), //동래온천 노천족욕탕
				    new kakao.maps.LatLng(35.220617735480005, 129.08139860353793), //원조소문난산곰장어
				    new kakao.maps.LatLng(35.20393002399876, 129.08588572349063), //동래시장
				    new kakao.maps.LatLng(35.206709961823776, 129.0908537204284), //동래복천동 고분군
				    new kakao.maps.LatLng(35.20456897420269, 129.083843456743), //동래할매파전
				    new kakao.maps.LatLng(35.20127274091345, 129.0958633591721) //충렬사
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
				var markerPosition  = new kakao.maps.LatLng(35.21995046938737, 129.08142274046494); //동래온천 노천족욕탕
				var markerPosition2  = new kakao.maps.LatLng(35.220617735480005, 129.08139860353793); //원조소문난산곰장어
				var markerPosition3  = new kakao.maps.LatLng(35.20393002399876, 129.08588572349063); //동래시장
				var markerPosition4  = new kakao.maps.LatLng(35.206709961823776, 129.0908537204284); //동래복천동 고분군
				var markerPosition5  = new kakao.maps.LatLng(35.20456897420269, 129.083843456743); //동래할매파전
				var markerPosition6  = new kakao.maps.LatLng(35.20127274091345, 129.0958633591721); //충렬사
				
		
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
				
				var marker6 = new kakao.maps.Marker({
				    position: markerPosition6
				});
				
				
				// 마커가 지도 위에 표시되도록 설정합니다
				marker.setMap(map);
				marker2.setMap(map);
				marker3.setMap(map);
				marker4.setMap(map);
				marker5.setMap(map);
				marker6.setMap(map);
			</script>
		</div>	
		<div class=" line_wrap clearfix" name="Gyeongbokgung Palace(kr)">
			<div class="left">
				<a href="#" target="_blank" title="새창열기"> 
					<img src="${contextPath}/resources/images/busan3-1.jpeg">
				</a>
			</div>
			<div class="right">
				<a href="#" target="_blank" title="새창열기">
					<h5 class="mvp_h5">동래온천 노천족욕탕</h5>
				</a>
				<p>우리 나라에서 가장 오래된 온천의 하나로 수온은 63℃이며, 약칼리성 식염천으로 목욕 외 온천수를 마시면 만성 위장병 및 위장근약증에 효과가 있는 것으로 알려져 있다. 
				또한, 류마티스성 질환, 운동장애, 신경통, 관절염, 피로회복, 혈액순환 장애에도 효과가 있는 건강온천으로 알려져 있다. 
				</p>
			</div>
		</div>
		
		<div class=" line_wrap clearfix" name="Gyeongbokgung Palace(kr)">
			<div class="left">
				<a href="#" target="_blank" title="새창열기">
					<img src="${contextPath}/resources/images/busan3-2.jpeg">
				</a>
			</div>
			<div class="right">
				<a href="#" target="_blank" title="새창열기">
					<h5 class="mvp_h5">원조소문난산곰장어</h5>
				</a>
				<p>정통 곰장어를 표방하고 있는 ‘소문난 곰장어’는 산지 직송으로 곰장어를 공급받기에 신선하고 쫀득한 육질을 자랑한다. 
				이곳에서는 곰장어를 양념구이와 소금구이 그리고 통구이의 3종류로 메뉴가 구성되어 있다. 1층은 일반 손님을, 2층은 단체를 위한 연회석으로 꾸며놓았다.
				</p>
			</div>
		</div>	
		<div class=" line_wrap clearfix" name="Gyeongbokgung Palace(kr)">
			<div class="left">
				<a href="#" target="_blank" title="새창열기">
					<img src="${contextPath}/resources/images/busan3-3.jpeg">
				</a>
			</div>
			<div class="right">
				<a href="#" target="_blank" title="새창열기">
					<h5 class="mvp_h5">동래시장</h5>
				</a>
				<p>조선시대 부산지역 최대 5일장이었던 동래장터가 현재까지 동래에서 가장 큰 규모를 자랑하는 전통시장으로 이어지고 있다.
					시장 내 점포들도 오랜 기간 전통을 유지해 온 집들이 많다. 건물 바깥쪽을 둘러싼 한약 재상, 가격을 좀처럼 올리지 않는 식당가, 
					애교로 흥정이 가능한 패션잡화등 대부분의 가게가 최소 40~50년 경력을 자랑한다.
				</p>
			</div>
		</div>
		<div class=" line_wrap clearfix" name="Gyeongbokgung Palace(kr)">
			<div class="left">
				<a href="#" target="_blank" title="새창열기">
					<img src="${contextPath}/resources/images/busan3-4.jpeg">
				</a>
			</div>
			<div class="right">
				<a href="#" target="_blank" title="새창열기">
					<h5 class="mvp_h5">동래복천동 고분군</h5>
				</a>
				<p>부산 복천동 일대의 구릉 위에 있는 가야 때 무덤들이다. 여러 차례에 걸친 발굴조사로 40여 기의 무덤이 확인되었으나, 대부분의 무덤은 아직도 땅 밑에 남아있다. 무덤의 형태는 땅을 파서 넓은 방을 만들고 나무관을 넣은 덧널무덤(토광목곽묘), 
				땅 속에 네모난 돌로 벽을 쌓고 천장을 덮어 만든 구덩이식 돌방무덤(수혈식석실묘), 땅 속에 시체를 바로 묻는 널무덤을 비롯해 여러 가지 형식의 무덤들이 있다.
				</p>
			</div>
		</div>	
		<div class=" line_wrap clearfix" name="Gyeongbokgung Palace(kr)">
			<div class="left">
				<a href="#" target="_blank" title="새창열기">
					<img src="${contextPath}/resources/images/busan3-5.jpeg">
				</a>
			</div>
			<div class="right">
				<a href="#" target="_blank" title="새창열기">
					<h5 class="mvp_h5">동래할매파전</h5>
				</a>
				<p>일반 파전과 달리 두툼하고 풍성한 해물맛을 자랑하는 동래파전. 장을 활용하여 반죽하고 솥뚜껑 모양의 무쇠그릇에 기름을 넉넉히 붓고 전통방식을 따라 조리하며, 해물과 잘 어울리도록 초고추장을 제공하는 ''동래파전''의 문화를 이어가고 있다. 정성들여 준비하는 밑반찬과 유기그릇, 고풍스러운 느낌의 인테리어가
				 ''동래부사가 임금님께 진상''했다는 스토리와 썩 잘어울린다. 동래구 주민 뿐 아니라, 전국에서도 찾는 맛집으로 최근 유명 맛집프로그램에 출현하면서 그 유명새가 더욱 높아졌다.
				</p>
			</div>
		</div>
		<div class=" line_wrap clearfix" name="Gyeongbokgung Palace(kr)">
			<div class="left">
				<a href="#" target="_blank" title="새창열기">
					<img src="${contextPath}/resources/images/busan3-6.jpeg">
				</a>
			</div>
			<div class="right">
				<a href="#" target="_blank" title="새창열기">
					<h5 class="mvp_h5">충렬사</h5>
				</a>
				<p>안락서원은 1605년(선조38)에 동래부사 윤선이 임진란 때 순절한 동래부사 송상현(宋象賢), 부산첨사 정발(鄭撥), 다대첨사 윤흥신(尹興信) 등 부산지방의 선열을 모시기 위하여 동래읍성의 남문에 송공사단(宋公祠壇)을 건립한 것에서 비롯된다. 1624년(인조2)에 선위사 이민구의 청에 의하여 충렬사란 사액을 받았으며 임진란 때 전사한 부산첨사 정발(鄭撥)을 배향하게 되었고, 1652년(효종3)에 동래부사 윤문거(尹文擧)가 
				송상현의 학덕과 충절을 숭상 계승하기 위하여 내산 및 안락리(현 충렬사자리)에 이전하여 강당과 동서양재를 지어서 교육기관으로 삼게 한 것이 안락서원의 기원이다.
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







	


