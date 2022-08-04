<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c"  uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="contextPath" value="${pageContext.request.contextPath}"/>
<%  request.setCharacterEncoding("UTF-8"); %> 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>seoul2</title>
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
<!-- 서울의 랜드마크를 만나다 -->
<div class="contents_centered">
	<div id="map">
	<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=2b2ca9aeab329e586b8575704eaf0afa"></script>
	<script>
		var container = document.getElementById('map'); //지도를 표시할 div
		var options = {
			center: new kakao.maps.LatLng(37.55865258137133, 126.9812351799603), //지도 중심좌표
			level: 5 //지도의 확대 레벨
		};

		var map = new kakao.maps.Map(container, options); //지도 생성
		var linePath = [  //선을 구성하는 좌표 배열, 이 좌표들을 이어서 선을 표시
		    new kakao.maps.LatLng(37.55998497994647, 126.97527012170254), //숭례문
		    new kakao.maps.LatLng(37.555866589749385, 126.97157069326938), //문화역 서울284
		    new kakao.maps.LatLng(37.565616124019655, 126.97487209970501), //덕수궁
		    new kakao.maps.LatLng(37.56567079679311, 126.97793949839605), //서울광장
		    new kakao.maps.LatLng(37.55932071274554, 126.99469189471645), //남산골 한옥마을
		    new kakao.maps.LatLng(37.55133739601309, 126.98812876660402) //남산 서울타워
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
		var markerPosition  = new kakao.maps.LatLng(37.55998497994647, 126.97527012170254); //숭례문
		var markerPosition2  = new kakao.maps.LatLng(37.555866589749385, 126.97157069326938); //문화역 서울284
		var markerPosition3  = new kakao.maps.LatLng(37.565616124019655, 126.97487209970501); //덕수궁 
		var markerPosition4  = new kakao.maps.LatLng(37.56567079679311, 126.97793949839605); //서울광장 
		var markerPosition5  = new kakao.maps.LatLng(37.55932071274554, 126.99469189471645); //남산골 한옥마을 
		var markerPosition6  = new kakao.maps.LatLng(37.55133739601309, 126.98812876660402); //남산 서울타워 
		

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
</div>	
	<!-- footer -->
     <div>
        <jsp:include page="../../common/footer.jsp"/>
    </div>
</body>
</html>