<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<sec:authorize access="isAuthenticated()">
    <sec:authentication property="principal" var="principal" />
</sec:authorize>
<!DOCTYPE html>
<html>
	<head>
		<c:import url="/WEB-INF/views/layout/head.jsp" />
		<!-- custom -->
		<link rel="stylesheet" href="<c:url value='/css/prd_recom_result.css'/>">
		<script src="<c:url value='/js/prd_recom_result.js'/>"></script>
	</head>
	<body>
		<c:import url="/WEB-INF/views/layout/top.jsp" />
		<section class="prd-recom-top">
			<div class="title-recom-top wrap">
				<c:choose>
            		<c:when test="${empty principal.name}">
            			<h1>핏낸스님에게 딱 맞는</h1>
            		</c:when>
            		<c:otherwise>
            			<h1>${fn:substring(principal.name,1,3)}님에게 딱 맞는</h1>
            		</c:otherwise>
            	</c:choose>
				<h1>핏:낸스 추천 TOP3</h1>
				<img src="<c:url value='/images/img_prd_recom_pc_9.png'/>">
			</div>
			<!-- 상품 리스트 시작  -->
			<div class="wrap-prd-list wrap">
				<div class="box-prd-list">
		        	<span class="exp-prd">캐릭터와 함께 즐거운 26주간의 도전!</span>
		        	<div class="box-prd">
		        		<div class="lg-bank">
		        			<img src="<c:url value='/images/bank/0015130.png'/>">
		        		</div>
		        		<span class="name-bank">주식회사 카카오뱅크</span>
		        		<span class="name-prd">카카오뱅크 26주적금</span>
	                    <div class="box-percent">
	                        <div class="box-percent-01">
	                            <span>기본 금리</span>
	                            <span>연</span>
	                            <span>3.0</span><span>%</span>
	                        </div>
	                        <div class="box-percent-02">
	                            <span>우대 금리</span>
	                            <span>연</span>
	                            <span>3.0</span><span>%</span>
	                        </div>
	                    </div>
	                    <button type="button" class="btn-prd-detail">자세히 보기</button>    		
		        	</div>
		        </div>
		        <div class="box-prd-list">
		        	<span class="exp-prd">캐릭터와 함께 즐거운 26주간의 도전!</span>
		        	<div class="box-prd">
		        		<div class="lg-bank">
		        			<img src="<c:url value='/images/bank/0015130.png'/>">
		        		</div>
		        		<span class="name-bank">주식회사 카카오뱅크</span>
		        		<span class="name-prd">카카오뱅크 26주적금</span>
	                    <div class="box-percent">
	                        <div class="box-percent-01">
	                            <span>기본 금리</span>
	                            <span>연</span>
	                            <span>3.0</span><span>%</span>
	                        </div>
	                        <div class="box-percent-02">
	                            <span>우대 금리</span>
	                            <span>연</span>
	                            <span>3.0</span><span>%</span>
	                        </div>
	                    </div>
	                    <button type="button" class="btn-prd-detail">자세히 보기</button>    		
		        	</div>
		        </div>
		        <div class="box-prd-list">
		        	<span class="exp-prd">캐릭터와 함께 즐거운 26주간의 도전!</span>
		        	<div class="box-prd">
		        		<div class="lg-bank">
		        			<img src="<c:url value='/images/bank/0015130.png'/>">
		        		</div>
		        		<span class="name-bank">주식회사 카카오뱅크</span>
		        		<span class="name-prd">카카오뱅크 26주적금</span>
	                    <div class="box-percent">
	                        <div class="box-percent-01">
	                            <span>기본 금리</span>
	                            <span>연</span>
	                            <span>3.0</span><span>%</span>
	                        </div>
	                        <div class="box-percent-02">
	                            <span>우대 금리</span>
	                            <span>연</span>
	                            <span>3.0</span><span>%</span>
	                        </div>
	                    </div>
	                    <button type="button" class="btn-prd-detail">자세히 보기</button>    		
		        	</div>
		        </div>
			</div>
	    </section>
	    <section class="prd-recom-content">
	    	<c:choose>
           		<c:when test="${empty principal.name}">
           			<div class="wrap-email-send">
			    		<span>로그인하고 추천 상품 받아보기</span>
			    		<button type="button">로그인하러 가기</button>
			    	</div>
           		</c:when>
           		<c:otherwise>
           			<div class="wrap-email-send">
			    		<span>추천 상품을 이메일로 받고 싶어요!</span>
			    		<button type="button">이메일로 리포트 전송하기</button>
			    	</div>
           		</c:otherwise>
           	</c:choose>
	    	<div class="wrap-tip">
	    		<span>잠깐!</span>
	    		<span>예/적금을 생각하고 있다면 유용한 금융 꿀팁 읽어보는 건 어때요?</span>
	    		<div id="slideShow">
	    			<ul class="img-slides">
				      <li><img src="<c:url value='/images/contents/contents1/001.jpg'/>" alt=""></li>
				      <li><img src="<c:url value='/images/contents/contents1/002.jpg'/>" alt=""></li>
				      <li><img src="<c:url value='/images/contents/contents1/003.jpg'/>" alt=""></li>
				      <li><img src="<c:url value='/images/contents/contents1/004.jpg'/>" alt=""></li>
				      <li><img src="<c:url value='/images/contents/contents1/005.jpg'/>" alt=""></li>
				      <li><img src="<c:url value='/images/contents/contents1/006.jpg'/>" alt=""></li>
				      <li><img src="<c:url value='/images/contents/contents1/007.jpg'/>" alt=""></li>
				    </ul>
				    <p class="img-controller">
				      <span class="prev"><i class="fa-solid fa-chevron-left"></i></span>  
				      <span class="next"><i class="fa-solid fa-chevron-right"></i></span>
				    </p>
	    		</div>
	    	</div>
	    </section>
	    <c:import url="/WEB-INF/views/layout/footer.jsp" />
</html>