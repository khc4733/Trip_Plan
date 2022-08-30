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
<title>리뷰게시판</title>



</head>
<body>

	<div class="sub_menubar">
		<jsp:include page="../common/topmenu.jsp" />
	</div>

	<!-- top menu -->
	<jsp:include page="../common/topmenu.jsp" />



	<!-- 본문 내용 -->

	<div class="container">
		<form class="form-horizontal" id="formList">
			<div class="form-group">
				<div style="margin-top: 100px;">
					<h2 align="left">REVIEW</h2>
					<img src="${contextPath}/resources/images/review1.jpg" width="40%"
						height="300px" align="right">

					<p>
						REVIEW 게시판은 여행하며 느꼈던 좋았던 점이나 아쉬웠던 경험들을 올리는 공간입니다. <br> 글 작성 시
						광고, 허위, 비방글 등에 해당하는 내용은 제한되니 유의 바랍니다.<br> <b>등록하신 게시물은
							관리자의 승인 후 확인이 가능합니다.</b>
					</p>
				</div>



			</div>

			<table class="table table-bordered table-striped nanum table-hover">
				<thead>
					<tr class="info">
						<th>번호</th>
						<th>제목</th>
						<th>내용</th>
						<th>작성자</th>
						<th>날짜</th>
						<th>조회수</th>
					</tr>
				</thead>
				<tbody>
					<c:forEach items="${boardList}" var="list">
						<tr>
							<td align="right">${list.seq}</td>
							<td><a
								href="${contextPath}/board/boardDetail?seq=${list.seq}">${list.subject}</a></td>
							<!-- <td><a href="#" onclick="fn_boardDetail('${list.seq}')">${list.subject}</a></td> -->
							<td>${list.content}</td>
							<td>${list.writer}</td>
							<fmt:parseDate value="${list.reg_date}" var="currentDate"
								pattern="yyyyMMddHHmm" scope="page" />
							<td><fmt:formatDate value="${currentDate}"
									pattern="yyyy년 MM월 dd일 HH시 mm분" /></td>
							<td align="right">${list.readCount}</td>
						</tr>
					</c:forEach>
				</tbody>
			</table>



			<div class="col-sm-offset-3">
				<div align="right">

					<select id='searchType'>
						<option>검색종류</option>
						<option value="t" <c:if test="${pageVO.type} == 't'"></c:if>>제목</option>
						<option value="c" <c:if test="${pageVO.type} == 'c'"></c:if>>내용</option>
						<option value="w" <c:if test="${pageVO.type} == 'w'"></c:if>>글쓴이</option>
					</select> <input type='text' id='searchKeyword' name='keyword'
						value="${pageVO.keyword}">
					<button id='searchBtn'>Search</button>

				</div>
			</div>

			<c:choose>
				<c:when test="${isLogOn == true && member != null}">
					<p align="center">
						<button type="button" class="btn btn-primary"
							onclick="location.href='boardRegisterForm'">글쓰기</button>
					</p>
				</c:when>
			</c:choose>
		</form>

		<form id="frm" action="/board/boardList" method="get">
			<input type='hidden' id='page' name='page'
				value="${result.currentPageNum}"> <input type='hidden'
				id='size' name='size' value="${result.currentPage.pageSize}">
			<input type='hidden' id='searchType' name='searchType'
				value="${pageVO.type}"> <input type='hidden' id='keyword'
				name='keyword' value="${pageVO.keyword}">
		</form>

	</div>

	<!--페이지-->
	<div id="page_control">
		<a href="#">이전</a> <a href="#">1</a> <a href="#">2</a> <a href="#">3</a>
		<a href="#">4</a> <a href="#">5</a> <a href="#">6</a> <a href="#">7</a>
		<a href="#">8</a> <a href="#">9</a> <a href="#">10</a> <a href="#">다음</a>
	</div>


	<!-- footer  -->
	<jsp:include page="../common/footer.jsp" />


</body>
</html>