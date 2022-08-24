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
<link href="${contextPath}/resources/css/front.css" type="text/css"
	rel="stylesheet">
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
  <script type="text/javascript"> 
  function findpassword(){
	  var url="${contextPath}/member/pw_search";
	  
	  var popupWidth = 450;
	  var popupHeight = 180;
	  var popupX = Math.ceil(( window.screen.width - popupWidth )/2);
	  var popupY = Math.ceil(( window.screen.height - popupHeight )/2); 

	  window.open(url, '비밀번호 찾기', 'width=' + popupWidth + ',height=' + popupHeight + ',left='+ popupX + ', top='+ popupY);
	  
  }
  function findid(){
	  var url="${contextPath}/member/id_search";
	  
	  var popupWidth = 450;
	  var popupHeight = 180;
	  var popupX = Math.ceil(( window.screen.width - popupWidth )/2);
	  var popupY = Math.ceil(( window.screen.height - popupHeight )/2); 

	  window.open(url, '아이디 찾기', 'width=' + popupWidth + ',height=' + popupHeight + ',left='+ popupX + ', top='+ popupY);
	  
  }
  </script>
</head>
<body>
     <div class="sub_menubar">
        <jsp:include page="../common/topmenu.jsp"/>
    </div>
<div class="signin_centered">
		<div class="logo_box">
			<img class="logo_profile"
				src="${contextPath}/resources/images/TripPlan.png">
		</div>
		<form id="signin_form_border" class="form-horizontal" method="post"
			action="${contextPath}/member/signin">
			<div class="form-group">
				<input type="text" class="form-control" id="id" name="id"
					maxlength="20" placeholder="ID" />
			</div>
			<div class="form-group">
				<input type="password" class="form-control" id="pwd" name="pwd"
					maxlength="20" placeholder="PASSWORD" />
				<div class="id_pw">
					Forgot your <a href="javascript:void(0)" onclick="findid()">ID</a>
					or <a href="javascript:void(0)" onclick="findpassword()">Password</a>?
				</div>
			</div>
			<div class="form-group">
				<div>
					<button type="submit" class="signin_btn">sign in</button>
				</div>
			</div>
		</form>
		<div class="account">
			New to Trip_Planner? <a href="${contextPath}/member/signup">Create an account</a>
		</div>
	</div>
     <div>
        <jsp:include page="../common/footer.jsp"/>
    </div>

</body>
</html>