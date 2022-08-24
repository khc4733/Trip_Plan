<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>busan3</title>
<style>
        body {
        text-align: center;
            margin-left:200px;
            margin-right:50px;
        }
</style>
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
<!-- 온천욕 뒤 곰장어와 파전으로 몸보신 -->
<div class="container text-center">
	<div id="map" style="width:100%;height:500px;"></div>
	<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=2b2ca9aeab329e586b8575704eaf0afa"></script>
	<script>
		var container = document.getElementById('map'); //지도를 표시할 div
		var options = {
			center: new kakao.maps.LatLng(35.212261607069735, 129.08363656801686), //지도 중심좌표
			level: 11 //지도 확대레벨
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
	<!-- footer -->
     <div>
        <jsp:include page="../../common/footer.jsp"/>
    </div>
</body>
</html>