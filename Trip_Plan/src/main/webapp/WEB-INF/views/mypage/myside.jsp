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
.mypage {
	text-align: center;
    padding-bottom: 20px;
    margin-bottom: 30px;
    margin-right: 370px;
    margin-top: 45px;
    font-size: 17px;
}
 a {
 	text-decoration: none;
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

<table class="mypage" align="center">
	<thead>
		<tr>
			<th width="200" height="28px"><a href="${contextPath}/mypage/summary">SUMMARY</a></th>
			<th width="200" height="28px"><a href="${contextPath}/mypage/myInfo">EDIT</a></th>
			<th width="200" height="28px"><a href="${contextPath}/..">POST</a></th>
		</tr>
	</thead>
</table>
</body>
</html>