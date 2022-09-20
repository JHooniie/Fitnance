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
		<link rel="stylesheet" href="<c:url value='/css/member_update_password.css'/>">
	</head>
	<body>
		<c:import url="/WEB-INF/views/layout/top.jsp" />
		<section id="update_password_section">
        <div class="update_password_page wrap">
            <div class="update_password_container">
                <form id="form-update_password" action="<c:url value='/user/pre_update_password'/>" method="post">
                <div class="box-update-password">
                    <h3>비밀번호 변경</h3>
                    <span class="span-update-password-title">영문, 숫자, 특수문자 모두 포함한 8자 이상의 비밀번호를 입력해주세요</span>
                    <div class="box-form-update-password">
                    <div class="box-form-update-password">
                            <div class="box-password-input">
                                <input type="password" id="input-user_pw" name="memPwd" class="input-user_pw" placeholder="비밀번호를 입력해주세요">
                                <i class="fa-solid fa-eye-slash"></i>
                                <i class="fa-solid fa-circle-xmark"></i>
                            </div>
                            <div id="text-password-check-pass" class="text-process-state">
                                <span>보안 상태가 강한 비밀번호입니다.</span>
                            </div>
                            <div id="text-password-check-error" class="text-process-state">
                                <span class="span-process-error">보안 상태가 약합니다. 비밀번호를 다시 확인해 주세요</span>
                            </div>
                            <div class="box-password-reInput">
                                <input type="password" id="input-user_pw-re"  name="memPwd_chk" class="input-user_pw-re" placeholder="다시 한 번 입력해주세요">
                                <i class="fa-solid fa-eye-slash"></i>
                                <i class="fa-solid fa-circle-xmark"></i>
                            </div>
                            <div id="text-password-reCheck-pass" class="text-process-state">
                                <span>비밀번호가 일치합니다</span>
                            </div>
                            <div id="text-password-reCheck-error" class="text-process-state">
                                <span class="span-process-error">비밀번호가 일치하지 않습니다.</span>
                            </div>
                            <input type="hidden" name="memId" value="${principal.username}">
                            <button disabled id="btn-update-password" type="submit"><span class="btn-span">변경하기</span></button>
                    </div>
                </div>
            </form>
            </div>
        </div>
    </section>
    <!-- login end -->
	    <c:import url="/WEB-INF/views/layout/footer.jsp" />
	</body>
	<script src="../js/update_password.js"></script>
</html>