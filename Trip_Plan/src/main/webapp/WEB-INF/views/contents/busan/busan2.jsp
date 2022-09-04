<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c"  uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="contextPath" value="${pageContext.request.contextPath}"/>
<%  request.setCharacterEncoding("UTF-8"); %> 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>busan2</title>
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
<!-- 울산의 초록빛과 부산의 푸른빛에 둘려쌓여 자유를 만끽하다! -->
<div class="contents_centered">
		<div class="titleType1">
			<div class="tit">
			    <label>부산 테마코스</label>
				<h2>울산의 초록빛과 부산의 푸른빛에 둘려쌓여 자유를 만끽하다!</h2>
			</div>
			<div class="area_address">
				<span class="address">부산 해운대구</span> <span id="dist">코스 총거리 :
					95.4km</span>
			</div>
		</div>
		<div class="schedule_info">
			<ul class="schedule">
				<li style="float: left;"><span class="img"><img
						src="${contextPath}/resources/images/icon_cos_schedule1.gif" alt=""></span>
					<em>일정</em> <strong>당일여행</strong></li>
				<li style="margin-left:50px;"><span class="img"><img
						src="${contextPath}/resources/images/icon_cos_theme4.gif" alt=""></span> <em>테마</em>
					<strong>힐링코스</strong></li>
			</ul>
		</div>
		<div class="area_txtView">
			<div class="inr_wrap" style="overflow: visible; height: auto;">
				<div class="inr">
					<p>울산에서 시작해 부산으로 이어지는 여행, 울산의 숲과 부산의 바다에서 숨을 돌려보자! 자연을 만끽한 후 즐기는 수상 레포츠는 묵혀있던 스트레스를 풀기에 제격이다. 
					마지막 코스인 흰여울마을은 부산의 낭만 앞에 하염없이 머물게 한다. 온갖 푸르름을 느끼는 여행을 떠나보는 건 어떨까!</p>
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
				center: new kakao.maps.LatLng(35.32180468681206, 129.20279311234745), //지도 중심좌표
				level: 11 //지도 확대레벨
			};
	
			var map = new kakao.maps.Map(container, options); //지도 생성
			var linePath = [ //선을 구성하는 좌표 배열, 이 좌표들을 이어서 선을 표시
			    new kakao.maps.LatLng(35.65064872689635, 129.30390426136404), //편백산림욕장
			    new kakao.maps.LatLng(35.164517609083234, 129.19612747805544), //청사포다릿돌 전망대
			    new kakao.maps.LatLng(35.160435813156866, 129.1412618445172), //수영만 요트경기장
			    new kakao.maps.LatLng(35.156614195238916, 129.15198069769477), //더베이101
			    new kakao.maps.LatLng(35.147548035097415, 129.11466928707063), //광안리SUP Zone
			    new kakao.maps.LatLng(35.07796211238157, 129.04525624080938) //흰여울 문화마을
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
			var markerPosition  = new kakao.maps.LatLng(35.65064872689635, 129.30390426136404); //편백산림욕장
			var markerPosition2  = new kakao.maps.LatLng(35.164517609083234, 129.19612747805544); //청사포다릿돌 전망대
			var markerPosition3  = new kakao.maps.LatLng(35.160435813156866, 129.1412618445172); //수영만 요트경기장
			var markerPosition4  = new kakao.maps.LatLng(35.156614195238916, 129.15198069769477); //더베이101
			var markerPosition5  = new kakao.maps.LatLng(35.147548035097415, 129.11466928707063); //광안리SUP Zone
			var markerPosition6  = new kakao.maps.LatLng(35.07796211238157, 129.04525624080938); //흰여울 문화마을
			
	
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
				<img src="${contextPath}/resources/images/busan2-1.jpg">
			</div>
			<div class="right">
				<h5 class="mvp_h5">편백산림욕장</h5>
				<p>달천동 천마산(해발 236m)은 편백나무 5ha, 소나무 33ha, 잣나무 2ha가 조성되어 있어 주민휴식처로 각광받고 있다. 주민들이 쉴 수 있는 원두막과 피크닉테이블, 숲 해설판, 평상 등이 설치되어 있고 주변에는 천마산 등산로를 기준으로 솔 숲길(0.45km)과 성터옛길(at), 
				0.4km 만석골 저수지 및 생태수변 전망데크, 천마산 정상 전망대 등이 마련되어 있다.
				</p>
			</div>
		</div>
		
		<div class=" line_wrap clearfix" name="Gyeongbokgung Palace(kr)">
			<div class="left">
				<img src="${contextPath}/resources/images/busan2-2.jpg">
			</div>
			<div class="right">
				<h5 class="mvp_h5">청사포다릿돌 전망대</h5>
				<p>2017년9월17일 개장. 미포에서 출발해 송정까지 이어지는 동해남부선 폐선부지의 중간 쯤에 자리한 청사포 다릿돌전망대는 해수면으로부터 20m 높이에 72.5m 길이로 
				바다를 향해 쭉 뻗어있으며 폭은 3~11.5m다. 사업비로 43억 원이 투입됐다. 전망대 끝자락에는 반달 모양의 투명바닥을 설치해 바다 위를 걷는 아슬아슬함을 느낄 수 있다. 
				</p>
			</div>
		</div>	
		<div class=" line_wrap clearfix" name="Gyeongbokgung Palace(kr)">
			<div class="left">
				<img src="${contextPath}/resources/images/busan2-3.jpg">
			</div>
			<div class="right">
				<h5 class="mvp_h5">수영만 요트경기장</h5>
				<p>수영만 요트경기장은 광안리와 해운대 사이에 위치하고 있으며 1986년 국제 규모의 경기장으로 건설되어 ''86 아시안게임과 ''88 올림픽 경기대회를 개최한 곳으로서 448척의 요트를 계류할 수 있는 넓은 계류장을 갖고 있으며, 
				요트를 타기에 적합한 자연 여건을 갖추고 있어 매년 각종 국내,외 요트경기대회가 개최되는등 해양스포츠의 메카로서 요트인들이 가장 즐겨찾는 곳이다. 
				</p>
			</div>
		</div>
		<div class=" line_wrap clearfix" name="Gyeongbokgung Palace(kr)">
			<div class="left">
				<img src="${contextPath}/resources/images/busan2-4.jpg">
			</div>
			<div class="right">
				<h5 class="mvp_h5">더베이101</h5>
				<p>아름다운 바다와 산 그리고 현대적인 건물들이 공존하는 세계적인 휴양지, 해운대. 문화와 예술을 위한 공간, 바다가 주는 흥분을 조금 더 느낄 수 있는 공간, 
				누구나 머물 수 있는 재미있는 공간.더베이는 해운대에 위치한 복합문화예술공간으로, 많은 관광객이 야경명소로 찾는 곳이다.
				</p>
			</div>
		</div>	
		<div class=" line_wrap clearfix" name="Gyeongbokgung Palace(kr)">
			<div class="left">
				<img src="${contextPath}/resources/images/busan2-5.jpg">
			</div>
			<div class="right">
				<h5 class="mvp_h5">광안리SUP Zone</h5>
				<p>''광안리 SUP Zone'' 은 광안리해변을 해양스포츠의 메카로 만들고, 해양스포츠 이용객들을 위한 곳이다. 광안리해변은 연중 파도가 잔잔하여 SUP 타기에 적합하다. 수영구청은 광안리해변에 광안리 SUP Zone을 2020년부터 조성하여 운영하고 있으며, 광안리 SUP Zone은 광안리해변 내(광안리해양레포츠센터~광안리지웰에스테이트 맞은편 백사장) 400m 구간으로 비치 바, 비치베드, 
				윈드배너, SUP포토존 등으로 구성되어 있다. 
				</p>
			</div>
		</div>
		<div class=" line_wrap clearfix" name="Gyeongbokgung Palace(kr)">
			<div class="left">
				<img src="${contextPath}/resources/images/busan2-6.jpg">
			</div>
			<div class="right">
				<h5 class="mvp_h5">흰여울 문화마을</h5>
				<p>피난민들의 애잔한 삶이 시작된 곳이자 현재는 마을주민과 함께하는 문화마을공동체 흰여울문화마을이 자리한 곳이다. 부산의 대표적인 원도심 흰여울길은 봉래산 기슭에서 굽이쳐 내리는 물줄기가 마치 흰 눈이 내리는 모습과 비슷하다 하여 이름 지어졌다. 
				2011년 12월, 낡은 가옥을 리모델링하면서 현재는 영도의 생활을 느낄 수 있는 독창적인 문화예술마을로 거듭났다.
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







	