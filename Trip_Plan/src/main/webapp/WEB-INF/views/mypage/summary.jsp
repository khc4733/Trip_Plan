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
<title>summary</title>	
<style>
.profileImg {
	width: 100px;
	height: 100px;
	position: absoulute;
}	
.opacity {
	position: absolute;
	top: 0;
	background-color: #fff;
	opacity: 0;
	transition: 0.3s;
}
.opacity:hover {
	cursor: pointer;
	opacity: 0.4;
}
.profile {
	width: 50%;
	height: 50%;
	object-fit: cover;
}
.hide {display:none;}
</style>
<link href="${pageContext.request.contextPath}/resources/css/front.css" type="text/css" rel="stylesheet">
</head>
<body>

<!-- 메뉴바 -->
<div class="sub_menubar">
    <jsp:include page="../common/topmenu.jsp"/>
</div>
<!-- 사이드 메뉴 바 -->
<jsp:include page="../mypage/myside.jsp"/>

<!-- 프로필 사진 -->
<div class="container">
	<div class="prifileImg" data-toggle="tooltip">
	<h5>프로필 사진</h5>
    	<img id="img" src="${contextPath}/${member.profileImg}" class="img-circle profile"> 
    	<div class="opacity img-circle profile"></div>
		<div class="hide">
			<input type="file" id="file1" name="file1">
		</div>
	</div>
	<div class="button">
		<button type="submit" class="btn btn-sm" onclick="ImgUpdate()">사진등록</button>
		<button type="button" class="btn btn-sm">삭제</button> 
	</div>  	  
</div>
 
<script type="text/javascript">
$(".opacity").click(function() {
    $("#file1").click();
});
//이미지 미리보기
var sel_file;
 
$(document).ready(function() {
    $("#file1").on("change", handleImgFileSelect);
});
 
function handleImgFileSelect(e) {
    var files = e.target.files;
    var filesArr = Array.prototype.slice.call(files);
 
    var reg = /(.*?)\/(jpg|jpeg|png|bmp)$/;
 
    filesArr.forEach(function(f) {
        if (!f.type.match(reg)) {
            alert("이미지 확장자만 가능합니다.");
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
	var form = new FormData();
	form.append( "file1", $("#file1")[0].files[0] );
	form.append( "id", $("#id").val() );
		
	$.ajax({
	url : "/mypage/imgUpload.do",
	type : "POST",
	processData : false,
	contentType : false,
	data : form,
	success:function(data) {
		if(data == "Y") {
			if ($("#file1")[0].files.length > 0) {
				this.imgUpload();
			} else {
				alert("프로필 사진 등록이 완료되었습니다.");
				location.reload();
			}
		} else {
			alert("프로필 사진 등록에 실패하였습니다.");
	});
}
</script>

<script>
// 사진 클릭시 이미지 업로드 창 뜨기
$(document).ready(function(){
    $('[data-toggle="tooltip"]').tooltip();
    });
</script>

<!-- footer --> 
<jsp:include page="../common/footer.jsp" flush="false"/>

</body>
</html>