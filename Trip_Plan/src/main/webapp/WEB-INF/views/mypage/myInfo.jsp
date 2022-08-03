<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c"	uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt"	uri="http://java.sun.com/jsp/jstl/fmt"  %>
<c:set var="contextPath" value="${pageContext.request.contextPath}"/>
<%  request.setCharacterEncoding("UTF-8"); %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>개인 정보 확인</title>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
</head>

<style>
.button1 {
  background-color: #fff;
  border: none;
  color: black;
  padding: 10px 12px;
  text-align: center;
  font-size: 15px;
  margin: auto;
  opacity: 0.6;
  transition: 0.3s;
  display: inline-block ;
  text-decoration: none;
  cursor: pointer;
  border-radius : 20%;
  text-align: center;
}

.button1:hover {opacity: 1}

.button2 {
  background-color: #fff;
  border: none;
  color: black;
  padding: 10px 12px;
  text-align: center;
  font-size: 15px;
  margin: auto;
  opacity: 0.6;
  transition: 0.3s;
  display: inline-block ;
  text-decoration: none;
  cursor: pointer;
  border-radius : 20%;
  text-align: center;
}

.button2:hover {opacity: 1}
</style>
<body>  

<%
//회원 리스트 화면을 외부인이 볼 수 없도록 로그인 화면으로 보여지게 하기 
if(session.getAttribute("isLogOn") == null || session.getAttribute("isLogOn").equals("")) {
response.sendRedirect("/member/loginForm.do");
} 
%>

<!-- 메뉴바 -->
<jsp:include page="../common/topmenu.jsp" flush="false"/>

<!-- 사이드 메뉴 바 -->
<nav class="col-sm-2 sidenav">
	<h4 align="left">My Page</h4>
		<ul class="nav nav-pills nav-stacked">
			<li class = "nav items" style="font-size:16px;">
				<a href="${contextPath}/mypage/mypage.do">예약 내역 확인</a>
				<a href="${contextPath}/..">게시판 작성내역</a>
				<a href="${contextPath}/mypage/myInfo.do">개인 정보 확인</a>
			</li>
		</ul>
</nav> 

   <div class="container">
     <h2 align="center" style= "margin-top: 100px; margin-right: 100px;" >개인 정보 확인</h2>
     <table class="table table-bordered table-striped" style="width:1200px; margin: auto;">
        <tr class="info">
           <td align="center" width="80"><b>아이디</b></td>
           <td align="center" width="100"><b>비밀번호</b></td>
           <td align="center" width="80"><b>이  름</b></td>
           <td align="center" width="100"><b>이메일</b></td>
           <td align="center" width="80"><b>전화번호</b></td>
           <td align="center" width="200"><b>주  소</b></td>
        </tr>
  
     <tr>
        <td align="center">${member.id}</td>
        <td align="center">${member.pwd}</td>
        <td align="center">${member.name}</td>
        <td align="center">${member.email}</td>
        <td align="center">${member.tel}</td>
        <td align="center">${member.address}</td>
      </tr>        
    </table>
    
    <div class="find-btn" align="center">
       <button class="button1" type="submit">수정</button>
       <button class="button2" type="reset">다시입력</button>
    </div>
     
  </div>
   
  
<!-- footer --> 
<jsp:include page="../common/footer.jsp" flush="false"/>
</body>
</html>