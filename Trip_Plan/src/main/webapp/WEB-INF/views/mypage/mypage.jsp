<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c"	uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt"	uri="http://java.sun.com/jsp/jstl/fmt"  %>
<c:set var="contextPath" value="${pageContext.request.contextPath}"/>
<%  request.setCharacterEncoding("UTF-8"); %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>마이 페이지</title>
</head>
<body>


<!-- 로그인 시에만 마이페이지 사용가능 -->
<%
if(session.getAttribute("isLogOn") == null || session.getAttribute("isLogOn").equals("")) {
	response.sendRedirect("../member/loginForm.do");
}
%>

<!-- 메뉴바 -->
     <div class="sub_menubar">
        <jsp:include page="../common/topmenu.jsp"/>
    </div>
<!-- 사이드 메뉴 바 -->
<jsp:include page="../mypage/myside.jsp"/>

<!-- 예약 내역 페이지 -->
<h2 align="center" style= "margin-top: 130px; margin-right: 220px;" >게시판 작성내역</h2>
<div class="container">
    <form class="form-horizontal" id="frm">
    <table class ="table table-bordered table-striped table-hover">
			<thead>
				<tr class="info">
					<th>No.</th>
					<th>제목</th>
					<th>글쓴이</th>
					<th>작성날짜</th>
					<th>삭제</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach items="${boardList}" var="list">
					<tr>
						<td align="right">${list.seq}</td>
						<td><a href="${contextPath}/board/boardDetail?seq=${list.seq}">${list.subject}</a></td>
						<td>${list.content}</td>
						<td align="center">${list.name}</td>
						<fmt:parseDate value="${list.reg_date}" var="currentDate" pattern="yyyyMMddHHmmss"/>
						<td><fmt:formatDate value="${currentDate}" pattern="yyyy년 MM월 dd일"/></td>
			            <td align="center"><a class="btn btn-sm btn-danger" href="${contextPath}/mypage/removeReserve.do?id=${member.id}">취소</a></td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
		
		
    </form>
</div>




<jsp:include page="../common/footer.jsp" flush="false"/>
</body>
</html>