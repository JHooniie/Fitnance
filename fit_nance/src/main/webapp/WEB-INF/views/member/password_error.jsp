<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
	<head>
		<c:import url="/WEB-INF/views/layout/head.jsp" />
		<!-- custom -->
		<link rel="stylesheet" href="<c:url value='/css/member_login_fail.css'/>">
	</head>
	<body>
		<c:import url="/WEB-INF/views/layout/top.jsp" />
		<section id="fail_sector">
        <div class="fail_page wrap">
            <div class="fail_container">
            	<div class="fail_img"><img src="<c:url value='/images/warning_login.png'/>"></div>
                <div class="fail_box">
                	<span class="fail-title">잘못된 비밀번호</span>
                    <span>비밀번호가 틀렸습니다.</span>
                    <span>비밀번호를 다시 확인해주세요.</span>
                    <button id="login_location" type="button" class="Bbutton">로그인 페이지 이동</button>
                </div>
            </div>
        </div>
    </section>
    <!-- login end -->
	    <c:import url="/WEB-INF/views/layout/footer.jsp" />
	</body>
	<script src="../js/member_login_fail.js"></script>
</html>