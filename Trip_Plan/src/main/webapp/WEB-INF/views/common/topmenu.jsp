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
    max-width: 2000px;
    position: fixed;
    width: 100%;
    background-color: #FAFAFA;
    opacity: 0.8;
    font-size: 17px;
    top: 0;
    z-index: 1;
} 
</style>

<nav class="navbar navbar-default navbar-sticky-top">
	<div class="container-fluid">
		<div class="navbar-header">
			<button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
         	</button>
			<a class="navbar-brand" style="font-size:20px; font-weight: bold;" href="${contextPath}/">Trip_Planner</a>
		</div>
		<!-- 실질적인 메뉴를 나열한다. -->
		<!-- form-group이 있어야 삼선 버튼에 메뉴가 나타난다. -->
		<!-- button에 있는 data-target에는 #을 붙여야 아이디와 연결이 된다. -->
		<!-- <div class="form-group collapse navbar-collapse" id="myNavbar"> -->
		
		<div class="collapse navbar-collapse" id="myNavbar">
			<ul class="nav navbar-nav navbar-left">
				<li class="dropdown">
					<a class="dropdown-toggle" data-toggle="dropdown" href="#">Area<span class="caret"></span></a>
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
				    <a href="${contextPath}/board/review" >Notice</a>
				</li>
			</ul>
			
		
			  <ul class="nav navbar-nav navbar-right">
				  <li>
				     <c:choose>
						<c:when test="${isLogOn == true && member != null}">
							<li class="dropdown"><a class="dropdown-toggle"
								data-toggle="dropdown" href="#"><b>${member.nname}님</b><span
									class="caret"></span></a>
								<ul class="dropdown-menu">
									<li><a href="${contextPath}/mypage/myInfo.do">My Page</a></li>
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




