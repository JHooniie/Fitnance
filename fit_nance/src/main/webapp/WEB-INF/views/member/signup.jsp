<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
	<head>
		<c:import url="/WEB-INF/views/layout/head.jsp" />
		<!-- custom -->
		<link rel="stylesheet" href="<c:url value='/css/member_signup.css'/>">
	</head>
	<body>
	<sector id="signup_sector">
        <div class="signup_page wrap">
            <div class="signup_container">
                <div class="process_graph"></div>
                <div class="signup_box">
                    <h3>먼저 이메일이 필요해요 :)</h3>
                    <div class="form_input">
                        <form id="signup_form" action="">
                            <input type="text" id="user_id" placeholder="이메일을 입력해주세요">
                            <div id="signup_id_process_state" class="signup_process_state"></div>
                            <input type="text" id="token_no" placeholder="인증번호를 입력해주세요">
                            <div id="signup_pw_process_state" class="signup_process_state"></div>
                            <button id="main_signup" type="submit"><span class="btn-span">로그인</span></button>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </sector>
    <!-- login end -->
	    <c:import url="/WEB-INF/views/layout/footer.jsp" />
	</body>
	<script src="../js/signup.js"></script>
</html>