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
<link href="${contextPath}/resources/css/front.css" type="text/css"
	rel="stylesheet">
<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
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
            $("#address1").val(addr);
    	}
 	}).open();
}
</script>
<script>
function fn_idCheck() {
	 
	if($("#id").val()==""){
		alert("아이디를 입력하세요.");
	    return false;
	}
	$.ajax({
		url:			"member/idCheck",
		type:			"post",
		// contentType:	"application/json",
		dataType:		"json",
		data:			{"id" : $("#id").val()},
		success:		function(data) {
			if(data == 1) {
				$("#idCheck").attr("value", "N");
				$("#id").focus();
				alert("이미 사용 중인 아이디입니다.");
			} else if(data == 0) {
				$("#idCheck").attr("value", "Y"); // 버튼 id="idCheck"의 속성인 value의 값을 "Y"로 변경한다.
				alert("사용 가능한 아이디 입니다.");			
			}
		}
	});
	
}
</script>
<script>
	function emailchk() {
		
		var user_mail = $("#user_email").val();
		var address = $("#domain").val();
		if (user_mail == '' || address=='') {
			alert("이메일을 입력해주세요.");
			return false;
		}
		else{
			$("#email").val(user_mail+'@'+address);
			alert("인증번호 6자리를 입력해주세요.");
			$('#email_check').show();
		}
		
	    $.ajax({
	        
	        type:"GET",
	        url:"mailCheck?email=" + $("#email").val(),
	        success:function(data){
	        	$("#check_num").attr("disabled", false);
	        	$("#check_num2").val(data);
	        }        
	    });
	}
</script>
<script>
function numchk(){
	var inputCode = $("#check_num").val();
	var dataCode = $("#check_num2").val();
    if(inputCode == dataCode){                            // 일치할 경우
    	$("#email_check").attr("value", "Y");
    	alert("인증되었습니다");  
    } else {                                            // 일치하지 않을 경우
        alert("인증번호를 다시 확인해주세요.");
    }   
}
</script>
<script>

	function registerCheck() {
		var address1 = $("#address1").val();
		var address2 = $("#address2").val();
		$('#address').val(address1+address2);
		
		if ($.trim($('#id').val()) == '') {
			alert("아이디를 입력해주세요.");
			return false;
		}			
		if($.trim($('#idCheck').val()) == 'N'){
			alert("아이디 중복 체크해주세요.");
			return false;
		}
		if ($.trim($('#pwd').val()) == '') {
			alert("비밀번호를 입력해주세요.");
			return false;
		}		
		if ($.trim($('#name').val()) == '') {
			alert("이름을 입력해주세요.");
			return false;
		}
		if ($.trim($('#nname').val()) == '') {
			alert("닉네임을 입력해주세요.");
			return false;
		}
		if ($.trim($('#tel').val()) == '') {
			alert("전화번호를 입력해주세요.");
			return false;
		}		
		if ($.trim($('#email_check').val()) == 'N') {
			alert("이메일 인증을 받아주세요");
			return false;
		}			
		if ($.trim($('#address').val()) == '') {
			alert("주소를 입력해주세요.");
			return false;
		}				
		if (confirm("회원가입을 하시겠습니까?")) {
			alert("회원가입이 완료되었습니다. 감사합니다.");
			$("form").submit();
		}
	}
</script>
</head>
<body>
	<div>
		<jsp:include page="../common/topmenu.jsp" />
	</div>
	<div class="signup_centered">
		<div class="input-form-backgroud row">
			<div class="signup_input-form col-md-12 mx-auto">
				<h2 class="mb-3">회원가입</h2>
				<form class="validation-form" method="post" action="${contextPath}/member/addMember">
					<div class="row">
						<div class="col-md-9 mb-3">
							<input type="text" class="form-control" id="id" name="id"
								maxlength="20" placeholder="아이디" required/>
						</div>
						<div class="col-md-3 mb-3">
							<button type="button" class="signup btn" id="idCheck" onClick="fn_idCheck();" value="N">중복 확인</button>
						</div>
					</div>
					<div class="row">
						<div class="col-md-9 mb-3">
							<input type="password" class="form-control" id="pwd" name="pwd"
								maxlength="20" placeholder="비밀번호" required/>
						</div>
					</div>
					<div class="row">
						<div class="col-md-6 mb-3">
							<input type="text"
								class="form-control" id="name" name="name" placeholder="이름" value="" required>
						</div>
						<div class="col-md-6 mb-3">
							<input type="text"
								class="form-control" id="nname" name="nname" placeholder="닉네임" value=""
								required>
						</div>
					</div>		
					<div class="row">
						<div class="col-md-9 mb-3">
							<input type="text"
								class="form-control" id="tel" name="tel" placeholder="전화번호" value="" required>
						</div>
					</div>								
					<div class="row">
						<div class="col-md-4 mb-3">
							 <input type="text"
								class="form-control" id="user_email" placeholder="이메일" required>
						</div>
						<div class="col-md-1 mb">
							 <h4 id="middle">@</h4>
						</div>
						<div class="col-md-4 mb-3">
							 <input type="text"
								class="form-control" name="domain" id="domain" placeholder="" required>
						</div>												
						<div  class="col-md-3 mb-3">
							<select class="signup_email" name="domain_list" id="email_server"
								onchange="this.form.domain.value=this[this.selectedIndex].value;">

								<option value="">직접입력</option>

								<option value="naver.com">naver.com</option>

								<option value="nate.com">nate.com</option>

								<option value="hanmail.net">hanmail.net</option>

								<option value="gmail.com">gmail.com</option>
							</select>
						</div> 		
						<input type="hidden" id="email" name="email" value="">			
					</div>

					 <div class="row">
						<div class="col-md-9 mb-3" id="email_div">
							<input type="text" class="form-control" id="check_num"
								placeholder="인증번호 6자리 입력" value="" disabled required>
							<button type="button" id="email_check" style=" display : none;" onclick="numchk()" value="N">인증 확인</button>
							<input type="hidden" id="check_num2" value="">
						</div>
						<div class="col-md-3 mb-3">
							<button type="button" id="email_cert" class="signup btn" onclick="emailchk()">이메일 인증</button>
														
						</div>
					</div> 

					<div class="row">
						<div class="col-md-9 mb-3">
							<input type="text" class="form-control" id="address1" name="address1"
								placeholder="주소" required>
						</div>
						<div class="col-md-3 mb-3">
							<button type="button" id="addressSearch" class="signup btn" onclick="findAddr()">주소 검색</button>
						</div>
					</div>
					<div class="row">
						<div class="col-md mb-3">
							<input type="text" class="form-control" id="address2"
								placeholder="상세주소 입력(선택사항)" value="">
						</div>
						<input type="hidden" id="address" name="address" value="">						
					</div>

					<hr class="mb-4">
					<div class="custom-control custom-checkbox">
						<input type="checkbox" class="custom-control-input" id="aggrement"
							required value="N"> <label class="custom-control-label"
							for="aggrement">개인정보 수집 및 이용에 동의합니다.</label>
					</div>
					<div class="mb-4"></div>
					<button class="btn btn-primary btn-lg btn-block" type="submit" onclick="registerCheck()">회원가입</button>
				</form>
			</div>
		</div>
	</div>
	<div>
		<jsp:include page="../common/footer.jsp" />
	</div>
</body>
</html>