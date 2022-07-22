<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>   
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>footer</title>

<style>
.footer {
position: absolute;
bottom: 0;
left: 0;
right: 0;
color: white;
background-color: #333333;
}
</style>
</head>
<body>
 <div id="footer_container" class="container text-center">
        <div id="footer_content">
            <?xml version="1.0" ?>
            Copyright ©  All Right Reserved <br/>

            <a href="${pageContext.request.contextPath}/memberP">이용약관 </a>  |  <a href="${pageContext.request.contextPath}/memberR">개인정보이용동의서</a>
            <br>
        </div>
    </div>
</body>
</html>