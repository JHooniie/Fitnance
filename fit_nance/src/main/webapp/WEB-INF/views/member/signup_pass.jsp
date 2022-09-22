<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
	<head>
		<c:import url="/WEB-INF/views/layout/head.jsp" />
		<!-- custom -->
		<link rel="stylesheet" href="<c:url value='/css/member_signup_pass.css'/>">
	</head>
	<body>
		<c:import url="/WEB-INF/views/layout/top.jsp" />
		<section id="pass_sector">
        <div class="pass_page wrap">
            <div class="pass_container">
            	<img class="pass_img" src="<c:url value='/images/withdrawal.png'/>">
            	<div class="pass-title">
            		<span>회원가입을 축하드립니다!</span>
           		</div>
                <div class="pass_box">
                    <span class="span-pass_box-01"><span>fit</span>:nance에 오신것을 환영합니다!</span>
                    <span class="span-pass_box-02">로그인을 진행해주세요!</span>
                    <button id="login_location" type="button" class="Bbutton" onclick="location.href='<c:url value='/loginForm'/>'">로그인 페이지 이동</button>
                </div>
            </div>
        </div>
    </section>
    <!-- login end -->
	    <c:import url="/WEB-INF/views/layout/footer.jsp" />
	</body>
	<script src="../js/login.js"></script>
</html>