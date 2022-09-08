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
	background-image: url("${contextPath}/resources/images/guide4.png");
	background-repeat : no-repeat;
    width:970px;
    margin-left:auto;
    margin-right:auto;
	height:300px;
    object-fit: cover;
	margin-top: 100px;
	margin-bottom: 0;
	padding-top: 70px;
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
		     	<h2 align="right" style=" color: #000; padding-top:10px; padding-right: 470px;  font-family: 'Happiness-Sans-Title'; font-size: 50px; margin-top: 10px;">GUIDE</h2>
					<p align="right"style="color: #000; padding-right: 250px;">
						<b style="font-family: 'Happiness-Sans-Bold';">GUIDE 게시판은 사이트 정보 및 여행 관련 정보를 제공해드립니다.</b>
					<p>		     	
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
				<tr>
					<td>2</td>
					<td class="left"><a href="${contextPath}/board/jointp">Trip planner 이용방법</a></td>
					<td>Host Admin</td>
				</tr>
				<tr>
					<td>3</td>
					<td class="left"><a href="${contextPath}/member/memberRule">개인 정보 이용 안내</a></td>
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