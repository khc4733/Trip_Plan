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
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>	
	
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
        body {
            margin-left:50px;
            margin-right:50px;
        }
</style>
</head>
<body>
     <div>
        <jsp:include page="../common/topmenu.jsp"/>
    </div>
<div class="container">
	<form class="form-horizontal" method="post" action="${contextPath}/member/login.do">
		<div class="form-group">
			<div class="col-sm-offset-4 col-sm-3">
				<h2 align="center">로그인</h2>
			</div>
		</div>
		<div class="form-group">
			<label for="id" class="col-sm-offset-3 col-sm-2 control-label">아이디</label>
			<div class="col-sm-2">
				<input type="text" class="form-control" id="id" name="id" maxlength="10" placeholder="아이디"/>
			</div>
		</div>
		<div class="form-group">
			<label for="id" class="col-sm-offset-3 col-sm-2 control-label">비밀번호</label>
			<div class="col-sm-2">
				<input type="password" class="form-control" id="pwd" name="pwd" maxlength="20" placeholder="비밀번호"/>
			</div>
		</div>
		<div class="form-group">
			<div class="col-sm-offset-5 col-sm-2">
				<button type="reset"	class="btn btn-warning">다시입력</button>
				<button type="submit"	class="btn btn-primary">로그인</button>
			</div>
		</div>
	</form>
</div>
     <div>
        <jsp:include page="../common/footer.jsp"/>
    </div>

</body>
</html>


















