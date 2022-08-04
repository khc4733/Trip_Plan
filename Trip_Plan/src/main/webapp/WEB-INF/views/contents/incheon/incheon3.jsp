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
<!-- 이국적인 분위기와 달콤한 도시 송도 -->
<div class="container text-center">
	<div id="map" style="width:100%;height:500px;"></div>
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
	<!-- footer -->
     <div>
        <jsp:include page="../../common/footer.jsp"/>
    </div>
</body>
</html>