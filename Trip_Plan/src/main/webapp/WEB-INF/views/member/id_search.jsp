<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c"	uri="http://java.sun.com/jsp/jstl/core" %>    
<c:set var="contextPath" value="${pageContext.request.contextPath}"/> 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="${contextPath}/resources/css/front.css" type="text/css"
	rel="stylesheet">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>	
<script>
	function id_search() {
		
		var name = $("#name").val();
		var email = $("#email").val();

		if (name == '') {
			alert("이름을 입력해주세요.");
			return false;
		}
		if (email == '') {
			alert("E-mail을 입력해주세요.");
			return false;
		}
		$.ajax({
			url:			"member/id_find",
			type:			"post",
			// contentType:	"application/json",
			dataType:		"json",
			data:			{"email" : $("#email").val()},
			success:		function(data) {
				alert("아이디 : "+data);
			}
		});
	}
</script>
<style>
.bts a{display:block; float:left; font-size:11px; font-family:Tahoma, Verdana, MalgunGothic,"돋움", "굴림"; color:#777; padding-left:6px; text-decoration:none; height:21px; cursor:pointer; margin-right:3px; overflow:hidden; margin:0 0 0 3px; text-align:center}
.bts a:hover{ text-align:center}
.bts_btn{width: 100px; padding: 12px; margin-left:10px; font-size:11px; font-family:Tahoma, Verdana, MalgunGothic,"돋움", "굴림";}
.bts a span{display:block; float:left; line-height:180%; padding-right:6px; height:21px; overflow:hidden; text-align:center}
.bts a:hover span{ color:#000; text-align:center}
.stitle{height:15px; color:#666666; font-size:11px; font-family:Tahoma, Verdana, MalgunGothic,"돋움", "굴림"; font-weight:bold; border-bottom:2px solid #cccccc}
.regtable td {
    border-bottom: 1px solid #eaeaea;
    padding: 0 5px;
    font-family: Tahoma, Verdana, MalgunGothic,"돋움", "굴림";
    font-size: 11px;
}
</style>
</head>
<body>
<table width="450" border="0" cellspacing="0" cellpadding="0" class="grey12">
	<tbody><tr>
		<td style="padding:20px 0 0 0">
			<table width="400" border="0" align="center" cellpadding="0" cellspacing="0">
				<tbody><tr>
					<td style="padding:15px; border-top:2px #cccccc solid; border-right:2px #cccccc solid; border-bottom:2px #cccccc solid; border-left:2px #cccccc solid;">
						<form method="post" action="${contextPath}/member/id_find">
						  <table width="380" border="0" cellspacing="0" cellpadding="0">
  							<tbody><tr>
  								<td class="stitle">아이디 찾기</td>
  							</tr>
  					  </tbody></table>
  						<table width="380" border="0" cellspacing="1" class="regtable">
  							<tbody><tr>
  								<td width="100" height="25" bgcolor="#f4f4f4" >이름</td>
  								<td width="130">
  									<input type="text" name="name" id="name" tabindex="1" required>
  								</td>
  								<td rowspan="2" align="center"><div class="bts"><button class="bts_btn" type="submit" onclick="id_search()">아이디 찾기</button></div></td>
  							</tr>
  							<tr>
  								<td height="25" bgcolor="#f4f4f4">e-Mail</td>
  								<td>
  									<input type="text" name="email" id="email" tabindex="2" required>
  								</td>
  							</tr>
						  </tbody></table>
					  </form>
					</td>
				</tr>
			</tbody></table>
			<table border="0" align="right" cellpadding="0" cellspacing="0">
				<tbody><tr>
					<td height="40" style="padding:0 13px 0 0">
						<div class="bts"><a href="javascript:self.close();"><span style="width:50px">닫기</span></a></div>
					</td>
				</tr>
			</tbody></table>
		</td>
	</tr>
</tbody></table>
</body>
</html>