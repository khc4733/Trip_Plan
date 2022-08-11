<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c"  uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="contextPath" value="${pageContext.request.contextPath}"/>
<%  request.setCharacterEncoding("UTF-8"); %> 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>daejeon1</title>
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
<!-- 밤의 열기 가득한 도시의 야경 -->
<div class="contents_centered">
		<div class="titleType1">
			<div class="tit">
			    <label>대전 테마코스</label>
				<h2>밤의 열기 가득한 도시의 야경</h2>
			</div>
			<div class="area_address">
				<span class="address">대전 중구</span> <span id="dist">코스 총거리 :
					7.51km</span>
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
					<p>쇼핑과 문화 예술 충전소인 으능정이 문화의 거리는 밤늦은 시간까지 북적거리는 사람들과 빛나는 네온사인으로 가득하다. 
					여기에 대전의 새로운 야간 명소로 떠오른 스카이로드까지 더해져 어디서도 볼 수 없는 도시의 야경을 선사한다. 2013년 개장한 보문산공원 스카이로드는 
					국내 최대 규모 아케이드형 LED 영상 시설로 매일 밤 환상적인 영상 쇼가 펼쳐진다.
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
					center: new kakao.maps.LatLng(36.32387078100575, 127.42539671004631), //지도 중심좌표
					level: 6 //지도 확대레벨
				};
		
				var map = new kakao.maps.Map(container, options); //지도 생성
				var linePath = [ //선을 구성하는 좌표 배열, 이 좌표들을 이어서 선을 표시
					new kakao.maps.LatLng(36.30879320522277, 127.4230990453154), //보문산 행복숲 둘레길
				    new kakao.maps.LatLng(36.329406916919595, 127.42836706287294), //은행동 으능정이 문화의거리
				    new kakao.maps.LatLng(36.325947716658334, 127.42547481986787) //대흥동 문화예술의거리
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
				var markerPosition  = new kakao.maps.LatLng(36.30879320522277, 127.4230990453154); //보문산 행복숲 둘레길
				var markerPosition2  = new kakao.maps.LatLng(36.329406916919595, 127.42836706287294); //은행동 으능정이 문화의거리
				var markerPosition3  = new kakao.maps.LatLng(36.325947716658334, 127.42547481986787); //대흥동 문화예술의거리
				
		
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
				
				
				// 마커가 지도 위에 표시되도록 설정합니다
				marker.setMap(map);
				marker2.setMap(map);
				marker3.setMap(map);
			</script>
		</div>
		<div class=" line_wrap clearfix" name="Gyeongbokgung Palace(kr)">
			<div class="left">
				<a href="#" target="_blank" title="새창열기"> 
					<img src="${contextPath}/resources/images/daejeon1-1.jpg">
				</a>
			</div>
			<div class="right">
				<a href="#" target="_blank" title="새창열기">
					<h5 class="mvp_h5">보문산 행복 숲 둘레길</h5>
				</a>
				<p>보문산은 대전광역시 중심부 남쪽에 솟은 산으로, 보물이 묻혀 있다 하여 ''보물산''이라 불리었다가 보문산이 되었다고 하며 
				시민으로부터 사랑을 많이 받고 있는 대전의 대표적인 공원이다. 대전 중심부의 남쪽에 위치한 보문산(457.6m)은 1965년 공원으로 지정되었다. 
				</p>
			</div>
		</div>
		<div class=" line_wrap clearfix" name="Gyeongbokgung Palace(kr)">
			<div class="left">
				<a href="#" target="_blank" title="새창열기">
					<img src="${contextPath}/resources/images/daejeon1-2.jpg">
				</a>
			</div>
			<div class="right">
				<a href="#" target="_blank" title="새창열기">
					<h5 class="mvp_h5">은행동 으능정이 문화의거리</h5>
				</a>
				<p>대전의 중심에 있는 은행동 젊음 패션 거리는 젊은이들의 거리로 대전의 명동으로 불리며 패션뿐 아니라 볼거리, 먹거리, 즐길 거리가 고루갖추어져 있으며 
				문화와 패션이 함께 숨쉬는 거리로 다양한 문화 행사를 개최하고 차 없는 거리를 조성하여 명실공히 젊은이들을 위한 거리로 발전하고 있다
				</p>
			</div>
		</div>	
		<div class=" line_wrap clearfix" name="Gyeongbokgung Palace(kr)">
			<div class="left">
				<a href="#" target="_blank" title="새창열기">
					<img src="${contextPath}/resources/images/daejeon1-3.jpg">
				</a>
			</div>
			<div class="right">
				<a href="#" target="_blank" title="새창열기">
					<h5 class="mvp_h5">대흥동 문화예술의거리</h5>
				</a>
				<p>대전 중구 대흥동 일대는 대전의 원도심이다. 세련된 도시 이미지가 느껴지는 건물과 카페가 있는가 하면, 1970~80년대를 떠올리게 하는 손때 묻은 풍경이 공존한다. 
				대흥동을 멋스럽게 꾸미는 것은 낡고 허름해 보이는 건물과 외벽에 그려진 빈티지한 그림이다. 벽을 뚫고 나오는 자동차, 골목길 계량기에 그려진 그림이 아날로그적 풍경을 연출한다.
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
		
	