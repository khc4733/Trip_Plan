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



	<!-- 본문 내용 -->

	<div class="container" style="width: 1000px; margin-bottom:80px;">
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

			<table class="table table-striped nanum table-hover">
				<thead>
					<tr>
						<th colspan="1" style=" text-align:center;">번호</th>
						<th colspan="5" style=" text-align:center;">제목</th>
						<th colspan="1" style=" text-align:center;">작성자</th>
						<th colspan="2" style=" text-align:center;">날짜</th>
						<th colspan="1" style=" text-align:center;">조회수</th>
					</tr>
				</thead>
				<tbody>
					<c:forEach items="${boardList}" var="list">
						<tr>
							<td colspan="1" >${list.seq}</td>
							<td colspan="5"><a
								href="${contextPath}/board/boardDetail?seq=${list.seq}">${list.subject}</a></td>
							<!-- <td><a href="#" onclick="fn_boardDetail('${list.seq}')">${list.subject}</a></td> -->
							<td colspan="1">${list.writer}</td>
							<fmt:parseDate value="${list.reg_date}" var="currentDate"
								pattern="yyyyMMddHHmm" scope="page" />
							<td colspan="2"><fmt:formatDate value="${currentDate}"
									pattern="yyyy.MM.dd" /></td>
							<td align="right" colspan="1">${list.readCount}</td>
						</tr>
					</c:forEach>
				</tbody>
			</table>

			<c:choose>
				<c:when test="${isLogOn == true && member != null}">
					<p align="center">
						<button type="button"
							onclick="location.href='boardRegisterForm'" style="  left: 455px; position: relative;">글쓰기</button>
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


	<!--페이지-->
	<div id="page_control">
		<a href="#">이전</a> <a href="#">1</a> <a href="#">2</a> <a href="#">3</a>
		<a href="#">4</a> <a href="#">5</a> <a href="#">다음</a>
	</div>
	</div>


	<!-- footer  -->
	<jsp:include page="../common/footer.jsp" />


</body>
</html>