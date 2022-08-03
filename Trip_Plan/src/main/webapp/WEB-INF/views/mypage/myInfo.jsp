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
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Nanum+Gothic&family=Nanum+Gothic+Coding&family=Poiret+One&family=Raleway:ital@1&family=Source+Code+Pro:wght@300;400&display=swap" rel="stylesheet">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
	<link rel="preconnect" href="https://fonts.googleapis.com">
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

table{
 margin: auto;
}
.tb1 {
 font-size: 15px;
 font-family: Raleway, Arial, serif; 
}

.tb2 {
 font-size: 15px;
 font-family: Raleway, Arial, serif; 
}

input:hover{
background:#F6F6F6;
}
</style>
<body>  

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

<div id="personInfo">
<h2 align="center" style= "margin-top: 100px; margin-right: 200px; font-family: Raleway;" >MY &nbsp; ACCOUNT</h2></br>
    <table class="person-tb">
        <colgroup> <!-- 비율 고정 -->
        <col width="160"><col width="*">
        </colgroup>
        <tbody>
        <tr>
            <th>
                <div class="tb1">ID </div>
            </th>
            <td>
                <div class="tb2">
                <input type="text" style="border: none;" name="ID" id="ID" value="${member.id}" size="25" maxlength="30" disabled>
                </div>
            </td>
        </tr>
        <tr>
            <th>
                <div class="tb2">NAME </div>
            </th>
            <td>
                <div class="tb2">
				<input type="text" style="border: none;" name="name" id="name" value="${member.name}" size="25" maxlength="30">
            	</div>
            </td>
        </tr>
        <tr>
            <th>
                <div class="tb1">PASSWORD</div>
            </th>
            <td>
                <div class="tb2">
                <input type="password" style="border: none;" name="password1" id="password1" value="${member.pwd}" size="25" maxlength="20" onkeyup="check_pwd_length(this, 'password');">
                    * 비밀번호는 4~16자로 입력해 주세요.
                </div>
            </td>
        </tr>
        <tr>
            <th>
                <div class="tb1">PASSWORD*</div>
            </th>
            <td>
                <div class="tb2">
                <input type="password" style="border: none;" name="password2" id="password2"  value="" size="25" maxlength="20" onkeyup="check_pwd_length(this, 'repassword');">
                </div>
            </td>
        </tr>
        <tr>
            <th>
                <div class="tb1">NICK NAME </div>
            </th>
            <td>
                <div class="tb2">
				<input type="text" style="border: none;" name="nname" id="nname" value="${member.nname}" size="25" maxlength="30" >
				</div>
            </td>
        </tr>
        <tr>
            <th>
                <div class="tb1">EMAIL </div>
            </th>
            <td>
                <div class="tb2">
				<input type="text" style="border: none;" name="email" id="email" value="${member.email}" size="25" maxlength="30">                  
            	</div>
            </td>
        </tr>
        <tr>
            <th>
                <div class="tb1">TEL </div>
            </th>
            <td>
                <div class="tb2">
				<input type="text" style="border: none;" name="tel" id="tel" value="${member.tel}" size="25" maxlength="30" >
            	</div>
            </td>
        </tr>
        <tr>
            <th>
                <div class="tb1">ADDRESS </div>
            </th>
            <td>
                <div class="tb2">
				<input type="text" style="border: none;" name="address" id="address" value="${member.address}" size="35" maxlength="30" >          
                </div>
            </td>
        </tr>
</table>
    </div>
   
    <div class="find-btn" align="center">
       <button class="button1" type="submit">수정</button>
       <button class="button2" type="submit">회원탈퇴</button>
    </div>
     

   
  
<!-- footer --> 
<jsp:include page="../common/footer.jsp" flush="false"/>
</body>
</html>