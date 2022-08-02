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
	   		  	.carousel-control.left,
			   	.carousel-control.right {
					 background-image: none;			    	
					 color: white;
				 }
					    
				.carousel-indicators li{
					 border-color: white;
				 }
					 
				.carousel-indicators li.active {
					 backgroud-color: white;
				}
	   		 </style>
	   		 
	   		 
		</head>
	<body>
	    
	<div id="main_container">
			
		<!--배경사진-->
		<div id="main_img--seoul">
			<img id="main_img--seoul" src="${contextPath}/resources/images/background.jpg" alt="">
		</div>
		<jsp:include page="./common/topmenu.jsp" flush="false"/>
			
		<hr style=" width:100%; color:#bac8d9; margin-top: 40px">
			
		<!--추천코스-->
		 <div id="main_bestcourse">
			<p>BEST COURSE</p>
			           
			<div class="container">
				<div id="myCarousel" class="carousel slide text-center" data-ride="carousel">
								
					<ol class="carousel-indicators">
						<li data-target="#myCarousel" data-slide-to="0" class="active"></li>
						<li data-target="#myCarousel" data-slide-to="1"></li>
						<li data-target="#myCarousel" data-slide-to="2"></li>
					</ol> 
									    
					<div class="carousel-inner">
						<div class="item active">
											
							<img class="img-responsive center-block" src="${contextPath}/resources/images/course1.png" width="100%" height="200px"/>
											
								<div class="carousel-caption">
									<h2></h2>
								</div>
						</div>
						
						<div class="item ">											
							<img class="img-responsive center-block" src="${contextPath}/resources/images/course2.png" width="100%" height="200px"/>
											
							<div class="carousel-caption">
									<h2></h2>
							</div>
						</div>
										 
						<div class="item">
							<img class="img-responsive center-block" src="${contextPath}/resources/images/course3.png" width="100%" height="200px"/>
							<div class="carousel-caption">
								     <h2></h2>
							</div>
						</div> 	
					</div>
								
									
					<a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev">
						<span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
						<span class="sr-only">Previous</span>
					</a>
					<a class="right carousel-control" href="#myCarousel" role="button" data-slide="next">
						<span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
						<span class="sr-only">Next</span>
					</a>
				</div>
			</div>
		</div>
			       
		<hr style=" width:100%; color:#bac8d9; margin-top: 40px">
			       
		<!-- 리뷰 인기글 시작 -->
			<div id="main_review">
				<p>BEST REVIEW</p>
			  
			    <div id="main_review--container">
			
			        <div id="main_review--bcp">
			            <div id="main_review--bcp--table">
			                <table style="width: 800px; height: 250px; border-collapse: collapse">
			                     <thead>
			                        <tr style=" text-align:center; color: #101c3d; font-size: 20px; background-color: white;">
			                            <th>순위</th>
			                            <th>코스 이름</th>
			                            <th>제목</th>
			                            <th>글쓴이</th>
			                        </tr>
			                     </thead>
			                     <tbody style="text-align: center; font-family: nanumB; font-size: 18px;">
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