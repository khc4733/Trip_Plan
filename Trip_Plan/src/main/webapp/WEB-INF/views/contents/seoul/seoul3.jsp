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
<!-- 서촌에서 즐기는 즐거운 맛산책 -->
<div class="contents_centered">
		<div class="titleType1">
			<div class="tit">
			    <label>서울 테마코스</label>
				<h2>서촌에서 즐기는 즐거운 맛산책</h2>
			</div>
			<div class="area_address">
				<span class="address">서울 종로구</span> <span id="dist">코스 총거리 :
					9.42km</span>
			</div>
		</div>
		<div class="schedule_info">
			<ul class="schedule">
				<li style="float: left;"><span class="img"><img
						src="${contextPath}/resources/images/icon_cos_schedule1.gif" alt=""></span>
					<em>일정</em> <strong>당일치기</strong></li>
				<li style="margin-left:50px;"><span class="img"><img
						src="${contextPath}/resources/images/icon_cos_theme3.gif" alt=""></span> <em>테마</em>
					<strong>도보코스</strong></li>
			</ul>
		</div>
		<div class="area_txtView">
			<div class="inr_wrap" style="overflow: visible; height: auto;">
				<div class="inr">
					<p>경복궁의 서쪽마을 서촌 옥인길에는 달콤 고소한 즐거움이 곳곳에 숨겨져 있다. 좁고 호젓한 골목에 남도의 맛을 내는 분식집, 고소한 단호박피자집, 
					아늑한 카페가 보석처럼 자리한다. 알면 알수록 즐거운 서촌 구석구석 숨겨진 맛집을 찾아내보자.
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
					center: new kakao.maps.LatLng(37.585375246504114, 126.97638258929221), //지도 중심좌표
					level: 5 //지도 확대레벨
				};
		
				var map = new kakao.maps.Map(container, options); //지도 생성
				var linePath = [ //선을 구성하는 좌표 배열, 이 좌표들을 이어서 선을 표시
				    new kakao.maps.LatLng(37.579220784475105, 126.97321467216189), //팔레 드 서울
				    new kakao.maps.LatLng(37.58095596342312, 126.96731287733664), //옥인피자
				    new kakao.maps.LatLng(37.592637106784636, 126.9664981769948), //창의문
				    new kakao.maps.LatLng(37.58293249417591, 126.98337438422291) //북촌한옥마을
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
				var markerPosition  = new kakao.maps.LatLng(37.579220784475105, 126.97321467216189); //팔레 드 서울
				var markerPosition2  = new kakao.maps.LatLng(37.58095596342312, 126.96731287733664); //옥인피자
				var markerPosition3  = new kakao.maps.LatLng(37.592637106784636, 126.9664981769948); //창의문
				var markerPosition4  = new kakao.maps.LatLng(37.58293249417591, 126.98337438422291); //북촌한옥마을
			
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
					<img src="${contextPath}/resources/images/seoul3-1.jpg">
				</a>
			</div>
			<div class="right">
				<a href="#" target="_blank" title="새창열기">
					<h5 class="mvp_h5">팔레 드 서울</h5>
				</a>
				<p>갤러리 ‘팔레 드 서울(Palais de Seoul)'은 2010년 1월, 문화예술의 새로운 지대로 떠오르고 있는 경복궁 서촌(西村)의 통의동에 새롭게 개관한 전시공간이다. 
				"서울의 궁"이라는 뜻의 '팔레 드 서울'은 약 330평이라는 규모를 자랑하며, 지하 1층부터 지상 2층까지 총 3개의 전시장과 1층의 아트숍, 
				오프닝 행사를 할 수 있는 옥상 정원까지 마련되어 있다.
				</p>
			</div>
		</div>
		
		<div class=" line_wrap clearfix" name="Gyeongbokgung Palace(kr)">
			<div class="left">
				<a href="#" target="_blank" title="새창열기">
					<img src="${contextPath}/resources/images/seoul3-2.jpg">
				</a>
			</div>
			<div class="right">
				<a href="#" target="_blank" title="새창열기">
					<h5 class="mvp_h5">옥인피자</h5>
				</a>
				<p>대표메뉴 단호박치즈피자와 고구마피자가 달콤하고 부드러워서 유명한 맛집입니다. 운치있게 피자를 즐기고 싶을때 가면 좋습니다. 
				모든 재료를 직접 만들어서 건강에 신경을 썼습니다. 오래된 집을 개조한 듯한 옥인피자. 내부는 깔끔하고, 아담합니다. 
				도우가 얇아서 느끼함 전혀 없이 담백한 기분좋은 맛입니다.
				</p>
			</div>
		</div>	
		<div class=" line_wrap clearfix" name="Gyeongbokgung Palace(kr)">
			<div class="left">
				<a href="#" target="_blank" title="새창열기">
					<img src="${contextPath}/resources/images/seoul3-3.jpg">
				</a>
			</div>
			<div class="right">
				<a href="#" target="_blank" title="새창열기">
					<h5 class="mvp_h5">창의문</h5>
				</a>
				<p>북소문인 창의문은 자하문이란 애칭으로 널리 불리었다. 숙정문이 항상 폐쇄된 채 제 구실을 못하였기에 이 문이 그 문의 역할까지 도맡지 않을 수 없었다. 
				그러하기에 사람들은 창의문을 늘상 북문이라 불렀던 것이다. 도성의 북쪽 교외로 빠지거나 가까이는 세검정과 북한산으로 가자면 이 문이 관문이기에 이용도가 적지 않았다.
				</p>
			</div>
		</div>
		<div class=" line_wrap clearfix" name="Gyeongbokgung Palace(kr)">
			<div class="left">
				<a href="#" target="_blank" title="새창열기">
					<img src="${contextPath}/resources/images/seoul3-4.jpg">
				</a>
			</div>
			<div class="right">
				<a href="#" target="_blank" title="새창열기">
					<h5 class="mvp_h5">북촌한옥마을</h5>
				</a>
				<p>예로부터 북촌이라 하여 양반 동네로 알려진 이곳 주택은 모두 조선 시대의 기와집으로서 상류층의 구조 형태를 간직하며 지금까지 보존되어 오고 있다. 
				원래 이 동네에는 솟을대문이 있는 큰 집 몇 채와 30여 호의 한옥밖에 없었으나, 일제 말기와 6.25 수복 직후 지금의 상태로 늘어났다. 
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

