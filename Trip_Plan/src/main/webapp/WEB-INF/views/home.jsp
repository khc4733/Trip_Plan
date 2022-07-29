<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c"  uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="contextPath" value="${pageContext.request.contextPath}"/>
<%  request.setCharacterEncoding("UTF-8"); %>    
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <link href="${pageContext.request.contextPath}/resources/css/front.css" type="text/css" rel="stylesheet"> <!-- resources오타 수정 sk -->
    <title>메인 화면</title>



	 <script type="text/javascript">
	$(document).ready(function () {
            if(${result == "true"}){
                alert("로그아웃되었습니다.");
            }
            if(${removeResult == 0}){
                alert("계정 탈퇴가 완료되었습니다. 그동안 이용해주셔서 감사합니다.");
            }
        });
        $(function () {
            $.fn.maphilight.defaults = {
                fill: true,
                fillColor: '000000',
                fillOpacity: 0.2,
                stroke: true,
                strokeColor: '495c75',
                strokeOpacity: 1,
                strokeWidth: 1.2,
                fade: true,
                alwaysOn: false
            }
            $('.map').maphilight();
        });
        
    </script>
    
    <style>
    img {
  max-width: 100%;
  height: auto;
}
    </style>
</head>
<body>
<!-- 메뉴바 -->
<jsp:include page="./common/topmenu.jsp" flush="false"/>
    
    <!-- 배경사진 -->
    <div class="main_container">
        <div id="main_img--seoul">
            <img src="${contextPath}/resources/images/background.jpg" alt=""> <!-- resources오타 수정 sk -->
        </div>

        <hr style=" width:100%; color:#bac8d9; margin-top: 40px">
	
    <!-- 추천코스(슬라이드 부분) -->
    <div class="container">
        <div id="myCarousel" class="carousel slide" data-ride="carousel">
        <h2>Best Course</h2>
        	<!-- Indicators -->
  			<ol class="carousel-indicators">
    			<li data-target="#carouselExampleIndicators" data-slide-to="0" class="active"></li>
    			<li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
    			<li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
  			</ol>
  			
  	<!-- Wrapper for slides -->
  	<div class="carousel-inner">
    	<div class="item active">
      		<img class="img-responsive center-block" src="${contextPath}/resources/images/course1.png" width="100%" height="350px">
      		<!-- carousel에 설명을 달아준다. -->
            <div class="carousel-caption">
               	<h2>Best Course 1</h2>
            </div>
    	</div>
    	<div class="item">
      		<img class="img-responsive center-block" src="${contextPath}/resources/images/course2.png" width="100%" height="350px">
    		<!-- carousel에 설명을 달아준다. -->
            <div class="carousel-caption">
               	<h2>Best Course 2</h2>
            </div>
    	</div>
    	<div class="item">
      		<img class="img-responsive center-block" src="${contextPath}/resources/images/course3.png" width="100%" height="350px">
    		<!-- carousel에 설명을 달아준다. -->
            <div class="carousel-caption">
               	<h2>Best Course 3</h2>
            </div>
    	</div>
  	</div>
  		
  	<!-- 좌측, 우측으로 그림을 움직일 수 있도록 좌/우버튼을 설정한다. -->
    <a class="left carousel-control" href="#myCarousel" data-slide="prev">
        <span class="glyphicon glyphicon-chevron-left"></span>
    </a>
    <a class="right carousel-control" href="#myCarousel" data-slide="next">
        <span class="glyphicon glyphicon-chevron-right"></span>>
    </a>
  		
  	</div>
  		
        <!-- 리뷰 인기글 시작 -->

        <hr style=" width:100%; color:#bac8d9; margin-top: 40px">

            <div id="main_review">
            <div>
                    <div id="Best_Course">
                        <p style="border: 1px solid; background-color: #101c3d; color: white; padding: 8px;">BEST REVIEW POST</p>
                    </div>
                </div>
            </div>

            <div id="main_review--container">

                <div id="main_review--bcp">
                    <div id="main_review--bcp--table">
                        <table style="width: 800px; height: 250px; border-collapse: collapse">
                            <thead>
                            <tr style="height:35px; line-height: 40px; text-align:center; color: white; font-size: 18px; background-color: #101c3d;">
                                <th>순위</th>
                                <th>코스 이름</th>
                                <th>제목</th>
                                <th>글쓴이</th>
                            </tr>
                            </thead>
                            <tbody style="text-align: center; font-family: nanumB; font-size: 16px;">
                            <tr>
                                <td>1</td>
                                <td>서울 맛집</td>
                                <td><a href="#"><b>애완동물 동반 가능한 맛집 리스트</b></a></td>
                                <td>bog2</td>
                            </tr>
                            <tr>
                                <td>2</td>
                                <td>제주도 포토존</td>
                                <td><a href="#"><b>산방산 포토존</b></a></td>
                                <td>jedo</td>
                            </tr>
                            <tr>
                                <td>3</td>
                                <td>대전 빵투어</td>
                                <td><a href="#"><b>빵 구매 목록 알짜배기!</b></a></td>
                                <td>bbang4</td>
                            </tr>
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
        </div>
    </div>
    
<!--푸터-->
<jsp:include page="./common/footer.jsp"/>

</body>
</html>