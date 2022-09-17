<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<%-- <link rel="stylesheet" href="<c:url value='/css/common.css'/>"> --%>

<!DOCTYPE html>
<html>
	<head>
		
	</head>
	<body>
<div class="box-captcha">
	<div class="box-captcha-img">
		<img src="<c:url value='/images/captcha/${captcha_img}'/>">
	</div>
	<div>
		<button id="rotate-captcha" type="button"><i class="fa-solid fa-rotate-right"></i><span> 새로고침</span></button>
		<input type="text" id="captcha_value" name="captcha_value" placeholder="CAPTCHA 인증을 해주세요">
	</div>
</div>



            
	</body>
	<script src="<c:url value='/js/member_captcha.js'/>"></script>
</html>