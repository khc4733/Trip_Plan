<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c"  uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="contextPath" value="${pageContext.request.contextPath}"/>
<%  request.setCharacterEncoding("UTF-8"); %> 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>daejeon3</title>
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
<!-- 생태환경과 과학으로 꿈꾸는 멋진 도시 -->
<div class="contents_centered">
		<div class="titleType1">
			<div class="tit">
			    <label>대전 테마코스</label>
				<h2>생태환경과 과학으로 꿈꾸는 멋진 도시</h2>
			</div>
			<div class="area_address">
				<span class="address">대전</span> <span id="dist">코스 총거리 :
					72.27km</span>
			</div>
		</div>
		<div class="schedule_info">
			<ul class="schedule">
				<li style="float: left;"><span class="img"><img
						src="${contextPath}/resources/images/icon_cos_schedule1.gif" alt=""></span>
					<em>일정</em> <strong>당일여행</strong></li>
				<li style="margin-left:50px;"><span class="img"><img
						src="${contextPath}/resources/images/icon_cos_theme1.gif" alt=""></span> <em>테마</em>
					<strong>가족코스</strong></li>
			</ul>
		</div>
		<div class="area_txtView">
			<div class="inr_wrap" style="overflow: visible; height: auto;">
				<div class="inr">
					<p>첨단과학기술의 메카인 대전, 푸른 호수와 초록의 숲, 정겨운 마음들을 둘러보는 것은 대전 여행의 또 다른 보너스이다. 
					좋은 추억을 만들며 내용까지 알찬 여행을 하고 싶다면 시티투어를 이용해 보자. 진짜 대전의 모습을 만날 수 있다.</p>
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
					center: new kakao.maps.LatLng(36.43738822968217, 127.20957307181995), //지도 중심좌표
					level: 9 //지도 확대레벨
				};
		
				var map = new kakao.maps.Map(container, options); //지도 생성
				var linePath = [ //선을 구성하는 좌표 배열, 이 좌표들을 이어서 선을 표시
					new kakao.maps.LatLng(36.33699920611544, 127.33532462785477), //대전시립박물관
				    new kakao.maps.LatLng(36.46248033684008, 127.1136729738992), //공주 무령왕릉과 왕릉원
				    new kakao.maps.LatLng(36.463440801016006, 127.12639286932182), //공주 공산성
				    new kakao.maps.LatLng(36.43492656423352, 127.23459260343292), //충청남도 산림박물관
				    new kakao.maps.LatLng(36.35553145903048, 127.34497987556465) //유성온천지구
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
				var markerPosition  = new kakao.maps.LatLng(36.33699920611544, 127.33532462785477); //대전시립박물관
				var markerPosition2  = new kakao.maps.LatLng(36.46248033684008, 127.1136729738992); //공주 무령왕릉과 왕릉원
				var markerPosition3  = new kakao.maps.LatLng(36.367933764478536, 127.39246420455326); //공주 공산성
				var markerPosition4  = new kakao.maps.LatLng(36.43492656423352, 127.23459260343292); //충청남도 산림박물관
				var markerPosition5  = new kakao.maps.LatLng(36.35553145903048, 127.34497987556465); //유성온천지구
				
		
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
		<div class=" line_wrap clearfix" name="Gyeongbokgung Palace(kr)">
			<div class="left">
				<a href="#" target="_blank" title="새창열기"> 
					<img src="${contextPath}/resources/images/seoul1-1.jpg">
				</a>
			</div>
			<div class="right">
				<a href="#" target="_blank" title="새창열기">
					<h5 class="mvp_h5">대전시립박물관</h5>
				</a>
				<p>대전시립박물관은 대전 도안신도시 개발에 따라 시민들의 문화공간으로 탄생하게 되었다. 2012년 10월 16일 개관하였으며 상설전시실, 기증유물실, 기획전시실, 
				도시홍보관으로 구성되어 있다. 상설전시실에서는 대전 유학자의 삶과 문화를 주제로 귀중한 대전의 문화재들이 전시되어 있고, 기증유물실에는 대전시민이 기증해주신 
				유물들을 전시되어 있다. 
				</p>
			</div>
		</div>
		
		<div class=" line_wrap clearfix" name="Gyeongbokgung Palace(kr)">
			<div class="left">
				<a href="#" target="_blank" title="새창열기">
					<img src="${contextPath}/resources/images/seoul1-2.jpg">
				</a>
			</div>
			<div class="right">
				<a href="#" target="_blank" title="새창열기">
					<h5 class="mvp_h5">공주 무령왕릉과 왕릉원[유네스코 세계유산]</h5>
				</a>
				<p>공주시 금성동에 있는 웅진 백제시대 왕들의 무덤이 모여있는 곳이다. 무령왕릉을 포함한 이 일대의 고분들은 모두 7기가 전해지는데, 
				송산을 주산으로 뻗은 구릉 중턱의 남쪽 경사면에 위치한다. 계곡을 사이에 두고 서쪽에는 무령왕릉과 5 ·6호분이 있고 동북쪽에는 1∼4호분이 있다.
				1∼6호분은 일제시대에 조사되어 고분의 구조와 형식이 밝혀졌고, 무령왕릉은 1971년 5 ·6호분의 보수공사 때 발견되었다.
				</p>
			</div>
		</div>	
		<div class=" line_wrap clearfix" name="Gyeongbokgung Palace(kr)">
			<div class="left">
				<a href="#" target="_blank" title="새창열기">
					<img src="${contextPath}/resources/images/seoul1-3.jpg">
				</a>
			</div>
			<div class="right">
				<a href="#" target="_blank" title="새창열기">
					<h5 class="mvp_h5">공주 공산성[유네스코 세계유산]</h5>
				</a>
				<p>공북루는 공산성에 설치된 문루 중 북문으로 성문을 나서면 나루를 통하여 금강을 건너게 되어 있다. 선조 36년인 1603년에 
				옛 망북루의 터에 신축한 것으로 시축 후 수 차례에 걸쳐 개수가 이루어진 것으로 확인되나 현존의 것은 본래의 형상을 간직하고 있으며 조선시대 문루 건축의 대표적 예로 꼽는다. 
				</p>
			</div>
		</div>
		<div class=" line_wrap clearfix" name="Gyeongbokgung Palace(kr)">
			<div class="left">
				<a href="#" target="_blank" title="새창열기">
					<img src="${contextPath}/resources/images/seoul1-4.jpg">
				</a>
			</div>
			<div class="right">
				<a href="#" target="_blank" title="새창열기">
					<h5 class="mvp_h5">충청남도 산림박물관</h5>
				</a>
				<p>창벽에 가로막혀 나룻배를 타고 드나들어야 했던 오지마을인 이 곳에 1994년 충청남도 산림환경연구소가 이전하면서 주변의 잘 보존된 울창한 숲을 금강자연휴양림으로 지정하였고 1997년 10월 산림박물관이 문을 열었다.
				 이곳의 볼거리로는 산림박물관, 수목원, 온실, 야생동물원, 야생화원, 연못, 팔각정 등이 있으며, 중부권 최대의 전천후 자연학습 교육장으로 손색이 없는 시설을 갖추게 되었다. 
				</p>
			</div>
		</div>	
		<div class=" line_wrap clearfix" name="Gyeongbokgung Palace(kr)">
			<div class="left">
				<a href="#" target="_blank" title="새창열기">
					<img src="${contextPath}/resources/images/seoul1-5.jpg">
				</a>
			</div>
			<div class="right">
				<a href="#" target="_blank" title="새창열기">
					<h5 class="mvp_h5">유성온천지구</h5>
				</a>
				<p>유성온천은 대전 중심가에서 서쪽으로 약 11km 가량 떨어진 유성구의 중심을 이루고 있는 대단위 온천관광타운이다. 유성의 온천수는50∼400m로 구성된 화강암 단층 파쇄대에서 생성된 물로서, 화강암의 단층균열층을 따라 지하 200m 이하에서 분출되는 27~56℃ 정도의 고온 열천이다.
				약 60 여종의 각종 성분이 함유되어 있으며 중금속이 전혀 검출되지 않은 산성도(pH)7.5∼8.5의 약알카리성 단순천으로 명성을 떨치고 있다. 
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



	