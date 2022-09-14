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
		<script src="<c:url value='/js/inquire_detail.js'/>"></script>
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
	                    <div class="nav_register_inquire" onClick="location.href='/cc_inquire'"><span>문의하기</span></div>
	                    <div class="nav_list_inquire" onClick="location.href='/inquire_list'"><span>조회하기</span></div>
	                </div>
	                <div class="div_login_notice">
	                    <div class="title_login_notice">
	                        <p>고객님의 금융관련 상담 및 문의사항에 대한</p>
	                        <p>해결을 위해 최선을 다하겠습니다.</p>
	                    </div>
	                    <div class="image_login_notice">
	                        <i class="fa-solid fa-power-off"></i>
	                    </div>
	                    <div class="link_login_notice">
	                        <a href="<c:url value='/login'/>">로그인<i class="fa-solid fa-chevron-right"></i></a>
	                    </div>
	                    <div class="text_login_notice">
	                        <p>로그인 시 개인정보 입력 절차 없이 이용할 수 있으며</p>
	                        <p>과거 상담 내역도 확인할 수 있습니다.</p>
	                    </div>
	                </div>
	                <div class="tab_service_content">
	                    <div class="tab_list_inquire">
	                    <div id="div_detail_inquire" class="div_detail_inquire">
	                       <div class="top_detail_inquire">
						       <div class="title_detail_inquire">
						           ${qnaQ.qTitle }
						       </div>
						       <div class="date_detail_inquire">
						           ${qnaQ.qDate }
						       </div>
						   </div>
						   <div class="content_detail_inquire">
						       <div class="question_detail_inquire">
						           ${qnaQ.qContent }
						       </div>
						       <div class="answer_detail_inquire">
						           <p class="answer_detail_text">답변</p>
						           ${qnaA.aContent }
						       </div>
						   </div>
						   <button class="btn_list_inquire" type="button"><span>목록으로 돌아가기</span></button>
	                    </div>
	                </div>
	            </div>
	        </div>  
	        </div>
	    </section>
	    
		<!-- bottom.jsp -->
		<c:import url="/WEB-INF/views/layout/footer.jsp" />
	</body>
</html>