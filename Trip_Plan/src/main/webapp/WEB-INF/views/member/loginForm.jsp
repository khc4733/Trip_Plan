<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c"	uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="contextPath" value="${pageContext.request.contextPath}"/>
<c:set var="result"		 value="${param.result}"/>
<%	request.setCharacterEncoding("UTF-8"); %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>로그인 화면</title>

	
<c:choose>	
	<c:when test="${result == 'loginFailed'}">
		<script>
		window.onload = function() {
			alert("\n아이디를 잘못 입력하셨습니다.\n\n다시 로그인을 해주세요!");
		}
		</script>
	</c:when>
	<c:when test="${result == 'PasswordFailed'}">
		<script>
		window.onload = function() {
			alert("\n비밀번호를 잘못 입력하셨습니다.\n\n다시 로그인을 해주세요!");
		}
		</script>
	</c:when>
</c:choose>
<style>
.centered {
	display: table;
	margin-left: auto;
	margin-right: auto;
}

.button1 {
	width: 195px;
}

.box {
	width: 220px;
	height: 220px;
	border-radius: 70%;
	overflow: hidden;
}

.profile {
	width: 100%;
	height: 100%;
	object-fit: cover;
}
</style>
</head>
<body>
     <div>
        <jsp:include page="../common/topmenu.jsp"/>
    </div>
<div class="container">
	<form class="form-horizontal" method="post" action="${contextPath}/member/login">
	        <div class="centered">
				<div class="box" style="background: #ffffff;">
					<img class="profile"
						src="${contextPath}/resources/images/TripPlan.png">
				</div>
			</div>
		<div class="form-group">
			<div class="centered">
				<input type="text" class="form-control" id="id" name="id" width="190px" maxlength="10" placeholder="ID"/>
			</div>
		</div>
		<div class="form-group">
			<div class="centered">
				<input type="password" class="form-control" id="pwd" name="pwd" width="190px" maxlength="20" placeholder="PASSWORD"/>
			</div>
		</div>
		<div class="form-group">
			<div class="centered">
				<button type="submit" class="btn btn-success button1" >sign in</button>
			</div>
		</div>
		<div class="centered">
				<a href="#">Create an account</a>
		</div>
		</form>
</div>
     <div>
        <jsp:include page="../common/footer.jsp"/>
    </div>

</body>
</html>


















