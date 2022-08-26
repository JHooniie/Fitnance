<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<!DOCTYPE html>
<html>
	<head>
		<!-- head -->
		<c:import url="/WEB-INF/views/layout/head.jsp" />
		<!-- css -->
		<link rel="stylesheet" href="<c:url value='/css/cc_inquire.css'/>"/>
		<!-- js -->
		<script src="<c:url value='/js/cc_inquire.js'/>"></script>
		
		<meta charset="UTF-8">
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
	                    <div class="nav_list_inquire"><span>조회하기</span></div>
	                </div>
	                <div class="div_login_notice">
	                    <div class="title_login_notice">
	                        <p>고객님의 금융관련 상담 및 문의사항에 대한</p>
	                        <p>해결을 위해 최선을 다하겠습니다.</p>
	                    </div>
	                    <div class="image_login_notice">
	                        <img src="/image/img_power-off-solid.png">
	                    </div>
	                    <div class="link_login_notice">
	                        <a href="<c:url value='/login'/>">로그인<img src="/image/chevron-right-solid.png"></a>
	                    </div>
	                    <div class="text_login_notice">
	                        <p>로그인 시 개인정보 입력 절차 없이 이용할 수 있으며</p>
	                        <p>과거 상담 내역도 확인할 수 있습니다.</p>
	                    </div>
	                </div>
	                <div class="tab_service_content">
	                    <div class="tab_register_inquire">
	                        <div class="div_register_email">
	                            <h2>답변 받을 이메일 주소</h2>
	                            <span>asdf****@gmail.com</span>
	                        </div>
	                        <div class="div_register_type">
	                            <h2>문의 유형</h2>
	                            <select class="select_register_type">
	                                <option class="pls_select" value="" disabled selected><span>문의 유형을 선택해주세요</span></option>
	                                <option value="option_register_type1"><span>문의 유형 1</span></option>
	                                <option value="option_register_type1"><span>문의 유형 2</span></option>
	                                <option value="option_register_type1"><span>문의 유형 3</span></option>
	                            </select>
	                        </div>
	                        <div class="div_register_title">
	                            <h2>문의 제목</h2>
	                            <input class="input_register_title" placeholder="제목을 입력해주세요">
	                        </div>
	                        <div class="div_register_content">
	                            <h2>문의 내용</h2>
	                            <textarea class="textarea_register_content" placeholder="내용을 입력해주세요"></textarea>
	                        </div>
	                        <div class="div_register_btn">
	                            <button class="btn_reset" type="reset"><span style="color:#aaaaaa">취소하기</span></button>
	                            <button class="btn_submit" type="submit"><span style="color:#ffffff">문의하기</span></button>
	                        </div>
	                    </div>
	                    <div class="tab_list_inquire">
	                        <div class="div_list_inquire">
	                            <div class="top_list_inquire">
	                                <div class="title_list_inquire">
	                                    문의 제목
	                                </div>
	                                <div class="date_list_inquire">
	                                    문의 일자
	                                </div>
	                            </div>
	                            <!-- 문의 리스트 시작 -->
	                            <div class="content_list_inquire">
	                                <div class="title_list_inquire">
	                                    이메일 인증 메일이 오지 않았어요
	                                </div>
	                                <div class="date_list_inquire">
	                                    2022.6.21
	                                </div>
	                            </div>
	                            <!-- 문의 리스트 끝 -->
	                            <!-- 문의 리스트 시작 -->
	                            <div class="content_list_inquire">
	                                <div class="title_list_inquire">
	                                    이메일 인증 메일이 오지 않았어요
	                                </div>
	                                <div class="date_list_inquire">
	                                    2022.6.21
	                                </div>
	                            </div>
	                            <!-- 문의 리스트 끝 -->
	                            <!-- 문의 리스트 시작 -->
	                            <div class="content_list_inquire">
	                                <div class="title_list_inquire">
	                                    이메일 인증 메일이 오지 않았어요
	                                </div>
	                                <div class="date_list_inquire">
	                                    2022.6.21
	                                </div>
	                            </div>
	                            <!-- 문의 리스트 끝 -->
	                        </div>
	                    </div>
	                    <div class="div_detail_inquire">
	                        <div class="top_detail_inquire">
	                            <div class="title_detail_inquire">
	                                이메일 인증 메일이 오지 않았어요
	                            </div>
	                            <div class="date_detail_inquire">
	                                2022.6.21
	                            </div>
	                        </div>
	                        <div class="content_detail_inquire">
	                            <div class="question_detail_inquire">
	                                <p>안녕하세요.</p>
	                                <p>이메일 인증 메일이 오지 않았어요.</p>
	                                <p>더 노력하는 회원이 되겠습니다.</p>
	                                <p>감사합니다.</p>
	                            </div>
	                            <div class="answer_detail_inquire">
	                                <p class="answer_detail_text">답변</p>
	                                <p>안녕하세요.</p>
	                                <p>이메일 인증 메일이 오지 않았어요?</p>
	                                <p>고객님들께 불편을 드려 죄송하다는 말씀 올리며, 같은 문제가 재발하지 않도록 개선하겠습니다.</p>
	                                <p>더 노력하는 핏낸스가 되겠습니다.</p>
	                                <p>감사합니다.</p>
	                            </div>
	                        </div>
	                        <button class="btn_list_inquire" type="button"><span>목록으로 돌아가기</span></button>
	                    </div>
	                </div>
	            </div>
	        </div>  
	    </section>
	    
		<!-- bottom.jsp -->
		<c:import url="/WEB-INF/views/layout/footer.jsp" />
	</body>
</html>