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
		<!-- head -->
		<c:import url="/WEB-INF/views/layout/head.jsp" />
		<!-- css -->
		<link rel="stylesheet" href="<c:url value='/css/index.css' />"/>
		<!-- js -->
		<script src="<c:url value='/js/index.js' />"></script>
		<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/animate.css/4.1.1/animate.min.css"/>
	</head>
	<body>
		<c:import url="/WEB-INF/views/layout/top.jsp" />
		<section>
			<div class="background_index">
	            <div class="index_main">
	                <div class="index_title_main">
	                    <h1 class="animate__animated animate__fadeInUp">
	                        나에게 맞는 금융 상품<br>
	                        한 눈에 쏙
	                    </h1>
	                    <a class="btn_recom animate__animated animate__fadeInUp" href="<c:url value='/prd_recom'/>">상품 추천 받으러 가기</a>
	                </div>
	                <div class="div_scroll animate__animated animate__slideInDown">
	                    <i class="fa-solid fa-chevron-down"></i>
	                </div>
	                <div class="div_index_img1" >
	                    <div class="img_index_main">
	                    	<video autoplay loop id="video1">
	                    		<source src="<c:url value='/video/video_main_01.mp4' />" type="video/mp4" />
	                    	</video>
	                    </div>
	                </div>
	            </div>
	            <div class="index_sub1">
	                <div class="div_index_img2">
						<video autoplay loop id="video2">
                    		<source src="<c:url value='/video/video_main_02.mp4' />" type="video/mp4" />
                    	</video>
	                </div>
	                <div class="index_title_sub">
	                    <div class="title_sub_maintitle">
	                        <h2>각자 원하는 대로<br>
	                            맞춤 추천 상품</h2>
	                    </div>
	                    <div class="title_sub_subtitle">
                            <span>
                            	단 한 번만 검색해도<br>
                            	원하는 맞춤 상품<br>
                            	추천해 드릴게요!
                           	</span>
	                    </div>
	                </div>
	            </div>
	            <div class="index_sub2">
	                <div class="index_title_sub">
	                    <div class="title_sub_maintitle">
	                        <h2>
	                            어느 은행이든,<br>
	                            한 눈에 볼 수 있게
	                        </h2>
	                    </div>
	                    <div class="title_sub_subtitle">
                        	<span>
                        		여러 은행의 예적금, 수많은 대출<br>
	                            귀찮게 찾아다닐 필요 없이<br>
	                            한 눈에 보여드릴게요
                            </span>
	                    </div>
	                </div>
	                <div class="div_index_img2">
	                    <video autoplay loop id="video3">
                    		<source src="<c:url value='/video/video_main_03.mp4' />" type="video/mp4" />
                    	</video>
	                </div>
	            </div>
	            <div class="index_sub3">
	                <div class="index_title_sub">
	                    <div class="title_sub_maintitle">
	                        <h2>
	                           	이제 금융 상품은<br>
	                            여기, fit:nance에서<br>
	                            확인하세요!
	                        </h2>
	                    </div>
	                </div>
	            </div>
	        </div>
		</section>
		<c:import url="/WEB-INF/views/layout/footer.jsp" />
	</body>
</html>