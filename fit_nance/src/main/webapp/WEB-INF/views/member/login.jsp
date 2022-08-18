<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
	<head>
		<c:import url="/WEB-INF/views/layout/head.jsp" />
		<!-- custom -->
		<link rel="stylesheet" href="<c:url value='/css/member_login.css'/>">
	</head>
	<body>
	
		<sector id="login_sector">
        <div class="login_page wrap">
            <div class="login_container">
                <div class="login_box">
                        <h3>가장 <span>핏</span>:하게 맞춰드릴게요</h3>
                        <p>fit:nance에 오신 것을 환영합니다</p>
                    <div class="form_input">
                        <form id="login_form" action="">
                            <input type="text" id="user_id" placeholder="이메일을 입력해주세요">
                            <div id="login_id_process_state" class="login_process_state"></div>
                            
                            <div class="pw_box">
                            <input type="password" id="user_pw" placeholder="비밀번호를 입력해주세요">
                            <i class="fa-solid fa-eye-slash"></i>
                            </div>
                            <div id="login_pw_process_state" class="login_process_state"></div>
                            <div class="check_divider">
                                <label class="rem_Email_Box"><input type="checkbox" name="rem_Email" value="rem_Email">이메일 기억하기</label>
                                <a href="#" class="find_password text-end">비밀번호 찾기</a>
                            </div>
                            
                            <button id="main_login" type="submit"><span class="btn-span">로그인</span></button>
                        </form>
                    </div>
                    <div class="email_login">
                        <button id="naver_login"><span class="btn-span"><img src="<c:url value='/image/lg_naver.png'/>">네이버로 로그인</span></button>
                        <button id="email_start" onclick="location.href='<c:url value='/signup'/>'"><span class="btn-span">이메일로 시작하기</span></button>
                    </div>
                </div>
            </div>
        </div>
    </sector>
    <!-- login end -->
	    <c:import url="/WEB-INF/views/layout/footer.jsp" />
	</body>
	<script src="../js/login.js"></script>
</html>