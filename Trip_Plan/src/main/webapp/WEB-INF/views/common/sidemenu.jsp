<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c"	uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="contextPath" value="${pageContext.request.contextPath}"/>
<% request.setCharacterEncoding("UTF-8"); %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>side bar</title>
<style>
/* 사이드바 */

.mp_main {
	text-align: center;
    padding-bottom: 20px;
	margin-left: 300px;
	margin-right: 300px;
    margin-top: 150px;
    font-size: 17px;
}
.mypage{

	margin-left: auto;
	margin-right: auto;
    border-bottom: 1px solid #b5b3b3;
}
.mypage th{
width: 220px;
height: 28px;
text-align: left;
padding-bottom: 12px;
}
.mypage a {
 	text-decoration: none;
 	color: #b5b3b3;
}
</style>
</head>
<body>
<%-- 	<nav class="col-sm-3 sidenav">
		<h4>Area</h4>
		<ul class="nav nav-pills nav-stacked">
			<th><a href="${contextPath}/area/seoul">SEOUL</a></th>
			<th><a href="${contextPath}/area/incheon">INCHEON</a></th>
			<th><a href="${contextPath}/area/daejeon">DAEJEON</a></th>
			<th><a href="${contextPath}/area/daegu">DAEGU</a></th>
			<th><a href="${contextPath}/area/busan">BUSAN</a></th>
			<th><a href="${contextPath}/area/gwangju">GWANGJU</a></th>
			<th><a href="${contextPath}/area/jeju">JEJU</a></th>
		</ul>
	</nav> --%>
<div  class="mp_main">
<table class="mypage">
		<tr>
			<th><a href="${contextPath}/area/seoul">SEOUL</a></th>
			<th><a href="${contextPath}/area/incheon">INCHEON</a></th>
			<th><a href="${contextPath}/area/daejeon">DAEJEON</a></th>
			<th><a href="${contextPath}/area/daegu">DAEGU</a></th>
			<th><a href="${contextPath}/area/busan">BUSAN</a></th>
			<th><a href="${contextPath}/area/gwangju">GWANGJU</a></th>
			<th><a href="${contextPath}/area/jeju">JEJU</a></th>
		</tr>
</table>
</div>	
</body>
</html>