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
<!-- 대구의 핫플레이스를 둘러보는 1박2일 여행 코스 -->
<div class="container text-center">
	<div id="map" style="width:100%;height:500px;"></div>
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
	<!-- footer -->
     <div>
        <jsp:include page="../../common/footer.jsp"/>
    </div>
</body>
</html>