<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c"  uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="contextPath" value="${pageContext.request.contextPath}"/>
<%  request.setCharacterEncoding("UTF-8"); %> 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>incheon3</title>
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
<!-- 이국적인 분위기와 달콤한 도시 송도 -->
<div class="contents_centered">
		<div class="titleType1">
			<div class="tit">
			    <label>인천 테마코스</label>
				<h2>이국적인 분위기와 달콤한 도시 송도</h2>
			</div>
			<div class="area_address">
				<span class="address">인천</span> <span id="dist">코스 총거리 :
					5.19km</span>
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
					<p>비행기를 타지 않고도 이국적인 분위기를 즐길 수 있는 국제도시 송도에 가보자. 송도 센트럴파크의 핫플레이스를 돌 수 있는 즐거운 맛코스다. 
					외국인이 즐겨찾는 수제버거나 골목 안의 빈티지한 펍에 들어서면 마치 뉴욕 한복판에 서있는 듯한 느낌이 들 것이다
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
					center: new kakao.maps.LatLng(37.39065971024739, 126.64356643603413), //지도 중심좌표
					level: 5 //지도 확대레벨
				};
		
				var map = new kakao.maps.Map(container, options); //지도 생성
				var linePath = [ //선을 구성하는 좌표 배열, 이 좌표들을 이어서 선을 표시
				    new kakao.maps.LatLng(37.393103963131274, 126.64289987895468), //버거룸 181
				    new kakao.maps.LatLng(37.38599461703871, 126.64354335370071), //그리다 디저트
				    new kakao.maps.LatLng(37.39277858407561, 126.63591966419966), //인천도시역사관
				    new kakao.maps.LatLng(37.394947976904454, 126.6501610658975), //애플삼겹살
				    new kakao.maps.LatLng(37.388790761509206, 126.64679073226112) //송도컨벤시아
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
				var markerPosition  = new kakao.maps.LatLng(37.393103963131274, 126.64289987895468); //버거룸 181
				var markerPosition2  = new kakao.maps.LatLng(37.38599461703871, 126.64354335370071); //그리다 디저트
				var markerPosition3  = new kakao.maps.LatLng(37.39277858407561, 126.63591966419966); //인천도시역사관
				var markerPosition4  = new kakao.maps.LatLng(37.394947976904454, 126.6501610658975); //애플삼겹살
				var markerPosition5  = new kakao.maps.LatLng(37.388790761509206, 126.64679073226112); //송도컨벤시아
		
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
				<img src="${contextPath}/resources/images/incheon3-1.jpg">
			</div>
			<div class="right">
				<h5 class="mvp_h5">버거룸 181</h5>
				<p>이국적이며 빈티지한 외관의 버거룸181은 도톰한 빵 안에 신선한 속 재료가 풍성하게 들어 있는 수제버거 전문점이다. 
				이색적이면서도 다양한 종류의 버거를 맛볼 수 있다.
				</p>
			</div>
		</div>
		<div class=" line_wrap clearfix" name="Gyeongbokgung Palace(kr)">
			<div class="left">
				<img src="${contextPath}/resources/images/incheon3-2.jpg">
			</div>
			<div class="right">
				<h5 class="mvp_h5">그리다 디저트</h5>
				<p>르 꼬르동 블루 제과 디플로마를 졸업한 전문 파티시에가 매일 매장에서 직접 만든 디저트를 판매하는 디저트 전문점이다. 
				깔끔한 분위기를 자아내는 매장에서 신선하고 예쁜 디저트를 맛보면 절로 힐링이 되는 기분이다. 달달한 디저트가 있는 카페이기 때문에 데이트 장소로도 좋다.
				</p>
			</div>
		</div>	
		<div class=" line_wrap clearfix" name="Gyeongbokgung Palace(kr)">
			<div class="left">
				<img src="${contextPath}/resources/images/incheon3-3.jpg">
			</div>
			<div class="right">
				<h5 class="mvp_h5">인천도시역사관</h5>
				<p>인천은 1883년 개항 후 우리나라 최초의 계획도시로 시작하여 130년이 넘는 시간이 흐르는 동안 다양한 변화와 확장을 거쳐 지금은 전국 8대 광역시 중 가장 넓은 면적에 300만 인구의 무한한 잠재력을 가진 도시로 성장해 왔다.
				인천도시역사관은도시 인천의 역사와 변화과정을 다양한 실물자료와 모형을 통해 시민들에게 알기 쉽게 전달하고 있다.
				</p>
			</div>
		</div>
		<div class=" line_wrap clearfix" name="Gyeongbokgung Palace(kr)">
			<div class="left">
				<img src="${contextPath}/resources/images/incheon3-4.jpg">
			</div>
			<div class="right">
				<h5 class="mvp_h5">애플삼겹살</h5>
				<p>애플삼겹살은 돼지고기를 사과즙에 하루 숙성한 후 참숯에 초벌하고 마지막으로 사과나무에 훈연한다.
				주문시 얇게 썬 사과가 나와 새초와 소스와 함께 쌈을 싸먹을수 있다. 삼겹살, 목살, 항정살, 소시지, 새우, 떡이 나오는 애플한판이 대표메뉴. 
				사과는 향과 당도가 높은 경북 영주사과를 사용하며 착즙한 사과를 넣은 애플소주도 제공된다.
				</p>
			</div>
		</div>
		<div class=" line_wrap clearfix" name="Gyeongbokgung Palace(kr)">
			<div class="left">
				<img src="${contextPath}/resources/images/incheon3-5.jpg">
			</div>
			<div class="right">
				<h5 class="mvp_h5">송도컨벤시아</h5>
				<p>송도 컨벤시아는 지하1층, 지상4층, 연 건축면적 54,000㎡ 규모로 450개 부스를 설치할 수 있고 회의장은 최대 2,000명을 수용할 수 있다. 
				송도컨벤시아는 시드니 오페라 하우스를 연상케 하는 독특한 외관과 고품격 인테리어 등
				흔히 볼 수 없는 감각적인 디자인을 자랑하며 각종 방송이나 공연, 패션쇼 등의 촬영지로 각광받고 있다.
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