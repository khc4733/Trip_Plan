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
<!--  <style>
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
</style>-->
<style>
.mp_main {
	text-align: center;
    padding-bottom: 20px;
	margin-left: 300px;
	margin-right: 300px;
    margin-top: 45px;
    font-size: 17px;
}
.mypage{
	margin-left: auto;
	margin-right: auto;
    border-bottom: 1px solid #b5b3b3;
}
.mypage th{
width: 200px;
height: 28px;
text-align: left;
padding-bottom: 12px;
}
 a {
 	text-decoration: none;
 	color: #b5b3b3;
}

</style>
</head>
<body>
	<!-- <nav class="col-sm-2 sidenav">
		<h4>My Page</h4>
			<ul class="nav nav-pills nav-stacked">
				<li><a href="${contextPath}/mypage/myInfo.do">MY ACCOUNT</a></li>
				<li><a href="${contextPath}/mypage/mypage.do">게시판 작성내역</a></li>
			</ul>
	</nav>  -->
<div  class="mp_main">
<table class="mypage">
		<tr>
			<th><a href="${contextPath}/mypage/summary">SUMMARY</a></th>
			<th><a href="${contextPath}/mypage/myInfo">EDIT</a></th>
			<th><a href="${contextPath}/..">POST</a></th>
		</tr>
</table>
</div>
</body>
</html>