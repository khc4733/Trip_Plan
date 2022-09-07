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

<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<style>
#tit{
background-image: url("${contextPath}/resources/images/review2.jpg");
background-repeat : no-repeat;
    width:970px;
    margin-left:auto;
    margin-right:auto;
	height:300px;
    background-size : 970px;
    background-position: center;
	margin-top: 100px; margin-bottom:50px;
	padding-top: 200px;
}
</style>
</head>
<body>

	<div class="sub_menubar">
		<jsp:include page="../common/topmenu.jsp" />
	</div>



	<!-- 본문 내용 -->
			<div id="tit"> 
					<h2 align="right" style=" color: #fff; 	padding-right: 245px;">REVIEW</h2>
					<p align="right"style="color: #fff; padding-right: 30px;">
						<b>REVIEW 게시판은 여행하며 느꼈던 좋았던 점이나 아쉬웠던 경험들을 올리는 공간입니다.</b>
					<p>
			</div>

	<div class="container" style="width: 1000px; margin-bottom:80px;">
	

			<table class="table table-striped nanum table-hover">
				<thead>
					<tr>
						<th colspan="1" style=" width:60px; text-align:center;">번호</th>
						<th colspan="5" style=" width:300px; text-align:center;">제목</th>
						<th colspan="1" style=" width:60px; text-align:center;">작성자</th>
						<th colspan="2" style=" width:120px; text-align:center;">날짜</th>
						<th colspan="1" style=" width:60px; text-align:center;">조회수</th>
					</tr>
				</thead>
				<tbody>
					<c:forEach items="${boardList}" var="list">
						<tr>
							<td colspan="1" style=" width:60px;">${list.seq}</td>
							<td colspan="5" style=" width:300px;"><a
								href="${contextPath}/board/boardDetail?seq=${list.seq}">${list.subject}</a></td>
							<!-- <td><a href="#" onclick="fn_boardDetail('${list.seq}')">${list.subject}</a></td> -->
							<td colspan="1" style=" width:60px;">${list.writer}</td>
							<fmt:parseDate value="${list.reg_date}" var="currentDate"
								pattern="yyyyMMddHHmm" scope="page" />
							<td colspan="2" style=" width:120px;"><fmt:formatDate value="${currentDate}"
									pattern="yyyy.MM.dd" /></td>
							<td align="right" colspan="1" style=" width:60px;">${list.readCount}</td>
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



	<!--페이지-->
	<div id="page_control">
	        <div id="pageInfo" class="pageInfo_area">
                <!-- 이전페이지 버튼 -->
                <c:if test="${pageMaker.prev}">
                  <a href="${pageMaker.startPage-1}">Previous</a>
                </c:if>
                	            
	            <!-- 각 번호 페이지 버튼 -->
                <c:forEach var="num" begin="${pageMaker.startPage}" end="${pageMaker.endPage}">
                   <a href="${num}">${num}</a>
                </c:forEach>
                
                <!-- 다음페이지 버튼 -->
                <c:if test="${pageMaker.next}">
                   <a href="${pageMaker.endPage + 1 }">Next</a> 
                </c:if>                   
        </div>
	</div>
	   <form action="${contextPath}/board/boardList" id="moveForm" method="get">	
		<input type="hidden" id="pn"name="pageNum" value="${pageMaker.cri.pageNum }">
        <input type="hidden" name="amount" value="${pageMaker.cri.amount }">
	   </form>
</div>
	


	<!-- footer  -->
	<jsp:include page="../common/footer.jsp" />


</body>
<script>
$(document).ready(function() {
	$("#pageInfo a").on("click", function(e){
	    e.preventDefault();
	    $("#pn").val($(this).attr("href"))
        moveForm.submit();
	});
});
</script>
</html>