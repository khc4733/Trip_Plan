<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c"  uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="contextPath" value="${pageContext.request.contextPath}"/>
<%  request.setCharacterEncoding("UTF-8"); %> 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>daegu2</title>
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
<!-- 대구의 핫플레이스를 둘러보는 1박2일 여행 코스 -->
<div class="contents_centered">
		<div class="titleType1">
			<div class="tit">
			    <label>대구 테마코스</label>
				<h2>대구의 핫플레이스를 둘러보는 1박2일 여행 코스</h2>
			</div>
			<div class="area_address">
				<span class="address">대구 중구</span> <span id="dist">코스 총거리 :
					127km</span>
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
					<p>대구의 핫플레이스를 찾아 떠나보는 대구 여행코스! 동인동 찜갈비 골목, 두낫디스터브 비슬산에서 맛있는 식사와 차 한 잔의 여유를 즐기고, 
					교항리 이팝나무군락지, 금호꽃섬에서 여유로운 산책을 하며, 안지랑 곱창골목, 스파크랜드, 대구수목원, 대구평화시장까지 이어지는 오감을 만족시키는 
					여행을 보내게 된다.</p>
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
				center: new kakao.maps.LatLng(35.80671501853801, 128.56502997014462), //지도 중심좌표
				level: 9 //지도 확대레벨
			};
	
			var map = new kakao.maps.Map(container, options); //지도 생성
			var linePath = [ //선을 구성하는 좌표 배열, 이 좌표들을 이어서 선을 표시
			    new kakao.maps.LatLng(35.87109721836626, 128.60501830027994), //동인동 찜갈비골목
			    new kakao.maps.LatLng(35.700216191518194, 128.47140169494276), //두낫디스터브 비슬산
			    new kakao.maps.LatLng(35.790140798665725, 128.4374538648834), //교향리 이팝나무 군락지
			    new kakao.maps.LatLng(35.90055186258572, 128.5594770054313), //대구 하중도(금호꽃섬)
			    new kakao.maps.LatLng(35.835498064018545, 128.57398372555156), //안지랑 곱창골목
			    new kakao.maps.LatLng(35.86874841581753, 128.59869905709763), //스파크랜드
			    new kakao.maps.LatLng(35.79984206068663, 128.5219975697624), //대구수목원
			    new kakao.maps.LatLng(35.882275872025225, 128.61878075256166) //대구평화시장
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
			var markerPosition  = new kakao.maps.LatLng(35.87109721836626, 128.60501830027994); //동인동 찜갈비골목
			var markerPosition2  = new kakao.maps.LatLng(35.700216191518194, 128.47140169494276); //두낫디스터브 비슬산
			var markerPosition3  = new kakao.maps.LatLng(35.790140798665725, 128.4374538648834); //교향리 이팝나무 군락지
			var markerPosition4  = new kakao.maps.LatLng(35.90055186258572, 128.5594770054313); //대구 하중도(금호꽃섬)
			var markerPosition5  = new kakao.maps.LatLng(35.835498064018545, 128.57398372555156); //안지랑 곱창골목
			var markerPosition6  = new kakao.maps.LatLng(35.86874841581753, 128.59869905709763); //스파크랜드
			var markerPosition7  = new kakao.maps.LatLng(35.79984206068663, 128.5219975697624); //대구수목원
			var markerPosition8  = new kakao.maps.LatLng(35.882275872025225, 128.61878075256166); //대구평화시장		
	
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
			
			var marker7 = new kakao.maps.Marker({
			    position: markerPosition7
			});
			
			var marker8 = new kakao.maps.Marker({
			    position: markerPosition8
			});
			
			// 마커가 지도 위에 표시되도록 설정합니다
			marker.setMap(map);
			marker2.setMap(map);
			marker3.setMap(map);
			marker4.setMap(map);
			marker5.setMap(map);
			marker6.setMap(map);
			marker7.setMap(map);
			marker8.setMap(map);
			</script>
		</div>	
		<div class=" line_wrap clearfix" name="Gyeongbokgung Palace(kr)">
			<div class="left">
				<img src="${contextPath}/resources/images/daegu2-1.jpg">
			</div>
			<div class="right">
				<h5 class="mvp_h5">동인동 찜갈비골목</h5>
				<p>70년대부터 중구 동인동 주택가에서 찌그러진 양은 냄비에 푹 익힌 소갈비를 담아 매운 고춧 가루와 다진 마늘을 주 양념으로 비벼먹는 동인동 찜갈비는 
				간장으로만 맛을 내는 갈비찜과는 판이하게 다른 대구에만 있는 스타일이다. 술안주로도 알맞으며 식사 후 남은 양념에 밥을 비벼 먹는 맛이 맵싸하고 화끈한 것이 특징이다. 
				서울.경기권의 갈비찜과는 달리 혀가 얼얼할 정도로 매우면서도 달짝지근한 맛이 일품이다.
				</p>
			</div>
		</div>
		
		<div class=" line_wrap clearfix" name="Gyeongbokgung Palace(kr)">
			<div class="left">
				<img src="${contextPath}/resources/images/daegu2-2.jpg">
			</div>
			<div class="right">
				<h5 class="mvp_h5">두낫디스터브 비슬산</h5>
				<p>대구 달성군에 위치한 카페 ''두낫디스터브 비슬산''은 대구에서 시작한 대형카페 전문점 두낫디스터브의 매장 중 하나이다. 
				대표 메뉴인 두낫슈페너를 비롯한 다양한 커피 메뉴와 딸기케이크와 같은 베이커리류도 판매중이다.
				</p>
			</div>
		</div>	
		<div class=" line_wrap clearfix" name="Gyeongbokgung Palace(kr)">
			<div class="left">
				<img src="${contextPath}/resources/images/daegu2-3.jpg">
			</div>
			<div class="right">
				<h5 class="mvp_h5">교항리 이팝나무 군락지</h5>
				<p>옥포읍 교향리 마을에서 약 100m쯤 떨어져 있는 평탄한 구릉지대의 세청숲 속에 수령이 약 300여년 이상 된 이팝나무 45주가 자라고 있다. 
				이팝나무 외에 150여년이 된 상수리나무, 굴참나무, 느티나무, 말채나무등 거목들이 많이 군거하고 있어 이 숲은 학술연구상으로 풍치림으로서 보호할 가치가 있다. 
				이팝나무는 낙엽활엽교목으로 5월초에 흰색의 꽃이 피는데 흰꽃망울로 덮흰 숲을 멀리서 바라보면 흰구름이 떠나가는 형상이다. 
				</p>
			</div>
		</div>
		<div class=" line_wrap clearfix" name="Gyeongbokgung Palace(kr)">
			<div class="left">
				<img src="${contextPath}/resources/images/daegu2-4.jpg">
			</div>
			<div class="right">
				<h5 class="mvp_h5">대구 하중도 (금호꽃섬)</h5>
				<p>대구 북구 8경중 1경인 금호강 하중도는 팔달교와 노곡교 사이에 위치한 섬이다. 계절별로 유채꽃, 청보리, 코스모스 등을 식재하고 있으며, 
				금호강을 따라 산책로가 조성되어 있다. 주말이면 연인, 가족단위의 관광객들로 붐비는 명소이다.
				</p>
			</div>
		</div>	
		<div class=" line_wrap clearfix" name="Gyeongbokgung Palace(kr)">
			<div class="left">
				<img src="${contextPath}/resources/images/daegu2-5.jpg">
			</div>
			<div class="right">
				<h5 class="mvp_h5">안지랑 곱창골목</h5>
				<p>대구광역시 남구의 앞산 안지랑골로 통하는 길 중간에 형성된 안지랑 시장은 화려한 명성을 뒤로 하고 최근 양념 곱창집이 들어차 새로운 활력이 되고 있다. 
				1979년 경 안지랑 시장 쪽에 충북식당을 시작으로 1998년 IMF이후 생계유지 업소가 늘어나기 시작해 오늘에 이르렀다. 서민들이 부담없이 즐길수 있는 휴식처이자 
				최근엔 젊은층이 주도하는 젊음의 거리로 발전하였으며, 2012년에는 문화체육관광부 주관 전국 5대 음식테마거리로 선정된 바 있다.
				</p>
			</div>
		</div>
		<div class=" line_wrap clearfix" name="Gyeongbokgung Palace(kr)">
			<div class="left">
				<img src="${contextPath}/resources/images/daegu2-6.jpg">
			</div>
			<div class="right">
				<h5 class="mvp_h5">스파크랜드</h5>
				<p>대구 도심 한가운데 위치한 스파크랜드는 쇼핑몰이자 놀이테마파크로서 중구의 새로운 랜드마크로 떠오르고 있다. 패션브랜드, 식당,
				 놀이시설 등을 갖추어 다양한 볼거리와 먹거리, 즐길거리를 제공한다. 특히, 건물 꼭대기에 있는 대관람차는 많은 이들의 시선을 사로잡는다. 
				 대관람차에 탑승하여 대구 도시 전경을 감상할 수 있다.
				</p>
			</div>
		</div>
		<div class=" line_wrap clearfix" name="Gyeongbokgung Palace(kr)">
			<div class="left">
				<img src="${contextPath}/resources/images/daegu2-7.jpg">
			</div>
			<div class="right">
				<h5 class="mvp_h5">대구수목원</h5>
				<p>74,000여 평의 부지에 1986년부터 1990년까지 대구시민의 생활쓰레기 410만톤을 매립한 장소로서 이곳의 환경문제를 해결하기 위하여 1996년부터 1997년까지 
				150만㎥의 건설잔토를 6~7m로 복토한 후 2002년 5월까지 수목원을 조성함으로 생태를 복원한 사례이다. 대구수목원은 침엽수원, 활엽수원, 화목원, 야생초화원, 
				약용식물원, 염료원 등 21개소의 다양한 원을 구성하여 400여종 6만 그루의 나무와 1,100개 화단에 800여 종 13만 포기의 초화류를 식재하였고, 40종 300여 점의 
				분재와 200종 2,000점의 선인장과 더불어 300여 점의 수석도 전시하였다. 
				</p>
			</div>
		</div>
		<div class=" line_wrap clearfix" name="Gyeongbokgung Palace(kr)">
			<div class="left">
				<img src="${contextPath}/resources/images/daegu2-8.jpg">
			</div>
			<div class="right">
				<h5 class="mvp_h5">대구 평화시장</h5>
				<p>평화시장은 1975년 개설된 장옥형의 소형시장이다. 30여 년 전부터 닭내장을 파는 상점들이 늘어나면서 똥집 튀김 골목을 자리 잡은 곳으로 똥집 골목으로
				 대구의 명물 중 하나이다. 닭똥집 골목의 시장은 1972년 삼아 통닭집으로 거슬러 올라간다. 닭만 팔다 보니 닭똥집이 많이 남아서 어떻게 할까 늘 고민스러웠던
				  사장이 어느 날 우연히 닭똥집을 튀겨서 서비스로 내어놓기 시작했는데, 의외로 손님들의 호응이 좋았던 것이다. 
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




	