<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link href="${pageContext.request.contextPath}/resources/css/front.css"
	type="text/css" rel="stylesheet">
<title>공지게시판</title>
</head>
<body>
	<!-- top menu -->
	<jsp:include page="../common/topmenu.jsp" />

	<!-- 본문 내용 -->
	<div class="notice-container">
		<h1>NOTICE</h1>
		<table id="notice"
			style="width: 1000px; border-collapse: collapse; text-align: center;">
			<thead>
				<tr>
					<th scope="col" class="tno" width="40">no.</th>
					<th scope="col" class="ttitle">제목</th>
					<th scope="col" class="twriter">글쓴이</th>
					<th scope="col" class="tdate">날짜</th>
					<th scope="col" class="tread">조회수</th>
				</tr>
			</thead>
			<tbody>
				<tr>
					<td>15</td>
					<td class="left">Lorem ipsum dolor sit amet, consectetur
						adipiscing elit.</td>
					<td>Host Admin</td>
					<td>2022.03.01</td>
					<td>1700</td>
				</tr>
				<tr>
					<td>14</td>
					<td class="left">Nullam bibendum, libero faucibus porttitor
						bibendum.</td>
					<td>Sec Admin</td>
					<td>2022.02.08</td>
					<td>1300</td>
				</tr>
				<tr>
					<td>13</td>
					<td class="left">Nam venenatis neque quis laoreet egestas
						hendrerit id diam.</td>
					<td>Sec Admin</td>
					<td>2022.02.08</td>
					<td>1300</td>
				</tr>
				<tr>
					<td>12</td>
					<td class="left">Nullam bibendum, libero faucibus porttitor
						bibendum.</td>
					<td>Sec Admin</td>
					<td>2022.02.08</td>
					<td>1300</td>
				</tr>
				<tr>
					<td>11</td>
					<td class="left">Nullam bibendum, libero faucibus porttitor
						bibendum.</td>
					<td>Sec Admin</td>
					<td>2022.02.08</td>
					<td>1300</td>
				</tr>
				<tr>
					<td>10</td>
					<td class="left">Nullam bibendum, libero faucibus porttitor
						bibendum.</td>
					<td>Sec Admin</td>
					<td>2022.02.08</td>
					<td>1300</td>
				</tr>
				<tr>
					<td>9</td>
					<td class="left">Nullam bibendum, libero faucibus porttitor
						bibendum.</td>
					<td>Sec Admin</td>
					<td>2022.02.08</td>
					<td>1300</td>
				</tr>
				<tr>
					<td>8</td>
					<td class="left">Nullam bibendum, libero faucibus porttitor
						bibendum.</td>
					<td>Sec Admin</td>
					<td>2022.02.08</td>
					<td>1300</td>
				</tr>
				<tr>
					<td>7</td>
					<td class="left">Nullam bibendum, libero faucibus porttitor
						bibendum.</td>
					<td>Sec Admin</td>
					<td>2022.02.08</td>
					<td>1300</td>
				</tr>
				<tr>
					<td>6</td>
					<td class="left">Nullam bibendum, libero faucibus porttitor
						bibendum.</td>
					<td>Sec Admin</td>
					<td>2022.02.08</td>
					<td>1300</td>
				</tr>
				<tr>
					<td>5</td>
					<td class="left">Nullam bibendum, libero faucibus porttitor
						bibendum.</td>
					<td>Sec Admin</td>
					<td>2022.02.08</td>
					<td>1300</td>
				</tr>
				<tr>
					<td>4</td>
					<td class="left">Nullam bibendum, libero faucibus porttitor
						bibendum.</td>
					<td>Sec Admin</td>
					<td>2022.02.08</td>
					<td>1300</td>
				</tr>
				<tr>
					<td>3</td>
					<td class="left">Nullam bibendum, libero faucibus porttitor
						bibendum.</td>
					<td>Sec Admin</td>
					<td>2022.02.08</td>
					<td>1300</td>
				</tr>
				<tr>
					<td>2</td>
					<td class="left">Nullam bibendum, libero faucibus porttitor
						bibendum.</td>
					<td>Sec Admin</td>
					<td>2022.02.08</td>
					<td>1300</td>
				</tr>
				<tr>
					<td>1</td>
					<td class="left">Nullam bibendum, libero faucibus porttitor
						bibendum.</td>
					<td>Sec Admin</td>
					<td>2022.02.08</td>
					<td>1300</td>
				</tr>
			</tbody>
		</table>

		<div class="clear"></div>

		<!--페이지-->
		<div id="page_control">
			<a href="#">이전</a> <a href="#">1</a> <a href="#">2</a> <a href="#">3</a>
			<a href="#">4</a> <a href="#">5</a> <a href="#">6</a> <a href="#">7</a>
			<a href="#">8</a> <a href="#">9</a> <a href="#">10</a> <a href="#">다음</a>
		</div>
	</div>

	<!-- footer  -->
	<jsp:include page="../common/footer.jsp" />

</body>
</html>