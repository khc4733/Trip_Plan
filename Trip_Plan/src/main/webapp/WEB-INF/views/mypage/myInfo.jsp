<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c"   uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt"   uri="http://java.sun.com/jsp/jstl/fmt"  %>
<c:set var="contextPath" value="${pageContext.request.contextPath}"/>
<%  request.setCharacterEncoding("UTF-8"); %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>개인 정보 확인</title>
<link href="${contextPath}/resources/css/front.css" type="text/css" rel="stylesheet">
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=BhuTuka+Expanded+One&family=Nanum+Gothic&family=Nanum+Gothic+Coding&family=Permanent+Marker&family=Play&family=Poiret+One&family=Raleway:ital@1&family=Source+Code+Pro:wght@300;400&display=swap" rel="stylesheet">
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
            $("#address").val(addr);
    	}
 	}).open();
}
</script>
</head>

<body>  

<!-- 메뉴바 -->
     <div class="sub_menubar">
        <jsp:include page="../common/topmenu.jsp"/>
    </div>

<!-- 사이드 메뉴 바 -->
<jsp:include page="../mypage/myside.jsp"/>

<div class="container" id="account">
   <div>
    <form class="form-horizontal" method="post" name="memModifyForm" action="${contextPath}/mypage/modifyMember.do" onsubmit="return false"> 
        <!--  <div class="form-group">
           <div class="col-sm-offset-4 col-sm-5">
               <h2 align="center" style= "margin-top: 50px; margin-right: 100px; font-family: Play;" >MY ACCOUNT</h2>
           </div>
        </div> -->    
        <div class="form-group">    
           <label for="id" class="title">ID</label>
            <div id="line">
               <input type="text" class="form-control" id="id" name="id" maxlength="10" value="${member.id}" readonly/>
            </div>
        </div>
        <br/>
        <div class="form-group">
            <label for="id" class="title">PASSWORD</label>
            <div id="line">
               <input type="password" class="form-control" id="pwd" name="pwd" maxlength="20" placeholder="비밀번호를 입력하세요." value=""/>
               <span class="error_next_box" id="pwdMsg" style="color:red; font-size:12px; display : none;">8~16자 영문 대 소문자, 숫자, 특수문자를 사용하세요.</span>
            </div>
        </div>
        <br/>
        <div class="form-group">
            <label for="id" class="title">PASSWORD*</label>
            <div id="line">
               <input type="password" class="form-control" id="pwd2" name="pwd2" maxlength="20" value=""/>          
            <font id="ckpwd" size="2"></font>
            </div>
        </div>
        <br/>
        <div class="form-group">
            <label for="id" class="title">NAME</label>
            <div id="line">
               <input type="text" class="form-control" id="name" name="name" maxlength="50" value="${member.name}"/>
            </div>
        </div>
        <br/>
        <div class="form-group">
            <label for="id" class="title">NICKNAME</label>
            <div id="line">
               <input type="text" class="form-control" id="nname" name="nname" maxlength="50" value="${member.nname}"/>
            </div>
        </div>
        <br/>
        <div class="form-group">
            <label for="id" class="title">EMAIL</label>
            <div id="line">
               <input type="text" class="form-control" id="email" name="email" maxlength="50" value="${member.email}" readonly/>
            </div>
        </div>
        <br/>
        <div class="form-group">
            <label for="id" class="title">TEL</label>
            <div id="line">
               <input type="text" class="form-control" id="tel" name="tel" maxlength="50" value="${member.tel}"/>
            </div>
        </div>
        <br/>
        <div class="form-group">
        	<label for="id" class="title">ADDRESS</label>
			<div id="line" class="addr">
				<input type="text" class="form-control" id="address" name="address" maxlength="50" value="${member.address}" readonly/>
	        	<button type="button" id="addressSearch" onclick="findAddr()" style="float:right">SEARCH</button>
				
			</div>
			<div id="line">
				<input type="text" class="form-control" id="address2" name="address2" value="${member.address2}">
			</div>
			<input type="hidden" id="address" name="address" value="">
		</div> 
		<br/>
        <div class="btn-confirm">
            <button type="submit" class="btn btn-sm btn-block" id="btn-update"  onclick="modifyMember()">회원정보 수정</button>
            <button type="button" class="btn btn-sm btn-block" id="btn-remove"  onclick="removeMember()">회원탈퇴</button>
       </div>
    </form>
  </div>
</div>
<script>
//회원탈퇴
function removeMember() {
 if (confirm("회원 탈퇴를 진행하시겠습니까?") == true){    //회원탈퇴진행
	location.href = "${contextPath}/mypage/removeMember.do?id=${member.id}";
    alert("회원탈퇴 되었습니다.");
 }else {   //탈퇴취소
    alert("회원탈퇴 진행을 취소하였습니다.");
    location.reload();
    return false;
 }
}
//회원 정보 수정
function modifyMember() {	
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
	if ($.trim($('#address').val()) == '') {
		alert("주소를 입력해주세요.");
		return false;
	}	
 	if (confirm("회원정보를 수정하시겠습니까?") == true){    //회원정보수정 확인
   	 	document.memModifyForm.submit();
    	alert("회원정보가 수정되었습니다.");
 	} else {   //취소
    	alert("회원정보수정 진행을 취소하였습니다.");
    	location.reload();
    	return false;
	}
}
</script>
<script>
$(function() {
	$('#pwd').keyup(function(){
		$('#ckpwd').html('');
	});
	
	$('#pwd2').keyup(function(){
		if($('#pwd').val() != $('#pwd2').val()){
			$('#ckpwd').html('비밀번호가 일치하지 않습니다.<br>');
			$('#ckpwd').attr('color', 'red');
			$('#btn-update').prop("disabled", true);
		} else {
			$('#ckpwd').html('비밀번호가 일치합니다.<br>');
			$('#ckpwd').attr('color', 'blue');
			$('#btn-update').prop("disabled", false);
		}
	});
});
</script>
<script>
$(document).ready(function() {
	var pwRegex =  /^.*(?=^.{8,16}$)(?=.*\d)(?=.*[a-zA-Z])(?=.*[!@#$%^&+=]).*$/;
	$("#pwd").on("input",function(){
		var passWordTest=pwRegex.test($("#pwd").val());
		if(!passWordTest){
			$('#pwdMsg').show();
		}
		else{
			$('#pwdMsg').hide();
		}
	});
});
</script>
<!-- footer --> 
<jsp:include page="../common/footer.jsp" flush="false"/>
</body>
</html>