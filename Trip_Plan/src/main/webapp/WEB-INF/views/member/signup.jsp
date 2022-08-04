<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c"	uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="contextPath" value="${pageContext.request.contextPath}"/>
<c:set var="result"		 value="${param.result}"/>
<%	request.setCharacterEncoding("UTF-8"); %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원가입 화면</title>
<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<script>
function findAddr() {
	new daum.Postcode({
    	oncomplete: function(data) {
        	// 사용자 주소를 받아올 변수를 정의한다.
            var addr = '';
            
            //사용자가 선택한 주소 타입에 따라 해당 주소 값을 가져온다.
            if (data.userSelectedType === 'R') { // 사용자가 도로명 주소를 선택했을 경우(R)
                addr = data.roadAddress;
            } else { // 사용자가 지번 주소를 선택했을 경우(J)
                addr = data.jibunAddress;
            }
            
            // 부모창의 주소칸에 받아온 주소를 넣는다.
            $("#address").val(addr);
    	}
 	}).open();
}
</script>
<script>
    window.addEventListener('load', () => {
      const forms = document.getElementsByClassName('validation-form');

      Array.prototype.filter.call(forms, (form) => {
        form.addEventListener('submit', function (event) {
          if (form.checkValidity() === false) {
            event.preventDefault();
            event.stopPropagation();
          }

          form.classList.add('was-validated');
        }, false);
      });
    }, false);
  </script>
<link href="${contextPath}/resources/css/front.css" type="text/css"
	rel="stylesheet">

<style>

.input-form {
	max-width: 680px;
	margin-top: 80px;
	padding: 10px 10px 40px 10px;
	background: #fff;
	-webkit-border-radius: 10px;
		border-width: 1px;
	border-style: solid;
	-moz-border-radius: 10px;
	border-radius: 10px;
	border-color: #c7c7c7;
	-webkit-box-shadow: 0 8px 20px 0 rgba(0, 0, 0, 0.15);
	-moz-box-shadow: 0 8px 20px 0 rgba(0, 0, 0, 0.15);
	box-shadow: 0 8px 20px 0 rgba(0, 0, 0, 0.15)
}

.signup_centered {
	width: 400px;
	height: auto;
	margin-left: auto;
	margin-right: auto;
	border-color: #c7c7c7;
}

.signup_centered h2 {
	text-align: center;
}

.validation-form div.mb-3 {
	padding: 10px;
}
.validation-form div.mb-4 {
	padding: 10px;
}
.email{
     width:85px;
     padding:6px;
     border:1px solid #999;
     font-family:'Nanumgothic';
     font-size:12px;
     }
</style>
</head>
<body>
	<div>
		<jsp:include page="../common/topmenu.jsp" />
	</div>
	<div class="signup_centered">
		<div class="input-form-backgroud row">
			<div class="input-form col-md-12 mx-auto">
				<h2 class="mb-3">회원가입</h2>
				<form class="validation-form" novalidate>
					<div class="row">
						<div class="col-md-9 mb-3">
							<input type="text" class="form-control" id="id" name="id"
								maxlength="20" placeholder="아이디" />
						</div>
						<div class="col-md-3 mb-3">
							<button type="submit" class="btn">중복 확인</button>
						</div>						
					</div>
					<div class="row">
						<div class="col-md-9 mb-3">
							<input type="password" class="form-control" id="pwd" name="pwd"
								maxlength="20" placeholder="비밀번호" />
						</div>
					</div>
					<div class="row">
						<div class="col-md-6 mb-3">
							<input type="text"
								class="form-control" id="name" placeholder="이름" value="" required>
						</div>
						<div class="col-md-6 mb-3">
							<input type="text"
								class="form-control" id="nickname" placeholder="닉네임" value=""
								required>
						</div>
					</div>
					<div class="row">
						<div class="col-md-9 mb-3">
							<input type="text"
								class="form-control" id="tek" placeholder="전화번호" value="" required>
						</div>
						<div class="col-md-3 mb-3">
							<button type="button" id="addressSearch" class="btn" onclick="findAddr()">본인 인증</button>
						</div>							
					</div>					
					
					<div class="row">
						<div class="col-md-9 mb-3">
							 <input type="email"
								class="form-control" id="email" placeholder="이메일" required>
						</div>
						<div  class="col-md-3 mb-3">
							<select class="email" name="email_server" id="email_server"
								onchange="input_email();">

								<option value="">직접입력</option>

								<option value="naver.com">naver.com</option>

								<option value="nate.com">nate.com</option>

								<option value="hanmail.net">hanmail.net</option>

								<option value="gmail.com">gmail.com</option>

								<option value="yahoo.com">yahoo.com</option>

								<option value="yahoo.co.kr">yahoo.co.kr</option>

								<option value="hotmail.com">hotmail.com</option>

							</select>
						</div> 					
					</div>
					
					<div class="row">
						<div class="col-md-9 mb-3">
							<input type="text" class="form-control" id="address"
								placeholder="주소" required>
						</div>
						<div class="col-md-3 mb-3">
							<button type="button" id="addressSearch" class="btn" onclick="findAddr()">주소 검색</button>
						</div>
					</div>

					<hr class="mb-4">
					<div class="custom-control custom-checkbox">
						<input type="checkbox" class="custom-control-input" id="aggrement"
							required> <label class="custom-control-label"
							for="aggrement">개인정보 수집 및 이용에 동의합니다.</label>
					</div>
					<div class="mb-4"></div>
					<button class="btn btn-primary btn-lg btn-block" type="submit">회원가입</button>
				</form>
			</div>
		</div>
	</div>
	<div>
		<jsp:include page="../common/footer.jsp" />
	</div>
</body>
</html>