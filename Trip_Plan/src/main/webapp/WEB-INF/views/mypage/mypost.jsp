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
<title>나의 리뷰</title>

<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<style>

</style>
</head>
<body>

	<div class="sub_menubar">
		<jsp:include page="../common/topmenu.jsp" />
	</div>
<!-- 사이드 메뉴 바 -->
<jsp:include page="../mypage/myside.jsp"/>


	<!-- 본문 내용 -->

	<div class="container" style="width: 1000px; margin-top:80px; ">
		<form class="form-horizontal" id="formList">

			<table class="table table-striped nanum table-hover">
				<thead>
					<tr>
						<th colspan="1" style=" width:60px; text-align:center;">번호</th>
						<th colspan="5" style=" width:300px; text-align:center;">제목</th>
						<th colspan="2" style=" width:120px; text-align:center;">날짜</th>
						<th colspan="1" style=" width:60px; text-align:center;">조회수</th>
					</tr>
				</thead>
				<tbody>
					<c:forEach items="${myList}" var="list">
						<tr>
							<td colspan="1" style=" width:60px;">${list.seq}</td>
							<td colspan="5" style=" width:300px;"><a
								href="${contextPath}/board/boardDetail?seq=${list.seq}">${list.subject}</a></td>
							<!-- <td><a href="#" onclick="fn_boardDetail('${list.seq}')">${list.subject}</a></td> -->
							<fmt:parseDate value="${list.reg_date}" var="currentDate"
								pattern="yyyyMMddHHmm" scope="page" />
							<td colspan="2" style=" width:120px;"><fmt:formatDate value="${currentDate}"
									pattern="yyyy.MM.dd" /></td>
							<td align="right" colspan="1" style=" width:60px;">${list.readCount}</td>
						</tr>
					</c:forEach>
				</tbody>
			</table>

		</form>


	<!--페이지-->
	<div id="page_control">
	        <div id="pageInfo" class="pageInfo_area">
                <!-- 이전페이지 버튼 -->
                <c:if test="${mypageMaker.prev}">
                  <a href="${mypageMaker.startPage-1}">Previous</a>
                </c:if>
                	            
	            <!-- 각 번호 페이지 버튼 -->
                <c:forEach var="num" begin="${mypageMaker.startPage}" end="${mypageMaker.endPage}">
                   <a href="${num}">${num}</a>
                </c:forEach>
                
                <!-- 다음페이지 버튼 -->
                <c:if test="${mypageMaker.next}">
                   <a href="${mypageMaker.endPage + 1 }">Next</a> 
                </c:if>                   
        </div>
	</div>
	   <form action="${contextPath}/mypage/myPost" id="moveForm" method="get">
		<input type="hidden" id="pn"name="pageNum" value="${mypageMaker.cri.pageNum }">
        <input type="hidden" name="amount" value="${mypageMaker.cri.amount }">
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