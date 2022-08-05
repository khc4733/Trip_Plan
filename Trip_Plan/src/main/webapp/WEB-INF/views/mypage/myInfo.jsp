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
<link href="https://fonts.googleapis.com/css2?family=BhuTuka+Expanded+One&family=Nanum+Gothic&family=Nanum+Gothic+Coding&family=Permanent+Marker&family=Play&family=Poiret+One&family=Raleway:ital@1&family=Source+Code+Pro:wght@300;400&display=swap" rel="stylesheet">
<style>
.form-group { 
 font-family: Play;
}
</style>
</head>

<body>  

<!-- 메뉴바 -->
<jsp:include page="../common/topmenu.jsp" flush="false"/>

<!-- 사이드 메뉴 바 -->
<nav class="col-sm-2 sidenav">
	<h4 align="left">My Page</h4>
		<ul class="nav nav-pills nav-stacked">
			<li class = "nav items" style="font-size:16px;">
				<a href="${contextPath}/..">게시판 작성내역</a>
				<a href="${contextPath}/mypage/myInfo.do">개인 정보 확인</a>
			</li>
		</ul>
</nav> 

<div class="container">
    <form class="form-horizontal" method="post" name="memModifyForm" action="${contextPath}/member/modifyMember.do">
        <div class="form-group">
           <div class="col-sm-offset-4 col-sm-5">
               <h2 align="center" style= "margin-top: 100px; margin-right: 200px; font-family: Play;" >MY ACCOUNT</h2>
           </div>
        </div>
        <div class="form-group">
           <label for="id" class="col-sm-5 control-label">ID</label>
            <div class="col-sm-2">
               <input type="text" class="form-control" id="id" name="id" maxlength="10" value="${member.id}" readonly/>
               <!-- name="id2"로 입력해서 결과 출력하면 null로 나옴 // MemberVO에 private String id로 저장해놨기 때문에 여기에 매칭 되어야 함-->
            </div>
        </div>
        <div class="form-group">
            <label for="id" class="col-sm-5 control-label">PASSWORD</label>
            <div class="col-sm-3">
               <input type="password" class="form-control" id="pwd" name="pwd" maxlength="20" value="${member.pwd}"/>
            </div>
        </div>
        <div class="form-group">
            <label for="id" class="col-sm-5 control-label">NAME</label>
            <div class="col-sm-3">
               <input type="text" class="form-control" id="name" name="name" maxlength="50" value="${member.name}"/>
            </div>
        </div>
        <div class="form-group">
            <label for="id" class="col-sm-5 control-label">NICK NAME</label>
            <div class="col-sm-3">
               <input type="text" class="form-control" id="nname" name="nname" maxlength="50" value="${member.nname}"/>
            </div>
        </div>
        <div class="form-group">
            <label for="id" class="col-sm-5 control-label">EMAIL</label>
            <div class="col-sm-3">
               <input type="text" class="form-control" id="email" name="email" maxlength="50" value="${member.email}"/>
            </div>
        </div>
		<div class="form-group">
            <label for="id" class="col-sm-5 control-label">TEL</label>
            <div class="col-sm-3">
               <input type="text" class="form-control" id="tel" name="tel" maxlength="50" value="${member.tel}"/>
            </div>
        </div>
        <div class="form-group">
            <label for="id" class="col-sm-5 control-label">ADDRESS</label>
            <div class="col-sm-3">
               <input type="text" class="form-control" id="address" name="address" maxlength="50" value="${member.address}"/>
            </div>
        </div>
        <div class="form-group">
            <div class="col-sm-offset-5 col-sm-4">
               <button type="submit" class="btn btn-sm btn-primary">회원 정보 수정</button> 
               <a class="btn btn-sm btn-danger" id="btn-remove" href="${contextPath}/mypage/removeMember.do?id=${member.id}">회원탈퇴</a>   
            </div>
        </div>
    </form>
</div>
<script>
//회원탈퇴
	$(function(){
		$('#btn-remove').click(function(){
			if(confirm("Are you sure?")){
				self.location.href = "redirect:/";
			}
		});
	});
</script>
<!-- footer --> 
<jsp:include page="../common/footer.jsp" flush="false"/>
</body>
</html>