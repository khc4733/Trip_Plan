<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c"  uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="contextPath" value="${pageContext.request.contextPath}"/>
<%  request.setCharacterEncoding("UTF-8"); %> 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>daejeon2</title>
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
<!-- 도시의 자연 속에서 휴식을 취하다 -->
<div class="container text-center">
	<div id="map" style="width:100%;height:500px;"></div>
	<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=2b2ca9aeab329e586b8575704eaf0afa"></script>
	<script>
		var container = document.getElementById('map'); //지도를 표시할 div
		var options = {
			center: new kakao.maps.LatLng(36.384927794814864, 127.42971905867657), //지도 중심좌표
			level: 7 //지도 확대레벨
		};

		var map = new kakao.maps.Map(container, options); //지도 생성
		var linePath = [ //선을 구성하는 좌표 배열, 이 좌표들을 이어서 선을 표시
			new kakao.maps.LatLng(36.37378336017493, 127.47190337018795), //대청호오백리길
		    new kakao.maps.LatLng(36.40352859159447, 127.44911849215336), //계족산 황톳길
		    new kakao.maps.LatLng(36.367933764478536, 127.39246420455326), //천연기념물센터
		    new kakao.maps.LatLng(36.36924606163258, 127.38799129373515) //한밭수목원
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
		var markerPosition  = new kakao.maps.LatLng(36.37378336017493, 127.47190337018795); //대청호오백리길
		var markerPosition2  = new kakao.maps.LatLng(36.40352859159447, 127.44911849215336); //계족산 황톳길
		var markerPosition3  = new kakao.maps.LatLng(36.367933764478536, 127.39246420455326); //천연기념물센터
		var markerPosition4  = new kakao.maps.LatLng(36.36924606163258, 127.38799129373515); //한밭수목원
		

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
	<!-- footer -->
     <div>
        <jsp:include page="../../common/footer.jsp"/>
    </div>
</body>
</html>