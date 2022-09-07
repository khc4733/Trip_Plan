<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<c:set var="contextPath" value="${pageContext.request.contextPath}" />
<%
request.setCharacterEncoding("UTF-8");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>summary</title>
<style>
.profile_box{
	margin-left: 200px;
	margin-right: 200px;
	margin-top: 50px;
	width: 250px;
}
#insert{
    margin-left:170px;
	width: 120px;
	height: 40px; 
	font-size: 18px;
	text-align:center;
	line-height:18px;  
}
#img:hover {
	cursor: pointer;
	opacity: 0.4;
}

.profile {
	width: 150px;
	height: 150px;
	object-fit: cover;
}

.hide {
	display: none;
}
</style>
<link href="${pageContext.request.contextPath}/resources/css/front.css"
	type="text/css" rel="stylesheet">
<script
	src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
</head>
<body>

	<!-- 메뉴바 -->
	<div class="sub_menubar">
		<jsp:include page="../common/topmenu.jsp" />
	</div>
	<!-- 사이드 메뉴 바 -->
	<jsp:include page="../mypage/myside.jsp" />

	<!-- 프로필 사진 -->
				
	<div class="container">	
	   <div style=" float: left; width: 30%;">
		<div class="profile_box" data-toggle="tooltip">
		   <form id="ajaxform" enctype = "multipart/form-data">
			<c:choose>
					<c:when test="${ member.profileImg == null}">
					   <img id="img" src="${contextPath}/resources/images/profile_img.png" class="img-circle profile">
					</c:when>
					<c:otherwise>
					   <img id="img" src="${contextPath}/resources/${member.profileImg}"class="img-circle profile">
					</c:otherwise>
			</c:choose>	

			<div class="hide">
				<input type="file" multiple id="userProfile" name="img__preview">
				<input type="text"  id="id" value="${member.id}">
			</div>
		  </form>
		</div>
		<div class="insert_btn">
			<button type="button" class="btn btn-sm" style="display : none;">삭제</button>
		</div>
	  </div>
	  <div style=" float: left; width: 60%; text-align:left; margin-top:80px; margin-left: 10%">
	    <label style="font-size:30px;">${member.name}님</label>
	    <button type="submit" id="insert" class="btn btn-sm" onclick="ImgUpdate()">프로필 변경</button>
	  </div>
	  <div style=" float: left; width: 59%; text-align:left; margin-top:10px;  margin-left: 11%">
	    <label style="font-size:15px;">${member.email}</label>
	  </div>
	</div>

	<script type="text/javascript">
$("#img").click(function() {
    $("#userProfile").click();
});
//이미지 미리보기
var sel_file;
 
$(document).ready(function() {
    $("#userProfile").on("change", handleImgFileSelect);
});
 
function handleImgFileSelect(e) {
    var files = e.target.files;
    var filesArr = Array.prototype.slice.call(files);
 
    var reg = /(.*?)\/(jpg|jpeg|png|bmp)$/;
 
    filesArr.forEach(function(f) {
        if (!f.type.match(reg)) {
            alert("이미지만 첨부할 수 있습니다.");
            return;
        }
 
        sel_file = f;
 
        var reader = new FileReader();
        reader.onload = function(e) {
            $("#img").attr("src", e.target.result);
        }
        reader.readAsDataURL(f);
    });
}
</script>

	<script>
//파일 업로드
function ImgUpdate(){

    var formData = new FormData();
    formData.append( "userProfile", $("#userProfile")[0].files[0] );
    formData.append( "id", $("#id").val() );
	
	if($("#userProfile")[0].files.length > 0) {
		alert("있음"+formData); 
	$.ajax({
	url : "imgUpload",
	type : "POST",	
	processData : false,
	contentType : false,
	data : formData,
	
	success:function(data) {
		if(data == "Y") {
				alert("프로필 사진 등록이 완료되었습니다.");
				location.reload();
		}
		else {
			alert("프로필 사진 등록에 실패하였습니다.");
		}
	}
	});
	}
	else{
		alert("프로필 사진을 등록해주세요."); 
	}
}
</script>

	<script>
// 사진 클릭시 이미지 업로드 창 뜨기
$(document).ready(function(){
    $('[data-toggle="tooltip"]').tooltip();
    });
</script>

	<!-- footer -->
	<jsp:include page="../common/footer.jsp" flush="false" />

</body>
</html>