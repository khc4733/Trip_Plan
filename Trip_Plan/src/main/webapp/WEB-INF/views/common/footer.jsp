<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>   
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>footer</title>
<link href="${pageContext.request.contextPath}/resources/css/front.css" type="text/css" rel="stylesheet">
<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script>
    function scrollup() {
        	$( 'html, body' ).animate( { scrollTop : 0 }, 400 );
    return false;
    }
    $(window).resize(function (){
	  // width값을 가져오기
	  var width_size = window.outerWidth;
	  var height_size = window.outerHeight;
	  
	  // 800 이하인지 if문으로 확인
	  if (width_size <= 1320) {
		  $("footer").css("visibility", "hidden");
	  }
	  else{
		  $("footer").css("visibility", "visible");
	  }
	  if (height_size <= 960) {
		  $("footer").css("visibility", "hidden");
	  }
	  else{
		  $("footer").css("visibility", "visible");
	  }	  
	})
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