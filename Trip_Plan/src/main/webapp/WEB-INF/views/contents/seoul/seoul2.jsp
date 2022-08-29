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
     <div class="sub_menubar">
        <jsp:include page="../../common/topmenu.jsp"/>
    </div>
<!-- side menu --> 
     <div>
        <jsp:include page="../../common/sidemenu.jsp"/>
    </div>
<!-- 본문 내용 -->
<!-- 서울의 랜드마크를 만나다 -->
<div class="contents_centered">
		<div class="titleType1">
			<div class="tit">
			    <label>서울 테마코스</label>
				<h2>서울의 랜드마크를 만나다</h2>
			</div>
			<div class="area_address">
				<span class="address">서울 중구</span> <span id="dist">코스 총거리 :
					10km</span>
			</div>
		</div>
		<div class="schedule_info">
			<ul class="schedule">
				<li style="float: left;"><span class="img"><img
						src="${contextPath}/resources/images/icon_cos_schedule1.gif" alt=""></span>
					<em>일정</em> <strong>1박2일</strong></li>
				<li style="margin-left:50px;"><span class="img"><img
						src="${contextPath}/resources/images/icon_cos_theme1.gif" alt=""></span> <em>테마</em>
					<strong>연인코스</strong></li>
			</ul>
		</div>
		<div class="area_txtView">
			<div class="inr_wrap" style="overflow: visible; height: auto;">
				<div class="inr">
					<p>볼거리 넘치는 서울 도심을 가족과 함께 돌아보자. 옛날 서울역사를 리모델링해 독특한 테마의 전시를 하고 있는 문화 공간, 
					문화역 서울 284를 둘러보고 서울광장에서 펼쳐지는 다양한 이벤트에도 참여해보자. 
					남산 한옥마을에서 전통체험을 즐기고 남산서울타워에 오르면 서울의 전경이 파노라마로 펼쳐진다.</p>
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
		<div class=" line_wrap clearfix" name="Gyeongbokgung Palace(kr)">
			<div class="left">
				<a href="#" target="_blank" title="새창열기"> 
					<img src="${contextPath}/resources/images/seoul2-1.jpg">
				</a>
			</div>
			<div class="right">
				<a href="#" target="_blank" title="새창열기">
					<h5 class="mvp_h5">숭례문</h5>
				</a>
				<p>숭례문은 조선시대 한성 도성의 정문으로 4대문 가운데 남쪽에 위치하여 남대문으로도 불린다. 
				처음 만들어졌을 때는 양측에 성벽이 연결되어 있었지만 1908년 도로를 내기 위하여 헐어 내고 성문만 떨어져 있었으나, 
				2006년 복원 공사를 후 지금과 같은 모습을 하게 되었다. 1962년 문화재보호법에 의하여 보물에서 국보로 지정되었다.
				</p>
			</div>
		</div>
		
		<div class=" line_wrap clearfix" name="Gyeongbokgung Palace(kr)">
			<div class="left">
				<a href="#" target="_blank" title="새창열기">
					<img src="${contextPath}/resources/images/seoul2.jpg">
				</a>
			</div>
			<div class="right">
				<a href="#" target="_blank" title="새창열기">
					<h5 class="mvp_h5">문화역 서울 284</h5>
				</a>
				<p>구서울역사를 복원하여 2011년부터 복합문화예술공간으로 거듭난 문화역서울284는 연중 내내 다양한 전시, 공연, 문화 행사, 상설 프로그램 등이 열리는 곳이다. 
				1900년 남대문정차장을 시작으로 경성역, 서울역을 거쳐 100여년의 역사를 이어가는 공간이다. 1925년의 경성역 모습을 복원하여 방문객에게도 즐거움을 주고 있다. 
				</p>
			</div>
		</div>	
		<div class=" line_wrap clearfix" name="Gyeongbokgung Palace(kr)">
			<div class="left">
				<a href="#" target="_blank" title="새창열기">
					<img src="${contextPath}/resources/images/seoul2-3.jpg">
				</a>
			</div>
			<div class="right">
				<a href="#" target="_blank" title="새창열기">
					<h5 class="mvp_h5">덕수궁</h5>
				</a>
				<p>사적 덕수궁은 본디 왕궁이 아니었으며 성종의 형인 월산대군(1454∼1488)의 집이었으나, 
				1592년 임진왜란 때 왕궁이 모두 불타 1593년 행궁으로 사용하기 시작하였다. 고종 황제는 1907년 순종에게 양위한 후, 왕궁을 창덕궁으로 옮긴 후에도 이곳에 거처하였는데, 
				이때부터 고종 황제의 장수를 비는 뜻에서 덕수궁이라 부르게 되었다. 
				</p>
			</div>
		</div>
		<div class=" line_wrap clearfix" name="Gyeongbokgung Palace(kr)">
			<div class="left">
				<a href="#" target="_blank" title="새창열기">
					<img src="${contextPath}/resources/images/seoul2-4.jpg">
				</a>
			</div>
			<div class="right">
				<a href="#" target="_blank" title="새창열기">
					<h5 class="mvp_h5">서울광장</h5>
				</a>
				<p>서울광장은 3.1운동, 6월 민주화운동 등 한국현대사의 한 획을 긋는 역사적 사건의 무대였으며 2002년 월드컵 기간에는 시민들의 축제의 마당이었다. 
				시청광장의 역사는 고종이 러시아공사관으로 피신했다가 월산대군 개인집(덕수궁)으로 돌아온 1897년부터 시작된다. 황제의 자리에 오른 고종은 나라의 기틀을 
				새로이 하기 위해 덕수궁 대한문 앞을 중심으로 하는 방사선형 도로를 닦고 앞쪽에는 광장과 원구단을 설치하였다.
				</p>
			</div>
		</div>	
		<div class=" line_wrap clearfix" name="Gyeongbokgung Palace(kr)">
			<div class="left">
				<a href="#" target="_blank" title="새창열기">
					<img src="${contextPath}/resources/images/seoul2-5.jpg">
				</a>
			</div>
			<div class="right">
				<a href="#" target="_blank" title="새창열기">
					<h5 class="mvp_h5">남산골 한옥마을</h5>
				</a>
				<p>1998년 조성된 남산골한옥마을은 남산 북측 옛 수도방위사령부 부지 총 79,934m²(24,180평)에 한옥 5동, 전통공예관, 천우각, 전통정원, 서울남산국악당,
				 새천년타임캡슐 광장으로 구성되어 시민과 관광객을 맞이하고 있다. 번화한 도심 한 가운데에서 한국 전통문화를 소재로 한 다양한 체험거리를 만나볼 수 있으며, 
				 남산 자락을 따라 전통조경 양식으로 조성된 계곡과 정자, 각종 화초가 만들어내는 아름다운 풍경을 만날 수 있다. 
				</p>
			</div>
		</div>
		<div class=" line_wrap clearfix" name="Gyeongbokgung Palace(kr)">
			<div class="left">
				<a href="#" target="_blank" title="새창열기">
					<img src="${contextPath}/resources/images/seoul2-6.jpg">
				</a>
			</div>
			<div class="right">
				<a href="#" target="_blank" title="새창열기">
					<h5 class="mvp_h5">남산 서울타워</h5>
				</a>
				<p>''남산서울타워''는 효율적인 방송전파 송수신과 한국의 전통미를 살린 관광 전망시설의 기능을 겸비한 국내 최초의 종합전파탑으로 방송문화와 관광산업의 미래를 위해 건립되었다. 
				세계 유명한 종합 탑들이 그 나라 또는 그 도시의 상징적인 존재가 된 것 처럼 ''남산서울타워'' 역시 지난 40여 년간 대한민국의 대표적인 관광지이자 서울의 상징물 역할을 해왔다.
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
