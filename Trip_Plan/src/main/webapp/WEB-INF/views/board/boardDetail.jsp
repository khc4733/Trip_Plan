<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ page import="java.util.*"%>
<c:set var="contextPath" value="${pageContext.request.contextPath}" />
<%
request.setCharacterEncoding("UTF-8");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>게시글 상세정보</title>
<link href="${contextPath}/resources/css/front.css" type="text/css"
	rel="stylesheet">
</head>
<body>

	<!-- top menu -->
	<div class="sub_menubar">
		<jsp:include page="../common/topmenu.jsp" />
	</div>

	<div class="container">
		<form class="form-horizontal" id="frm" name="frm"
			action="${contextPath}/board/boardUpdateForm?seq=${boardDetail.seq}" method="post"
			onsubmit="return false">
			<div class="form-group" id="title">
			</div>
			<div class="container">
				<div class="row">
					<table class="table table-striped"
						style="text-align: center; border: 1px solid #dddddd; width:1000px; margin: auto;">
						<thead>
							<tr>
								<th colspan="3"
									style="background-color: #eeeeee; text-align: center;">게시판
									글보기</th>
							</tr>
						</thead>
						<tbody>
							<tr>
								<td style="width: 20%;">제목</td>
								<td colspan="2" style="text-align: left;"><span id="subj">${boardDetail.subject}</span> 
													<input type="text" class="form-control" id="subject" name="subject"
						maxlength="20" value="${boardDetail.subject}" style="display : none;" /></td>
								
							</tr>
							<tr>
								<td>작성자</td>
								<td colspan="2" style="text-align: left;">${boardDetail.writer}<input  id="writer" name="writer"
						value="${boardDetail.writer}" style="display : none;" /></td>
							</tr>
							<tr>
								<td>작성일자</td>
								<td colspan="2" style="text-align: left;" id="reg_date">
								    <fmt:parseDate
										value="${boardDetail.reg_date}" var="currentDate" pattern="yyyyMMddHHmm" scope="page" /> 
									<fmt:formatDate
										 value="${currentDate}" pattern="yyyy년 MM월 dd일 HH시 mm분" /></td>
							</tr>
							<tr>
								<td>내용</td>
								<td colspan="2" style="min-height: 200px; text-align: left;"> <span id="cont">${boardDetail.content}</span>
													<textarea rows="10" cols="160" class="form-control" id="content"
						name="content" style="display : none;">${boardDetail.content}</textarea></td>
							</tr>
						</tbody>
					</table>
					<input  id="readCount" name="readCount"
						 value="${boardDetail.readCount}" style="display : none;" />
				</div>
			</div>
			<div class="row" style="width:1000px">
			   <div class="col-md-3">
				<button type="button" class="btn " id="btn-list"
					onclick="location.href='boardList'">목록</button>
			   </div>
				<c:choose>
					<c:when
						test="${isLogOn == true && member.nname==boardDetail.writer}">
                       <div class="col-md-9" align="right">
						<button type="submit" class="btn" id="btn-update"
							onclick="boardUpdate()" style="display : none;">저장</button>
						<button type="submit" class="btn" id="update"
							onclick="Update()">수정</button>						
						<button type="button" class="btn " id="btn-delete"
							onclick="boardDelete()">삭제</button>
					</div>
					</c:when>
				</c:choose>
			</div>
		</form>
	</div>

	<script>
		//게시글 삭제
		function Update() {
			$('#subj').hide();
			$('#cont').hide();
			$('#update').hide();
			$('#btn-update').show();
			$('#content').show();
			$('#subject').show();
		}
		
		function boardDelete() {
			if (confirm("게시글을 삭제하시겠습니까?") == true) {
				location.href = "${contextPath}/board/boardDelete.do?seq=${boardDetail.seq}";
				alert("게시글이 삭제 되었습니다.");
			} else {
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
			if (confirm("게시글을 수정하시겠습니까?") == true) {
				document.frm.submit();
				alert("게시글 수정이 완료되었습니다.");
			} else { //취소
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