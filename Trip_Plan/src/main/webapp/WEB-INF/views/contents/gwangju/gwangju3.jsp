<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c"  uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="contextPath" value="${pageContext.request.contextPath}"/>
<%  request.setCharacterEncoding("UTF-8"); %> 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>gwangju3</title>
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
     <div>
        <jsp:include page="../../common/topmenu.jsp"/>
    </div>
<!-- side menu --> 
     <div>
        <jsp:include page="../../common/sidemenu.jsp"/>
    </div>
<!-- 본문 내용 -->
<!-- 녹색의 에너지 체험과 광주의 유적지 탐방 -->
<div class="container text-center">
	<div id="map" style="width:100%;height:500px;"></div>
	<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=2b2ca9aeab329e586b8575704eaf0afa"></script>
	<script>
		var container = document.getElementById('map'); //지도를 표시할 div
		var options = {
			center: new kakao.maps.LatLng(35.210537355170295, 126.91479482370222), //지도 중심좌표
			level: 7 //지도 확대레벨
		};

		var map = new kakao.maps.Map(container, options); //지도 생성
		var linePath = [ //선을 구성하는 좌표 배열, 이 좌표들을 이어서 선을 표시
		    new kakao.maps.LatLng(35.22729183117523, 126.841530831833), //녹색에너지체험관
		    new kakao.maps.LatLng(35.21393454806837, 126.8420784848807), //월계동 장고분
		    new kakao.maps.LatLng(35.216666449130955, 126.84620842076266), //소담(구 정통아구)
		    new kakao.maps.LatLng(35.2238104861218, 126.84335000961605), //쌍암공원
		    new kakao.maps.LatLng(35.18592878558973, 127.00310437296594) //환벽당
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
		var markerPosition  = new kakao.maps.LatLng(35.22729183117523, 126.841530831833); //녹색에너지체험관
		var markerPosition2  = new kakao.maps.LatLng(35.21393454806837, 126.8420784848807); //월계동 장고분
		var markerPosition3  = new kakao.maps.LatLng(35.216666449130955, 126.84620842076266); //소담(구 정통아구)
		var markerPosition4  = new kakao.maps.LatLng(35.2238104861218, 126.84335000961605); //쌍암공원
		var markerPosition5  = new kakao.maps.LatLng(35.18592878558973, 127.00310437296594); //환벽당

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
	<!-- footer -->
     <div>
        <jsp:include page="../../common/footer.jsp"/>
    </div>
</body>
</html>