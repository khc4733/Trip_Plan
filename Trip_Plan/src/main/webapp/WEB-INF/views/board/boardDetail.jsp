<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ page import="java.util.*" %>
<c:set var="contextPath" value="${pageContext.request.contextPath}"/>
<% request.setCharacterEncoding("UTF-8"); %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>게시글 상세정보</title>
<link href="${contextPath}/resources/css/front.css" type="text/css" rel="stylesheet">
</head>
<body>
   
<!-- top menu -->   
<div class="sub_menubar">
    <jsp:include page="../common/topmenu.jsp"/>
</div>

<div class="container">
      <form class="form-horizontal" id="frm" action="${contextPath}/board/boardUpdateForm" method="post" onsubmit="return false">
         <div class="form-group" id="title">
            <h2 align="center">REVIEW</h2>
         </div>
         <div class="form-group">
            <label for="subject" class="col-sm-2 control-label">제  목</label>
            <div class="col-sm-3">
               <input type="text" class="form-control" id="subject" name="subject" maxlength="20" value="${boardDetail.subject}" readonly/>
          </div>
         </div>
         <div class="form-group">
            <label for="subject" class="col-sm-2 control-label">작성자</label>
            <div class="col-sm-3">
               <input type="text" class="form-control" id="writer" name="writer" maxlength="20" value="${boardDetail.writer}" readonly />
            </div>
            <label for="subject" class="col-sm-2 control-label">작성날짜</label>
            <div class="col-sm-3">
               <input type="text" class="form-control" id="writer" name="writer" maxlength="20" value="${boardDetail.reg_date}" readonly />
            </div>
         </div>
         <div class="form-group">
            <label for="subject" class="col-sm-2 control-label">내  용</label>
            <div class="col-sm-8">
               <textarea rows="10" cols="160" class="form-control" id="content" name="content" readonly>${boardDetail.content}</textarea> 
            </div>
         </div>
         <div class="form-group">
         <button type="button" class="btn btn-sm" id="btn-list" onclick="location.href='boardList'">목록</button>
         <button type="submit" class="btn btn-sm" id="btn-update" onclick="boardUpdate()">수정</button>
         <button type="button" class="btn btn-sm" id="btn-delete" onclick="boardDelete()">삭제</button>
      </div>    
      </form>
</div>

<script>
//게시글 삭제
function boardDelete() {
 if (confirm("게시글을 삭제하시겠습니까?") == true){  
   location.href = "${contextPath}/board/boardDelete?seq=${board.seq}";
    alert("게시글이 삭제 되었습니다.");
 }else {   
    alert("게시글 삭제를 취소하였습니다.");
    location.reload();
    return false;
 }
}
//게시글 수정
function boardUpdate() {   
   if ($.trim($('#content').val()) == '') {
      alert("내용을 입력해주세요.");
      return false;
   }   
    if (confirm("게시글을 수정하시겠습니까?") == true){ 
          document.frm.submit();
       alert("게시글 수정이 완료되었습니다.");
    } else {   //취소
       alert("게시글 수정을 취소하였습니다.");
       location.reload();
       return false;
   }
}
</script>
   
   
<!-- footer  -->
<jsp:include page="../common/footer.jsp" />
</body>
</html>