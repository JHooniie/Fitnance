<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<sec:authorize access="isAuthenticated()">
    <sec:authentication property="principal" var="principal" />
</sec:authorize>
<!DOCTYPE html>
<html>
	<head>
		<c:import url="/WEB-INF/views/layout/head.jsp" />
		<!-- custom -->
		<link rel="stylesheet" href="<c:url value='/css/member_update_mypage_auth.css'/>">
	</head>
	<body>
		<c:import url="/WEB-INF/views/layout/top.jsp" />
		<section id="update_auth_section">
        <div class="update_auth_page wrap">
            <div class="update_auth_container">
               <form id="form-withdrawal-Check" action="<c:url value='/user/withdrawal_member'/>">
                <div class="box-update_auth-password">
                    <h3>회원 탈퇴 하기</h3>
                    <span class="span-update_auth-password-title">회원 탈퇴를 위해 비밀번호를 한 번 더 입력해주세요</span>
                    <div class="box-form-update_auth-password">
                        <div class="box-password-input">
                        	<input type="hidden" name="memId" value="${principal.username }">
                            <input type="password" name="memPwd"  id="user_pw" class="input-user-pw" placeholder="비밀번호를 입력해주세요">
                            <i class="fa-solid fa-eye-slash"></i>
                        </div>
                        </form>
                        <button id="btn-password-check" type="submit"><span class="btn-span">비밀번호로 인증하기</span></button>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- login end -->
	    <c:import url="/WEB-INF/views/layout/footer.jsp" />
	</body>
	<script src="../js/login.js"></script>
</html>