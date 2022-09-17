<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<sec:authorize access="isAuthenticated()">
    <sec:authentication property="principal" var="principal" />
</sec:authorize>
<!DOCTYPE html>
<html>
	<head>
		<!-- head -->
		<c:import url="/WEB-INF/views/layout/head.jsp" />
		<!-- css -->
		<link rel="stylesheet" href="<c:url value='/css/cc_inquire.css'/>"/>
		<!-- js -->
		<script src="<c:url value='/js/cc_inquire.js'/>"></script>
	</head>
	<body>
		<!-- top.jsp -->
		<c:import url="/WEB-INF/views/layout/top.jsp" />
		<!-- section.jsp -->
		<section id="section">
        	<div class="div_service_inquire">
	            <div class="div_service_title">
	                <h1>서비스 이용 문의</h1>
	            </div>
	            <div class="tab_service_inquire">
	                <div class="tab_service_nav">
	                    <div class="nav_register_inquire"><span>문의하기</span></div>
	                    <div class="nav_list_inquire" onClick="location.href='/inquire_list'"><span>조회하기</span></div>
	                </div>
	                 <sec:authorize access="isAnonymous()">
	                <div class="div_login_notice">
	                    <div class="title_login_notice">
	                        <p>고객님의 금융관련 상담 및 문의사항에 대한</p>
	                        <p>해결을 위해 최선을 다하겠습니다.</p>
	                    </div>
	                    <div class="image_login_notice">
	                        <i class="fa-solid fa-power-off"></i>
	                    </div>
	                    <div class="link_login_notice">
	                        <a href="<c:url value='/loginForm'/>">로그인<i class="fa-solid fa-chevron-right"></i></a>
	                    </div>
	                    <div class="text_login_notice">
	                        <p>로그인 시 개인정보 입력 절차 없이 이용할 수 있으며</p>
	                        <p>과거 상담 내역도 확인할 수 있습니다.</p>
	                    </div>
	                </div>
	                </sec:authorize>
	                <sec:authorize access="hasAnyRole('ROLE_USER')">
	                <div class="tab_service_content">
	                    <div class="tab_register_inquire">
	                        <div class="div_register_email">
	                            <h2>답변 받을 이메일 주소</h2>
	                            <span>${memId }</span>
	                        </div>
	                        <div class="div_register_type">
	                            <h2>문의 유형</h2>
	                            <select class="select_register_type">
	                                <option class="pls_select" value="" disabled selected><span>문의 유형을 선택해주세요</span></option>
	                                <option value="option_register_type1"><span>서비스 문의</span></option>
	                                <option value="option_register_type2"><span>상품정보 문의</span></option>
	                                <option value="option_register_type3"><span>파트너쉽 문의</span></option>
	                            </select>
	                        </div>
	                        <div class="div_register_title">
	                            <h2>문의 제목</h2>
	                            <input class="input_register_title" placeholder="제목을 입력해주세요">
	                        </div>
	                        <div class="div_register_content">
	                            <h2>문의 내용</h2>
	                            <textarea class="textarea_register_content" maxlength="300" placeholder="내용을 입력해주세요"></textarea>
	                        </div>
	                        <div class="div_register_btn">
	                            <button class="btn_reset" type="reset"><span style="color:#aaaaaa">취소하기</span></button>
	                            <button class="btn_submit" type="submit"><span style="color:#ffffff">문의하기</span></button>
	                        </div>
	                    </div>
	                </div>
	                </sec:authorize>
	            </div>
	        </div> 
	    </section>
		<!-- bottom.jsp -->
		<c:import url="/WEB-INF/views/layout/footer.jsp" />
	</body>
</html>