<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c"	uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="contextPath" value="${pageContext.request.contextPath}"/>
<% request.setCharacterEncoding("UTF-8"); %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
    /* 사이드바 */
    .sidenav {
    text-align: center;
      position: fixed;
      width: 200px;
      height: 350px;
    }
    .sidenav ul li{
          border: 1px solid #c7c7c7;
    }
</style>
</head>
<body>
	<nav class="col-sm-2 sidenav">
		<h4>My Page</h4>
			<ul class="nav nav-pills nav-stacked">
				<li><a href="${contextPath}/mypage/mypage.do">게시판 작성내역</a></li>
				<li><a href="${contextPath}/mypage/myInfo.do">개인 정보 확인</a></li>
			</ul>
	</nav> 
</body>
</html>