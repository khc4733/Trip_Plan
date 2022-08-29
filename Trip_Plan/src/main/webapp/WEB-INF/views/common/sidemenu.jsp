<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="contextPath" value="${pageContext.request.contextPath}" />
<%
request.setCharacterEncoding("UTF-8");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>side bar</title>
<style>
/* 사이드바 */
.sidenav {
    margin-top : 100px;
	text-align: center;
	position: fixed;
	width: 200px;
	height: 350px;
}

.sidenav ul li {
	border: 1px solid #c7c7c7;
}
</style>
</head>
<body>
	<nav class="col-sm-3 sidenav">
		<h4>Area</h4>
		<ul class="nav nav-pills nav-stacked">
			<li><a href="${contextPath}/area/seoul">SEOUL</a></li>
			<li><a href="${contextPath}/area/incheon">INCHEON</a></li>
			<li><a href="${contextPath}/area/daejeon">DAEJEON</a></li>
			<li><a href="${contextPath}/area/daegu">DAEGU</a></li>
			<li><a href="${contextPath}/area/busan">BUSAN</a></li>
			<li><a href="${contextPath}/area/gwangju">GWANGJU</a></li>
			<li><a href="${contextPath}/area/jeju">JEJU</a></li>
		</ul>
	</nav>
</body>
</html>