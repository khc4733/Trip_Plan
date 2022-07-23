<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c"  uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="contextPath" value="${pageContext.request.contextPath}"/>
<%  request.setCharacterEncoding("UTF-8"); %>    
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
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
    .carousel-inner {
            width: 100%;
            height: 350px;
            margin: auto;
        }
    .carousel {
          border: 5px solid blue;
          width: 100%;
          position: relative;
        }
        .carousel-inner .item:nth-child(1) {
          background: url('${contextPath}/resources/images/course1.png') no-repeat center center;
          background-size: cover;
          }
        .carousel-inner .item:nth-child(2) {
         background: url('${contextPath}/resources/images/course2.png') no-repeat center center;
         background-size: cover;
        }
         .carousel-inner .item:nth-child(3) {
         background: url('${contextPath}/resources/images/course3.png') no-repeat center center;
         background-size: cover;
        }

        .carousel-indicators {
          position: absolute;
          width: 50%;
          right: 0;
          left: 35%;
          cursor: pointer;
          transform: translate(-50%,-50%);
        }

        .carousel-control-prev,
        .carousel-control-next {
          top: 25%;
        }
        .item > img {
          position: absolute;
          top: -40%;
          width: inherit;
          height: inherit;
          object-fit: cover;
        }
        body {
            margin-left:50px;
            margin-right:50px;
        }
        
    </style>
</head>
<body>
     <div>
        <jsp:include page="./common/topmenu.jsp"/>
    </div>
    <div id="main_container">

        <!--배경사진-->
        <div id="main_img--seoul">
            <img src="${contextPath}/resourse/images/nature.png" width="1600px;" height="500px;">
        </div>

        <hr style=" width:100%; color:#bac8d9; margin-top: 40px">

        <!--추천코스-->
        <div id="main_bestcourse">
            <p>BEST COURSE</p>
          <div id="myCarousel" class="carousel slide" data-bs-ride="carousel">
          <!--Indicators-->
          <div class="carousel-indicators">
            <button type="button" data-bs-target="#myCarousel" data-bs-slide-to="0" class="active" aria-current="true" aria-label="Slide 1"></button>
            <button type="button" data-bs-target="#myCarousel" data-bs-slide-to="1" aria-label="Slide 2"></button>
            <button type="button" data-bs-target="#myCarousel" data-bs-slide-to="2" aria-label="Slide 3"></button>
          </div>
          <!--Wrapper for sliders : 인디케이터가 가리키는 그림들-->
          <div class="carousel-inner" role="listbox">
            <div class="item active">
              <div class="carousel-caption">
                  <h3></h3>
                  <p></p>
              </div>
            </div>
            <div class="item">
              <div class="carousel-caption">
                <h3></h3>
                <p></p>
              </div>
            </div>
            <div class=" item">
              <div class="carousel-caption">
                <h3></h3>
                <p></p>
              </div>
            </div>
          </div>
          <!--Left and Right Controls-->
          <button class="carousel-control-prev" type="button" data-bs-target="#myCarousel" data-bs-slide="prev">
            <span class="carousel-control-prev-icon" aria-hidden="true"></span>
            <span class="visually-hidden">Previous</span>
          </button>
          <button class="carousel-control-next" type="button" data-bs-target="#myCarousel" data-bs-slide="next">
            <span class="carousel-control-next-icon" aria-hidden="true"></span>
            <span class="visually-hidden">Next</span>
          </button>
        </div>
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

    <!--푸터-->
    <div>
        <jsp:include page="./common/footer.jsp"/>
    </div>
</body>
</html>