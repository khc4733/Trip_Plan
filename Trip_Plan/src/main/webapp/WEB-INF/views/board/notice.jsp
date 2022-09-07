<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="contextPath" value="${pageContext.request.contextPath}" />	
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link href="${contextPath}/resources/css/front.css" type="text/css" rel="stylesheet">
<title>공지게시판</title>
<style>
#tit{
background-image: url("${contextPath}/resources/images/guide1.jpg");
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
	<!-- top menu -->
     <div class="sub_menubar">
        <jsp:include page="../common/topmenu.jsp"/>
    </div>

	<!-- 본문 내용 -->
				<div id="tit"> 
			</div>
	<div class="notice-container">
		<table id="notice"
			style="width: 1000px; border-collapse: collapse; text-align: center;">
			<thead>
				<tr>
					<th scope="col" class="tno" width="40">no.</th>
					<th scope="col" class="ttitle">제목</th>
					<th scope="col" class="twriter">글쓴이</th>
				</tr>
			</thead>
			<tbody>
				<tr>
					<td>1</td>
					<td class="left"><a href="${contextPath}/board/subway">지역별 지하철 노선도</a></td>
					<td>Host Admin</td>
				</tr>
			</tbody>
		</table>

		<div class="clear"></div>

		

	</div>

	<!-- footer  -->
	<jsp:include page="../common/footer.jsp" />

</body>
</html>