<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>   
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>footer</title>
<link href="${pageContext.request.contextPath}/resources/css/front.css" type="text/css" rel="stylesheet">
<script>
    function scrollup() {
        	$( 'html, body' ).animate( { scrollTop : 0 }, 400 );
    return false;
    }
</script>
</head>
<body>
	<button type="button" class="btn-quick-top" title="최상단으로 가기" onClick="scrollup();">
	<i class="ico-arrow"></i>
    </button>
<footer>
        <div id="footer_content">
            Copyright ©  All Right Reserved <br/>

            <a href="${pageContext.request.contextPath}/memberP">이용약관 </a>  |  <a href="${pageContext.request.contextPath}/memberR">개인정보이용동의서</a>
            <br>
        </div>
</footer>
</body>
</html>