<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c"  uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="contextPath" value="${pageContext.request.contextPath}"/>
<%  request.setCharacterEncoding("UTF-8"); %> 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>daegu1</title>
<link href="${contextPath}/resources/css/front.css" type="text/css" rel="stylesheet">
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
<!-- 도심에서 만나는 휴식 같은 풍경 -->
<div class="contents_centered">
		<div class="titleType1">
			<div class="tit">
			    <label>대구 테마코스</label>
				<h2>도심에서 만나는 휴식 같은 풍경</h2>
			</div>
			<div class="area_address">
				<span class="address">대구 중구</span> <span id="dist">코스 총거리 :
					10km</span>
			</div>
		</div>
		<div class="schedule_info">
			<ul class="schedule">
				<li style="float: left;"><span class="img"><img
						src="${contextPath}/resources/images/icon_cos_schedule1.gif" alt=""></span>
					<em>일정</em> <strong>당일여행</strong></li>
				<li style="margin-left:50px;"><span class="img"><img
						src="${contextPath}/resources/images/icon_cos_theme2.gif" alt=""></span> <em>테마</em>
					<strong>나홀로코스</strong></li>
			</ul>
		</div>
		<div class="area_txtView">
			<div class="inr_wrap" style="overflow: visible; height: auto;">
				<div class="inr">
					<p>대구의 근대골목에는 100년 전의 이야기가 고스란히 남아있다. 100년 전 선교사들의 주택이 고스란히 남아있는 청라언덕 아래로 계산성당과 이상화고택 그리고 
					진골목이 아스라이 이어진다. 삶의 에너지가 넘실대는 시장과 도심 끝에 만난 김광석 거리에는 옛 가수의 애잔한 노래가 나그네의 고달픈 마음을 어루만진다.</p>
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
				center: new kakao.maps.LatLng(35.867120624872555, 128.5920071250662), //지도 중심좌표
				level: 5 //지도 확대레벨
			};
	
			var map = new kakao.maps.Map(container, options); //지도 생성
			var linePath = [ //선을 구성하는 좌표 배열, 이 좌표들을 이어서 선을 표시
			    new kakao.maps.LatLng(35.867942142767916, 128.58781098388818), //대구 계산동성당
			    new kakao.maps.LatLng(35.867318322308755, 128.58796460267374), //이상화고택
			    new kakao.maps.LatLng(35.86855891051457, 128.58989361440604), //대구약령시 한의약박물관
			    new kakao.maps.LatLng(35.868775925314935, 128.59289826586814), //대구 진골목
			    new kakao.maps.LatLng(35.86948919495788, 128.57983170636618), //대구 서문시장 & 서문시장 야시장
			    new kakao.maps.LatLng(35.86018173735305, 128.6069014776272) //김광석 다시그리기길
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
			var markerPosition  = new kakao.maps.LatLng(35.867942142767916, 128.58781098388818); //대구 계산동성당
			var markerPosition2  = new kakao.maps.LatLng(35.867318322308755, 128.58796460267374); //이상화고택
			var markerPosition3  = new kakao.maps.LatLng(35.86855891051457, 128.58989361440604); //대구약령시 한의약박물관
			var markerPosition4  = new kakao.maps.LatLng(35.868775925314935, 128.59289826586814); //대구 진골목
			var markerPosition5  = new kakao.maps.LatLng(35.86948919495788, 128.57983170636618); //대구 서문시장 & 서문시장 야시장
			var markerPosition6  = new kakao.maps.LatLng(35.86018173735305, 128.6069014776272); //김광석 다시그리기길
			
	
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
		<div class=" line_wrap clearfix" name="Gyeongbokgung Palace(kr)">
			<div class="left">
				<a href="#" target="_blank" title="새창열기"> 
					<img src="${contextPath}/resources/images/daegu1-1.jpg">
				</a>
			</div>
			<div class="right">
				<a href="#" target="_blank" title="새창열기">
					<h5 class="mvp_h5">대구 계산동성당</h5>
				</a>
				<p>대구(大邱) 계산동(桂山洞) 성당(聖堂)은 1886년 대구 지역 선교 활동을 책임 맡고 부임한 로베르(1853~1922) 신부가 지금의 계산동 성당 부지를 매입하면서 
				건립되기 시작하였다. 1899년 한국식의 목조 십자형 건물으로 지어졌으나 1년 만에 화재로 모두 소실되었다. 그 후 재건축에 착수하여 로베르 신부가 설계하고, 국내에서 
				찾아보기 힘든 함석이나 스테인드 글라스 등의 재료들은 프랑스 및 홍콩에서 들여와 사용하였다. 
				</p>
			</div>
		</div>
		
		<div class=" line_wrap clearfix" name="Gyeongbokgung Palace(kr)">
			<div class="left">
				<a href="#" target="_blank" title="새창열기">
					<img src="${contextPath}/resources/images/daegu1-2.jpg">
				</a>
			</div>
			<div class="right">
				<a href="#" target="_blank" title="새창열기">
					<h5 class="mvp_h5">이상화고택</h5>
				</a>
				<p>대구 계산동 2가 84번지에 위치한 고택은 항일문학가로 잘 알려진 이상화(李相和, 1901 ~1943) 시인이 1939년부터 작고하던 1943년까지 거하던 곳이다. 
				암울했던 일제강점기에 민족의 광복을 위해 저항정신의 횃불을 밝힌 시인 이상화선생의 시향이 남아있는 곳이다.이상화고택은 1999년부터 고택을 보존하자는 시민운동으로 
				시작하여 군인공제회에서 인근 주상복합아파트를 건립하면서 고택을 매입해 지난 2005년 10월 27일 대구시에 기부채납했다.
				</p>
			</div>
		</div>	
		<div class=" line_wrap clearfix" name="Gyeongbokgung Palace(kr)">
			<div class="left">
				<a href="#" target="_blank" title="새창열기">
					<img src="${contextPath}/resources/images/daegu1-3.jpg">
				</a>
			</div>
			<div class="right">
				<a href="#" target="_blank" title="새창열기">
					<h5 class="mvp_h5">대구약령시 한의약박물관</h5>
				</a>
				<p>350여 년의 전통인 약령시의 역사와 약전골목의 유래를 한눈에 볼 수 있고 체험할 수 있는 전시문화 공간이다. 박물관은 약령시의 유래와
				 발전과정 등을 그래픽과 애니메이션으로 4개 국어로 소개하고 각종 희귀 한약재를 비롯해 동의보감 등 한의서, 약작두 등의 한방관련용품 300여 점을 전시하고 있다.
				 또한 다양한 체험프로그램을 운영한다. 문화관 입구에 대형약탕기가 눈길을 끌고 1층에는 전국유일의 (주)한약재 도매시장이 있다.
				</p>
			</div>
		</div>
		<div class=" line_wrap clearfix" name="Gyeongbokgung Palace(kr)">
			<div class="left">
				<a href="#" target="_blank" title="새창열기">
					<img src="${contextPath}/resources/images/daegu1-4.jpg">
				</a>
			</div>
			<div class="right">
				<a href="#" target="_blank" title="새창열기">
					<h5 class="mvp_h5">대구 진골목</h5>
				</a>
				<p>진골목은 ''긴골목''의 경상도 말씨로 ''길다''를 의미하는 ''질~다''에서 기원한다. 대구 읍성의 남문이 있었던 구 대남한의원 사거리를 통과해 종로로 50m 정도 
				들어서면 우측편으로 길게 뻗어 들어가는 골목이다. 감영시대에서 해방전까지 이 골목은 대구토착세력이었던 달성서씨들의 집성촌이었다. 이 골목을 통하면 당시 군사, 
				행정로였던 종로를 통하지 낳고도 감영, 중영까지 갈 수 있었다. 진골목은 일제 강점기 행정구역으로는 경정(종로) → 남정(남일동) → 전정/상정((포정동)으로 이어졌었다. 
				해방 이후에도 재력가들과 기업인들의 거주지로 각광 받았다.
				</p>
			</div>
		</div>	
		<div class=" line_wrap clearfix" name="Gyeongbokgung Palace(kr)">
			<div class="left">
				<a href="#" target="_blank" title="새창열기">
					<img src="${contextPath}/resources/images/daegu1-5.jpg">
				</a>
			</div>
			<div class="right">
				<a href="#" target="_blank" title="새창열기">
					<h5 class="mvp_h5">대구 서문시장 & 서문시장 야시장</h5>
				</a>
				<p>1920년대에 천황당지(天皇堂池)를 매립하여 지금의 장소로 이전한 대구 큰 장이라고 했던 서문시장은 오랜 역사를 가지고 있다. 
				조선시대 3대 시장 이라면 대구, 평양, 강경 등 세 군데 시장을 말했다. 대구 성곽의 서쪽에 있었기 때문에 서문시장이라 명하였고 처음에는 
				성곽에서300m 정도의 거리인 지금의 시장북로 본전커피숍 주위 오토바이 골목일대가 시장이였으며 매월 2일과 7일 개장 했다고 한다. 
				</p>
			</div>
		</div>
		<div class=" line_wrap clearfix" name="Gyeongbokgung Palace(kr)">
			<div class="left">
				<a href="#" target="_blank" title="새창열기">
					<img src="${contextPath}/resources/images/daegu1-6.jpg">
				</a>
			</div>
			<div class="right">
				<a href="#" target="_blank" title="새창열기">
					<h5 class="mvp_h5">김광석 다시그리기길</h5>
				</a>
				<p>김광석 길은 故 김광석이 살았던 대봉동 방천시장 인근 골목에 김광석의 삶과 음악을 테마로 조성한 벽화거리이다. 2010년 ''방천시장 문정성시 사업''의 하나로 
				방천시장 골목길에 11월부터 조성하기 시작한 김광석 길은 중구청과 11팀의 작가들이 참여하였다. 350m 길이의 벽면을 따라 김광석 조형물과 포장마차에서 국수 말아주는
				김광석, 바다를 바라보고 있는 김광석 등 골목의 벽마다 김광석의 모습과 그의 노래 가사들이 다양한 모습의 벽화로 그려졌다. 
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



