<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>seoul</title>
<style>
        body {
            margin-left:50px;
            margin-right:50px;
        }
</style>
</head>
<body>
<!-- top menu -->
     <div>
        <jsp:include page="../common/topmenu.jsp"/>
    </div>
<!-- side menu --> 
     <div>
        <jsp:include page="../common/sidemenu.jsp"/>
    </div>
<!-- 본문 내용 -->
<div class="container">
	<div id="map" style="width:500px;height:400px;"></div>
	<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=2b2ca9aeab329e586b8575704eaf0afa"></script>
	<script>
		var container = document.getElementById('map');
		var options = {
			center: new kakao.maps.LatLng(33.452739313807456, 126.5709308145358),
			level: 3
		};

		var map = new kakao.maps.Map(container, options);
		var linePath = [
		    new kakao.maps.LatLng(33.452344169439975, 126.56878163224233),
		    new kakao.maps.LatLng(33.452739313807456, 126.5709308145358),
		    new kakao.maps.LatLng(33.45178067090639, 126.5726886938753) 
		];

		// 지도에 표시할 선을 생성합니다
		var polyline = new kakao.maps.Polyline({
		    path: linePath, // 선을 구성하는 좌표배열 입니다
		    strokeWeight: 3, // 선의 두께 입니다
		    strokeColor: '#e05b36', // 선의 색깔입니다
		    strokeOpacity: 0.7, // 선의 불투명도 입니다 1에서 0 사이의 값이며 0에 가까울수록 투명합니다
		    strokeStyle: 'solid' // 선의 스타일입니다
		});

		// 지도에 선을 표시합니다 
		polyline.setMap(map);  
	</script>
</div>	
	<!-- footer -->
     <div>
        <jsp:include page="../common/footer.jsp"/>
    </div>
</body>
</html>