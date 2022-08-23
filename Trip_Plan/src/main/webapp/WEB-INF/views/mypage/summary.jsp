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
img {
	width:100px;
	height: 100px;
	border-radius: 70%;
}
</style>
<link href="${pageContext.request.contextPath}/resources/css/front.css"
	type="text/css" rel="stylesheet">
</head>
<body>
<!-- 메뉴바 -->
<jsp:include page="../common/topmenu.jsp" flush="false"/>

<!-- 사이드 메뉴 바 -->
<jsp:include page="../mypage/myside.jsp"/>
	
<!-- <img src="${contextPath}/resources/images/profile.jpg" width="100" id="profileImg"><br/>     
<div class="card">           
    <form action="/mypage/updateImg" method="post" enctype="multipart/form-data">
        <input type="file" name="file" style="margin:auto;">
        <input type="hidden" name="memberId" id="memberId" value="${member.id}">
        <button type="submit" class="btn-sm btn-primary">사진변경</button>
        <button type="button" class="btn-sm btn-primary">사진삭제</button>
   </form>
</div> -->

<div class="container">
    <label for="file1">프로필 사진</label> 
    <input type="file" id="file1" name="file1"> 
    <button id="btn_submit" onclick="javascript:fn_submit()">전송</button>    
<div>
       <div class="img_wrap">
           <img id="img"/>
       </div>
</div>
</div>
 
<script type="text/javascript">
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
                alert("확장자는 이미지 확장자만 가능합니다.");
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
function fn_submit(){
        
        var form = new FormData();
        form.append( "file1", $("#file1")[0].files[0] );
        
         jQuery.ajax({
             url : "/myapp/result"
           , type : "POST"
           , processData : false
           , contentType : false
           , data : form
           , success:function(response) {
               alert("성공하였습니다.");
               console.log(response);
           }
           ,error: function (jqXHR) 
           { 
               alert(jqXHR.responseText); 
           }
       });
}
</script>

<!-- footer --> 
<jsp:include page="../common/footer.jsp" flush="false"/>

</body>
</html>