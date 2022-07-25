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
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
</head>
<body>

<!-- 로그인 시에만 마이페이지 사용가능 -->
<%
if(session.getAttribute("isLogOn") == null || session.getAttribute("isLogOn").equals("")) {
	response.sendRedirect("../member/loginForm.do");
}
%>

<!-- 메뉴바 -->
<jsp:include page="../common/topmenu.jsp" flush="false"/>

<!-- 사이드 메뉴 바 -->
<nav class="col-sm-3 sidenav">
		<h4>Area</h4>
		<ul class="nav nav-pills nav-stacked">
						<li><a
							href="${contextPath}#">예약 내역</a></li>
						<li><a
							href="${contextPath}/..">게시판 작성내역</a></li>
						<li><a
							href="${contextPath}/myInfo.do">내 정보 확인</a></li>
		</ul>
	</nav>

<!-- 예약 내역 페이지 -->
<h1 align="center"> 예약 내역 확인</h1>
<div class="container">
    <form class="form-horizontal" id="frm">
    <table class="table table-bordered table-striped table-hover">
			<thead>
				<tr class="info">
					<th>번호</th>
					<th>제  목</th>
					<th>내  용</th>
					<th>작성자</th>
					<th>예약 날짜</th>
					<th>결제 금액</th>
					<th>취소</th>
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