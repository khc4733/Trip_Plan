<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c"	uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="contextPath" value="${pageContext.request.contextPath}"/>
<%  request.setCharacterEncoding("UTF-8"); %>
<%
// sticky-top은 상단 공간을 차지하면서 위에 고정하고,
// fixed-top은 상단 공간을 차지하지 않고 위에 고정된다.
// 일부 내용이 상단 메뉴바에 가려져서 안보일 수 있다.
// <nav class="navbar navbar-inverse navbar-fixed-top">
%>

<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
	
<!-- 탑메뉴 상단에 고정 -->	
<style> 
.container-fluid {
    position: fixed;
    width: 100%;
    padding: 15px 200px;
    font-size: 18px;
    top: 0;
    z-index: 1;
} 
</style>
<script>
var lastScrollTop = 0, delta = 15;

$(window).scroll(function(){
    var scrollTop = $(this).scrollTop() /* 스크롤바 수직 위치를 가져옵니다, 괄호 안에 값(value)이 있을 경우 스크롤바의 수직 위치를 정합니다. */
    // Math.abs: 주어진 숫자의 절대값을 반환(return)합니다.
    if(Math.abs(lastScrollTop - scrollTop) <= delta) // 스크롤 값을 받아서 ~
    return; // ~ 리턴

    if ((scrollTop > lastScrollTop) && (lastScrollTop>0)) {
    	/* 화면에 나오지 않을 때, top값은 요소가 보이지 않을 정도로 사용해야함 */
        $(".container-fluid").css("background-color","#ffffff");
        $(".container-fluid").css("border-bottom","1px solid #e6e6e6");
        $(".container-fluid a").css("color","#485ca3");
    } else {
        $(".container-fluid").css("background-color","");
        $(".container-fluid").css("border-bottom","");
        $(".container-fluid a").css("color","");
    }
    lastScrollTop = scrollTop;
});
</script>
<nav>
	<div class="container-fluid" id="main">
		<div class="navbar-header">
			<a href="${contextPath}/" class="navbar-brand" style="font-size:30px; font-weight:bolder; font-style: oblique;">Trip_Plan</a>
		</div>
		<!-- 실질적인 메뉴를 나열한다. -->
		<!-- form-group이 있어야 삼선 버튼에 메뉴가 나타난다. -->
		<!-- button에 있는 data-target에는 #을 붙여야 아이디와 연결이 된다. -->
		<!-- <div class="form-group collapse navbar-collapse" id="myNavbar"> -->
		
		<div class="collapse navbar-collapse">
			<ul class="nav navbar-nav navbar-right">
				<li class="dropdown">
					<a class="dropdown-toggle" data-toggle="dropdown" href="#">Area</a>
					<ul class="dropdown-menu">
						<li><a
							href="${contextPath}/area/seoul">서울</a></li>
						<li><a
							href="${contextPath}/area/incheon">인천</a></li>
						<li><a
							href="${contextPath}/area/daejeon">대전</a></li>
						<li><a
							href="${contextPath}/area/daegu">대구</a></li>
						<li><a
							href="${contextPath}/area/busan">부산</a></li>
						<li><a
							href="${contextPath}/area/gwangju">광주</a></li>
						<li><a
							href="${contextPath}/area/jeju">제주도</a></li>
					</ul>
				</li>
				<li class="nav-item">
				    <a href="${contextPath}/board/review" >Review</a>
				</li>
				<li class="nav-item">
				    <a href="${contextPath}/board/notice" >Notice</a>
				</li>
				  <li>
				     <c:choose>
						<c:when test="${isLogOn == true && member != null}">
							<li class="dropdown"><a class="dropdown-toggle"
								data-toggle="dropdown" href="#"><b>${member.nname}님</b><span
									class="caret"></span></a>
								<ul class="dropdown-menu">
									<li><a href="${contextPath}/mypage/summary">My Page</a></li>
									<li><a href="${contextPath}/member/logout">Sign out</a></li>
								</ul></li>
						</c:when>
						<c:otherwise>
							<a href="${contextPath}/member/signin">
									<span class="log-in"></span>Sign in
							</a>
						</c:otherwise>
					</c:choose>
				</li>				
			</ul>
		</div>	
	</div>
</nav>




