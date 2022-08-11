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
<style>
.form-group { 
 font-family: Play;
}
#btn-remove{
  background-color: white;
  color: red;
  border: none;
  font-family: Play;
  font-size: 13px;
}

#btn-remove:hover {background-color: #e7e7e7;}

#btn-update{
  background-color: white;
  color: black;
  border: none;
  font-family: Play;
  font-size: 13px;
}

#btn-update:hover {background-color: #e7e7e7;}
</style>
</head>

<body>  

<!-- 메뉴바 -->
<jsp:include page="../common/topmenu.jsp" flush="false"/>

<!-- 사이드 메뉴 바 -->
<jsp:include page="../mypage/myside.jsp"/>

<div class="container">
    <form class="form-horizontal" method="post" name="memModifyForm" action="${contextPath}/mypage/modifyMember.do" onsubmit="return false"> 
        <div class="form-group">
           <div class="col-sm-offset-4 col-sm-5">
               <h2 align="center" style= "margin-top: 100px; margin-right: 230px; font-family: Play;" >MY ACCOUNT</h2>
           </div>
        </div>
        <div class="form-group">
           <label for="id" class="col-sm-5 control-label">ID</label>
            <div class="col-sm-2">
               <input type="text" class="form-control" id="id" name="id" maxlength="10" value="${member.id}" readonly/>
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
               <input type="text" class="form-control" id="email" name="email" maxlength="50" value="${member.email}" readonly/>
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
				<input type="text" class="form-control" id="address" name="address" maxlength="50" value="${member.address}" readonly/>
			</div>
		<div class="form-group">
			<button type="button" id="addressSearch" class="signup btn btn-sm" onclick="findAddr()">SEARCH</button>
		</div>
		<div class="form-group">
		<label for="id" class="col-sm-5 control-label"></label>
			<div class="col-sm-3">
				<input type="text" class="form-control" id="address2" placeholder="상세주소 입력(선택사항)" value="">
			</div>
			<input type="hidden" id="address" name="address" value="">						
		</div>
		</div>    
        <div class="btn-confirm">
           <div class="col-sm-offset-4 col-sm-4"> 
            <button type="submit" class="btn btn-sm btn-block" id="btn-update"  onclick="modifyMember()">회원 정보 수정</button>
            <button type="button" class="btn btn-sm btn-block" id="btn-remove"  onclick="removeMember()">회원탈퇴</button>
          </div>
       </div>
    </form>

</div>
<script>
//회원탈퇴
function removeMember() {
 if (confirm("회원 탈퇴를 진행하시겠습니까?") == true){    //회원탈퇴진행
	location.href = "${contextPath}/mypage/removeMember.do?id=${member.id}";
    alert("회원탈퇴 되었습니다.");
 }else {   //탈퇴취소
   alert("회원탈퇴 진행을 취소하였습니다.");
    return false;
 }
}
//회원 정보 수정
function modifyMember() {
 if (confirm("회원정보를 수정하시겠습니까?") == true){    //회원정보수정
   document.memModifyForm.submit();
    alert("회원정보가 수정되었습니다.");
 }else {   //취소
   alert("회원정보수정 진행을 취소하였습니다.");
    return false;
 }
}
</script>
<!-- footer --> 
<jsp:include page="../common/footer.jsp" flush="false"/>
</body>
</html>