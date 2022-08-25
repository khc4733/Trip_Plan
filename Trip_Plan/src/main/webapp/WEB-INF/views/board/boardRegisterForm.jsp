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
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
<script src="${contextPath}/resources/js/board.js"></script>
</head>
<body>
   
<!-- 메뉴바 -->
<div class="sub_menubar">
    <jsp:include page="../common/topmenu.jsp"/>
</div>
   
 <div class="container">
   	<form class="form-horizontal" name="boardRegisterForm">
   		<div class="form-group">
   			<h2 align="center">리뷰 작성하기</h2>
   		</div>
   		<div class="form-group">
   			<label for="subject" class="col-sm-2 control-label">제  목</label>
   			<div class="col-sm-8">
   				<input type="text" class="form-control" id="subject" name="subject" maxlength="100" placeholder="제목 입력"/>
   			</div>
   		</div>
   		<div class="form-group">
   			<label for="subject" class="col-sm-2 control-label">글쓴이</label>
   			<div class="col-sm-3">
   				<input type="text" class="form-control" id="name" name="name" maxlength="20" placeholder="이름 입력"/>
   			</div>
   		</div>
   		<div class="form-group">
   			<label for="subject" class="col-sm-2 control-label">내  용</label>
   			<div class="col-sm-8">
   				<textarea rows="10" cols="160" class="form-control" id="content" name="content" placeholder="내용 입력"></textarea> 
   			</div>
   		</div>
   		<div class="form-group">
   			<p align="center">
				<button type="reset"  class="btn btn-warning">
					<span class="glyphicon glyphicon-erase"> 다시 입력</span>
				</button>
				<button type="button" class="btn btn-primary" onclick="fn_boardRegister();">
					<span class="glyphicon glyphicon-pencil"> 게시글 등록</span>
				</button>
			</p>
   		</div>
   	</form>
   </div>
   
   
<!-- footer --> 
<jsp:include page="../common/footer.jsp" flush="false"/>
</body>
</html>