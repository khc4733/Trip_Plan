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
<title>jeju1</title>
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
				<label>제주 테마코스</label>
				<h2>제주 사계해안도로, 바다와 산의 하모니에 홀릭하다!</h2>
			</div>
			<div class="area_address">
				<span class="address">제주도</span> <span id="dist">코스 총거리 : 약
					10km</span>
			</div>
		</div>
		<div class="schedule_info">
			<ul class="schedule">
				<li style="float: left;"><span class="img"><img
						src="${contextPath}/resources/images/icon_cos_schedule1.gif"
						alt=""></span> <em>일정</em> <strong>당일여행</strong></li>
				<li style="margin-left: 50px;"><span class="img"><img
						src="${contextPath}/resources/images/icon_cos_theme1.gif" alt=""></span>
					<em>테마</em> <strong>힐링코스</strong></li>
			</ul>
		</div>
		<div class="area_txtView">
			<div class="inr_wrap" style="overflow: visible; height: auto;">
				<div class="inr">
					<p>제주여행의 매력은 뭐니 뭐니 해도 해안 따라 드라이브를 즐기는 것이다. 사면이 바다로 둘러싸여 있기
						때문이다. 제주의 해안도로는 비경과 특징이 각기 다르다. 그중 산과 섬, 바다가 한데 어우러지며 빼어난 경관을 간직한
						곳이 바로 사계해안도로이다. 사계해안도로는 제주 안덕면 사계리(산방산)~대정읍 상모리(송악산)를 연결하는 도로로 빼어난
						해안절경과 섬과 산의 절묘한 어우러짐이 펼쳐진다. 해안을 둘러싸듯 우뚝 솟은 산방산과 송악산이 해안의 양쪽 끝에 버티고
						있어 포근함과 안정감을 주는 서귀포시의 대표적인 해안도로이다. 낮은 지대로 달리다보니 해안 조망이 눈높이에 있어
						디테일하게 비경을 담을 수 있다. 해안과 산, 도로가 합의일체로 그려내는 빼어난 광경 외에도 바다를 붉게 물드는
						환상적인 낙조까지 자연이 만들어낸 모든 것이 아름답고 황홀하다.</p>
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
					center : new kakao.maps.LatLng(33.21868122559501,
							126.29490800616615), //지도 중심좌표
					level : 7
				//지도 확대레벨
				};

				var map = new kakao.maps.Map(container, options); //지도 생성
				var linePath = [ //선을 구성하는 좌표 배열, 이 좌표들을 이어서 선을 표시
				new kakao.maps.LatLng(33.24148538988371, 126.31304032344184), //산방산
				new kakao.maps.LatLng(33.231793052333416, 126.31468245881084), //용머리해안
				new kakao.maps.LatLng(33.22570418133077, 126.29958254146527), //사계해변
				new kakao.maps.LatLng(33.21871734945315, 126.29491844316698), //사계 발자국화석 발견지
				new kakao.maps.LatLng(33.20641293479589, 126.2812029842462), //섯알오름
				new kakao.maps.LatLng(33.19950690563491, 126.2906968985212) //송악산
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
				var markerPosition = new kakao.maps.LatLng(33.24148538988371,
						126.31304032344184); //산방산
				var markerPosition2 = new kakao.maps.LatLng(33.231793052333416,
						126.31468245881084); //용머리해안
				var markerPosition3 = new kakao.maps.LatLng(33.22570418133077,
						126.29958254146527); //사계해변 
				var markerPosition4 = new kakao.maps.LatLng(33.21871734945315,
						126.29491844316698); //사계 발자국화석 발견지 
				var markerPosition5 = new kakao.maps.LatLng(33.20641293479589,
						126.2812029842462); //섯알오름
				var markerPosition6 = new kakao.maps.LatLng(33.19950690563491,
						126.2906968985212); //송악산

				// 마커를 생성합니다
				var marker = new kakao.maps.Marker({
					position : markerPosition
				});
				var marker2 = new kakao.maps.Marker({
					position : markerPosition2
				});
				var marker3 = new kakao.maps.Marker({
					position : markerPosition3
				});

				var marker4 = new kakao.maps.Marker({
					position : markerPosition4
				});

				var marker5 = new kakao.maps.Marker({
					position : markerPosition5
				});

				var marker6 = new kakao.maps.Marker({
					position : markerPosition6
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
		<div class=" line_wrap clearfix" name="Gyeongbokgung Palace(kr)">
			<div class="left">
				<a href="#" target="_blank" title="새창열기"> <img
					src="${contextPath}/resources/images/jeju1-1.jpg">
				</a>
			</div>
			<div class="right">
				<a href="#" target="_blank" title="새창열기">
					<h5 class="mvp_h5">산방산(제주)</h5>
				</a>
				<p>제주도 서남부의 평야지대에 우뚝 서 있어 어디에서도 조망이 가능한 종 모양의 종상화산체다. 용암돔 남측 절벽의
					높이 150~300m 사이에는 다양한 모양과 크기의 풍화혈과 애추가 발달되어 있고, 해발 150m쯤에 길이 약 10m,
					너비와 높이가 약 5m인 산방굴이라고 하는 해식동굴이 바다를 향해 특색 있는 경관을 이루어 있어 영주십경의 하나이다.</p>
			</div>
		</div>

		<div class="line_wrap clearfix" name="Gyeongbokgung Palace(kr)">
			<div class="left">
				<a href="#" target="_blank" title="새창열기"> <img
					src="${contextPath}/resources/images/jeju1-2.jpg">
				</a>
			</div>
			<div class="right">
				<a href="#" target="_blank" title="새창열기">
					<h5 class="mvp_h5">용머리해안</h5>
				</a>
				<p>산방산 앞자락에 있는 바닷가로 산방산 휴게소에서 10여분 걸어내려가면 수려한 해안절경의 용머리 해안과 마주치게
					된다.이 곳은 수천만년 동안 쌓이고 쌓여 이루어진 사암층 중 하나이다. 해안 절벽을 모진 파도가 때려서 만들어 놓은 해안
					절경이다. 작은 방처럼 움푹 들어간 굴방이나 드넓은 암벽의 침식 지대가 펼쳐져 장관을 이루고 있는 곳으로 얼마 전부터
					제주의 새롭게 소개되는 관광코스 중의 하나이다.</p>
			</div>
		</div>
		<div class=" line_wrap clearfix" name="Gyeongbokgung Palace(kr)">
			<div class="left">
				<a href="#" target="_blank" title="새창열기"> <img
					src="${contextPath}/resources/images/jeju1-3.jpg">
				</a>
			</div>
			<div class="right">
				<a href="#" target="_blank" title="새창열기">
					<h5 class="mvp_h5">사계해변</h5>
				</a>
				<p>사계해변은 산방산 바로 아래쪽에 자리한 해변으로 한적하고 조용한 것이 특징이다. 이곳에서는 형제섬, 산방산과
					한라산, 용머리해안까지 조망이 가능하다. 깨끗한 모래와 푸른 바다가 어우러져 아름답다. 사계해변 인근 사계포구는 낚시
					포인트로 낚시꾼들의 발길이 끊이지 않는다. 자연적으로 형성된 화산석이 둘러싸고 있는 모습의 사계해안은 제주 올레길
					10코스에 해당되어 탐방객들이 늘고있다. 사계해변 인근에는 천연기념물로 지정되어 있는 사계발자국화석발간지를 만나볼 수
					있다.</p>
			</div>
		</div>
		<div class=" line_wrap clearfix" name="Gyeongbokgung Palace(kr)">
			<div class="left">
				<a href="#" target="_blank" title="새창열기"> <img
					src="${contextPath}/resources/images/jeju1-4.jpg">
				</a>
			</div>
			<div class="right">
				<a href="#" target="_blank" title="새창열기">
					<h5 class="mvp_h5">사계 발자국화석 발견지</h5>
				</a>
				<p>천연기념물로 지정되어 있는 발자국 화석 공원으로 구석기 시대에 생성되었다고 추정되고 있다. 사람, 새, 코끼리
					등 사람과 동물, 식물 화석 등이 새겨져 볼만하다. 지질이 독특하고 모양 또한 화성에 온 듯한 착각이 들 정도로 화려해
					감상하기 좋다. 사계 발자국화석 발견지는 천연기념물로 목재 울타리를 둘러 보호되어 가까이서 볼 수는 없지만 안내판을 보며
					잠시 멈춰 화석을 구경해볼 수 있다.</p>
			</div>
		</div>
		<div class=" line_wrap clearfix" name="Gyeongbokgung Palace(kr)">
			<div class="left">
				<a href="#" target="_blank" title="새창열기"> <img
					src="${contextPath}/resources/images/jeju2-3.jpg">
				</a>
			</div>
			<div class="right">
				<a href="#" target="_blank" title="새창열기">
					<h5 class="mvp_h5">섯알오름</h5>
				</a>
				<p>송오름(송악산) 북쪽에 알오름 세 개가 동서로 뻗어 있는데 그 중 서쪽 오름이 섯알오름이며 동쪽것은 동알오름,
					가운데 것을 셋알오름이라고 한다. 송악산 북쪽에 있는 섯알오름은 작고 나지막한 3개의 말굽형 분화구가 나란히 줄지어
					분포되어 있는 곳이다. 높이 약 21m, 둘레 704m, 총면적 29,094㎢인 섯알오름은 아담한 동산과 같은 느낌이지만
					이곳은 양민학살터로 아픔이 있는 4.3유적지이기도 하다.</p>
			</div>
		</div>
		<div class=" line_wrap clearfix" name="Gyeongbokgung Palace(kr)">
			<div class="left">
				<a href="#" target="_blank" title="새창열기"> <img
					src="${contextPath}/resources/images/jeju2-4.jpg">
				</a>
			</div>
			<div class="right">
				<a href="#" target="_blank" title="새창열기">
					<h5 class="mvp_h5">송악산</h5>
				</a>
				<p>산방산(395m)의 남쪽, 가파도가 손에 잡힐 듯 보이는 바닷가에 불끈 솟은 산이 산방산이다. 99개의 작은
					봉우리가 모여 일명 99봉이라고도 한다. 남제주군 산방굴사에서 송악산 초입까지는 풍치 좋기로 소문난 해안도로이다. 그
					길을 달려 송악산에 이른다.</p>
			</div>
		</div>
	</div>
	<!-- footer -->
	<div>
		<jsp:include page="../../common/footer.jsp" />
	</div>
</body>
</html>