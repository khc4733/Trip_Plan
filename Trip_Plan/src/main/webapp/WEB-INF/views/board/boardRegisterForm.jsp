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
<title>게시글 쓰기</title>
<link href="${contextPath}/resources/css/front.css" type="text/css" rel="stylesheet">

</head>
<body>
   
<!-- 메뉴바 -->
<div class="sub_menubar">
    <jsp:include page="../common/topmenu.jsp"/>
</div>
   
<div class="container">
     <form class="form-horizontal" name="boardRegisterForm" action="${contextPath}/board/boardRegister" method="post" onsubmit="return false">
         <div class="form-group" id="title">
            <h2 align="center">POST</h2>
         </div>
         <div class="form-group">
            <label for="subject" class="col-sm-2 control-label">제  목</label>
            <div class="col-sm-8">
               <input type="text" class="form-control" id="subject" name="subject" maxlength="100" placeholder="제목을 입력하세요."/>
            </div>
         </div>
         <div class="form-group">
            <label for="subject" class="col-sm-2 control-label">작성자</label><!-- 로그인 id -->
            <div class="col-sm-8">
               <input type="text" class="form-control" id="subject" name="subject" maxlength="100" readonly/>
            </div>
         </div>
         <div class="form-group">
            <label for="subject" class="col-sm-2 control-label">내  용</label>
            <div class="col-sm-8">
               <textarea rows="10" cols="160" class="form-control" id="content" name="content" placeholder="내용을 입력하세요."></textarea> 
            </div>
         </div>
         <div class="form-group">
            <p align="center">
            <!-- <button type="reset"  class="btn btn-sm" id="reset">다시입력</button> -->
            <button type="submit" class="btn btn-sm" id="post" onclick="boardRegister();">게시글 등록</button>
         </p>
         </div>
      </form>
   </div>
   
   
<script>
// 게시글 등록
function boardRegister() {   
   if ($.trim($('#subject').val()) == '') {
      alert("제목을 입력해주세요.");
      return false;
   }
   if ($.trim($('#content').val()) == '') {
      alert("내용을 입력해주세요.");
      return false;
   }
    if (confirm("게시글을 등록하시겠습니까?") == true){ 
          document.boardRegisterForm.submit();
       alert("게시글이 등록되었습니다.");
       location.href='boardList'
    } else {   //취소
       alert("게시글 등록을 취소하였습니다.");
       location.reload();
       return false;
   }
}
</script>   
<!-- footer --> 
<jsp:include page="../common/footer.jsp" flush="false"/>

</body>
</html>      