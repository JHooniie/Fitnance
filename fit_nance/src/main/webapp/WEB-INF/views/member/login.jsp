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
		<c:import url="/WEB-INF/views/layout/top.jsp" />
		<section id="login_sector">
        <div class="login_page wrap">
            <div class="login_container">
                <div class="login_box">
                        <h3>가장 <span>핏</span>:하게 맞춰드릴게요</h3>
                        <p>fit:nance에 오신 것을 환영합니다</p>
                    <div class="form_input">
                        <form id="login_form" method="post" action="/loginProc">
                            <input type="text" name="memId" id="user_id"  class="input-user_id"  placeholder="이메일을 입력해주세요">
                            <div id="login_id_process_state" class="login_process_state"></div>
                            
                            <div class="pw_box">
                            <input type="password" name="memPwd" id="user_pw" class="input-user_pw"placeholder="비밀번호를 입력해주세요">
                            <i class="fa-solid fa-eye-slash"></i>
                            </div>
                            <div id="login_pw_process_state" class="login_process_state"></div>
                            <div class="check_divider">
                                <label class="rem_Email_Box"><input type="checkbox" name="rem_Email" id="rem_Email_checkBox" value="rem_Email">이메일 기억하기</label>
                                <a href="#" class="find_password text-end">비밀번호 찾기</a>
                            </div>
                            <div class="box-captcha box-captcha-wrap">
                            	<div class="box-captcha">
									<div class="box-captcha-img">
										<img src="<c:url value='/images/captcha/${captcha_img}'/>">
									</div>
									<div>
										<button id="rotate-captcha" type="button"><i class="fa-solid fa-rotate-right"></i><span> 새로고침</span></button>
										<div class="box-captcha-input">
											<input type="text" id="input-captcha_value" name="captcha_value" placeholder="CAPTCHA 인증을 해주세요">
											<i id="check-captcha" class="fa-solid fa-check"></i>
										</div>
									</div>
								</div>
                            </div>
                            <button id="disabled_login" type="button"><span class="btn-span">로그인</span></button>
                            <button id="main_login" type="submit"><span class="btn-span">로그인</span></button>
                       
                    </div>
                    <div class="email_login">
                        <button id="naver_login" type="button" onclick="location.href='<c:url value='/oauth2/authorization/naver'/>'"><span class="btn-span"><img src="<c:url value='/images/lg_naver.png'/>">네이버로 로그인</span></button>
                        <button id="email_start" type="button" onclick="location.href='<c:url value='/signupForm'/>'"><span class="btn-span">이메일로 시작하기</span></button>
                    </div>
                </div>
                 </form>
            </div>
        </div>
    </section>
    <!-- login end -->
	    <c:import url="/WEB-INF/views/layout/footer.jsp" />
	</body>
	<script src="../js/login.js"></script>
</html>