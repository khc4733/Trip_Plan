<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="contextPath" value="${pageContext.request.contextPath}" />
<%
request.setCharacterEncoding("UTF-8");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>gwangju3</title>
<link href="${contextPath}/resources/css/front.css" type="text/css"
	rel="stylesheet">
</head>
<body>
	<!-- top menu -->
     <div class="sub_menubar">
        <jsp:include page="../../common/topmenu.jsp"/>
    </div>
	<!-- side menu -->
	<div>
		<jsp:include page="../../common/sidemenu.jsp" />
	</div>
	<!-- 본문 내용 -->
	<!-- 광주 서구 8경 중 4경을 찾아 떠나는 여행 -->
	<div class="contents_centered">
		<div class="titleType1">
			<div class="tit">
				<label>광주 테마코스</label>
				<h2>녹색의 에너지 체험과 광주의 유적지 탐방</h2>
			</div>
			<div class="area_address">
				<span class="address">광주 북구</span> <span id="dist">코스 총거리 :
					30.71km</span>
			</div>
		</div>
		<div class="schedule_info">
			<ul class="schedule">
				<li style="float: left;"><span class="img"><img
						src="${contextPath}/resources/images/icon_cos_schedule1.gif"
						alt=""></span> <em>일정</em> <strong>당일여행</strong></li>
				<li style="margin-left: 50px;"><span class="img"><img
						src="${contextPath}/resources/images/icon_cos_theme1.gif" alt=""></span>
					<em>테마</em> <strong>가족코스</strong></li>
			</ul>
		</div>
		<div class="area_txtView">
			<div class="inr_wrap" style="overflow: visible; height: auto;">
				<div class="inr">
					<p>녹색에너지체험관에서는 에너지의 효율과 환경보존 등의 계속 대두되고 있는 환경문제에 대해 자세히 알아볼 수
						있고 다양한 에너지 체험을 할 수 있기 때문에 자녀의 산교육장이 될 것이다. 너른 공원과 유적지를 뛰어 놀며 공부한다면
						잊혀 지지 않는 학습과 여행이 이루어질 수 있는 코스다.</p>
				</div>
			</div>
			<div class="cont_more" style="display: none;">
				<button type="button" class="btn_more" title="내용더보기">
					<span>더보기</span>
				</button>
			</div>
		</div>
		<div id="map">
			<script type="text/javascript"
				src="//dapi.kakao.com/v2/maps/sdk.js?appkey=2b2ca9aeab329e586b8575704eaf0afa"></script>
			<script>
				var container = document.getElementById('map'); //지도를 표시할 div
				var options = {
					center : new kakao.maps.LatLng(35.210537355170295,
							126.91479482370222), //지도 중심좌표
					level : 7
				//지도 확대레벨
				};

				var map = new kakao.maps.Map(container, options); //지도 생성
				var linePath = [ //선을 구성하는 좌표 배열, 이 좌표들을 이어서 선을 표시
				new kakao.maps.LatLng(35.22729183117523, 126.841530831833), //녹색에너지체험관
				new kakao.maps.LatLng(35.21393454806837, 126.8420784848807), //월계동 장고분
				new kakao.maps.LatLng(35.2238104861218, 126.84335000961605), //쌍암공원
				new kakao.maps.LatLng(35.18592878558973, 127.00310437296594) //환벽당
				];

				// 지도에 표시할 선을 생성합니다
				var polyline = new kakao.maps.Polyline({
					path : linePath, // 선을 구성하는 좌표배열 입니다
					strokeWeight : 3, // 선의 두께 입니다
					strokeColor : '#e30e0e', // 선의 색깔입니다
					strokeOpacity : 0.7, // 선의 불투명도 입니다 1에서 0 사이의 값이며 0에 가까울수록 투명합니다
					strokeStyle : 'solid' // 선의 스타일입니다
				});

				// 지도에 선을 표시합니다 
				polyline.setMap(map);

				// 마커가 표시될 위치입니다 
				var markerPosition = new kakao.maps.LatLng(35.22729183117523,
						126.841530831833); //녹색에너지체험관
				var markerPosition2 = new kakao.maps.LatLng(35.21393454806837,
						126.8420784848807); //월계동 장고분
				var markerPosition4 = new kakao.maps.LatLng(35.2238104861218,
						126.84335000961605); //쌍암공원
				var markerPosition5 = new kakao.maps.LatLng(35.18592878558973,
						127.00310437296594); //환벽당

				// 마커를 생성합니다
				var marker = new kakao.maps.Marker({
					position : markerPosition
				});
				var marker2 = new kakao.maps.Marker({
					position : markerPosition2
				});

				var marker3 = new kakao.maps.Marker({
					position : markerPosition4
				});

				var marker4 = new kakao.maps.Marker({
					position : markerPosition5
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
				 <img
					src="${contextPath}/resources/images/gwangju3-1.jpg">

			</div>
			<div class="right">
				
					<h5 class="mvp_h5">녹색에너지체험관</h5>

				<p>녹색에너지체험관에는 여러 형태의 에너지가 있다. 화석에너지, 환경에너지, 신재생에너지 등이 무엇인지 관람하고,
					체험하며 에너지 절약의 필요성과 실천할 수 있는 에너지 절약 방법도 생각해 본다. 아이들은 화석에너지 코너에서 환경을
					생각하고 LED체험 코너에서는 황홀경에 빠지기도 한다.</p>
			</div>
		</div>

		<div class=" line_wrap clearfix" name="Gyeongbokgung Palace(kr)">
			<div class="left">
				 <img
					src="${contextPath}/resources/images/gwangju3-2.jpg">

			</div>
			<div class="right">
				
					<h5 class="mvp_h5">월계동 장고분</h5>
	
				<p>월계동 장고분은 영산강 상류의 낮은 구릉지대에 있는 장구촌마을에 있으며, 발달된 방부(方部)와 방패형
					주호(周濠), 나팔형 토기 등의 유물이 출토되었다. 발달된 방부(方部)와 방패현 주호(周濠), 크게 벌어진 나팔형 토기
					등이 특징으로 옛 무덤 발달사 연구에 중요한 유적이다.</p>
			</div>
		</div>
		<div class=" line_wrap clearfix" name="Gyeongbokgung Palace(kr)">
			<div class="left">
				 <img
					src="${contextPath}/resources/images/gwangju3-3.jpg">

			</div>
			<div class="right">
				
					<h5 class="mvp_h5">쌍암공원</h5>

				<p>
					* 호수와 여유, 그리고 쉼이 있는 공간, 쌍암공원 * <br>쌍암공원은 광산구 첨단지구 내 광주과학기술원 앞에
					위치해 있다. 한가운데 위치하고 있는 호수 때문에 운치를 더하고 있어, 일명 호수공원으로도 불리기도 한다. 호수주변을
					따라 잘 조성된 철쭉꽃 숲들과 소나무숲이 있고 하늘을 향해 내뿜는 부유폭기는 상쾌함과 시원함을 더해준다. 한 달에 한두
					번은 도심 속의 작은 예술축제 등 이벤트행사가 열려 분위기를 한껏 돋군다.
				</p>
			</div>
		</div>
		<div class=" line_wrap clearfix" name="Gyeongbokgung Palace(kr)">
			<div class="left">
				 <img
					src="${contextPath}/resources/images/gwangju3-4.jpg">

			</div>
			<div class="right">
				
					<h5 class="mvp_h5">환벽당</h5>

				<p>이곳에는 우암 송시열(尤庵宋時烈)이 쓴 제액(題額)이 걸려있고, 석천 임억령(石川林億齡)과 조자이(趙子以)의
					시가 현판으로 걸려 있다. 환벽당에 관한 시는 정철이 지은 2수가 있는데, 송강속집과 광주목지에 실려 있다. 정철의
					4대손 정수환(鄭守環)이 김윤제의 후손으로부터 사들여 현재 연일정씨 문중에서 관리하고 있다.</p>
			</div>
		</div>
	</div>
	<!-- footer -->
	<div>
		<jsp:include page="../../common/footer.jsp" />
	</div>
</body>
</html>