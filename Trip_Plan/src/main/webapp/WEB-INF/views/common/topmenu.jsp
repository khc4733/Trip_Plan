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
 	<style>		 
	
	 </style>

<nav class="navbar navbar-default navbar-sticky-top">
	<div class="container-fluid">
		<div class="navbar-header">
			<a class="navbar-brand" href="${contextPath}/">Trip_Planner</a>
		</div>
		<!-- 실질적인 메뉴를 나열한다. -->
		<!-- form-group이 있어야 삼선 버튼에 메뉴가 나타난다. -->
		<!-- button에 있는 data-target에는 #을 붙여야 아이디와 연결이 된다. -->
		<!-- <div class="form-group collapse navbar-collapse" id="myNavbar"> -->
		
		<div class="collapse navbar-collapse" id="myNavbar">
			<ul class="nav navbar-nav navbar-left">
				<li class="dropdown">
					<a class="dropdown-toggle" data-toggle="dropdown" href="#">
					Area<span class="caret"></span></a>
					<ul class="dropdown-menu">
						<li><a
							href="${contextPath}/area/seoul.do">서울</a></li>
						<li><a
							href="${contextPath}/area/incheon.do">인천</a></li>
						<li><a
							href="${contextPath}/area/daejeon.do">대전</a></li>
						<li><a
							href="${contextPath}/area/daegu.do">대구</a></li>
						<li><a
							href="${contextPath}/area/busan.do">부산</a></li>
						<li><a
							href="${contextPath}/area/gwangju.do">광주</a></li>
						<li><a
							href="${contextPath}/area/jeju.do">제주도</a></li>
					</ul>
				</li>
				<li class="nav-item">
				    <a href="${contextPath}/board/review.do" >Review</a>
				</li>
			</ul>
			
		
			  <ul class="nav navbar-nav navbar-right">
				  <li>
					<a href="${contextPath}/member/loginForm.do">
							<span class="log-in"></span>Sign in
						</a>
				  </li>				
				<li>
					<a href="${contextPath}/mypage/mypage.do">My page</a>
				 </li>
			   </ul>
			
		</div>	
	</div>
</nav>




