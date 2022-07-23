<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c"	uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="contextPath" value="${pageContext.request.contextPath}"/>
<%  request.setCharacterEncoding("UTF-8"); %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>side bar</title>
<style>
    /* 사이드바 */
    .sidenav {

      position: fixed;
      width: 200px;
      height: 100%;
      margin-left: 10px;
      margin-top:0px
    }
</style>
</head>
<body>
	<nav class="col-sm-3 sidenav">
		<h4>Area</h4>
		<ul class="nav nav-pills nav-stacked">
						<li><a
							href="${contextPath}/area/seoul.do">SEOUL</a></li>
						<li><a
							href="${contextPath}/area/incheon.do">INCHEON</a></li>
						<li><a
							href="${contextPath}/area/daejeon.do">DAEJEON</a></li>
						<li><a
							href="${pageContext.request.contextPath}/areaL?sigungu=4">ULSAN</a></li>
						<li><a
							href="${pageContext.request.contextPath}/areaL?sigungu=5">BUSAN</a></li>
						<li><a
							href="${pageContext.request.contextPath}/areaL?sigungu=6">GWANGJU</a></li>
						<li><a
							href="${pageContext.request.contextPath}/areaL?sigungu=7">JEJU</a></li>
		</ul>
	</nav>
</body>
</html>