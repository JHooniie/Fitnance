<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<c:set var="memId" value="${principal.username}" />
<!DOCTYPE html>
<html>
	<head>
		<c:import url="/WEB-INF/views/layout/head.jsp" />
		<!-- custom -->
		<link rel="stylesheet" href="<c:url value='/css/prd_recom_process.css'/>">
		<script src="<c:url value='/js/prd_recom_process.js'/>"></script>
	</head>
	<body>
		<c:import url="/WEB-INF/views/layout/top.jsp" />
		<section class="wrap">
	        <!-- process 1 -->
	        <div class="box-prd-recom box-prd-recom-01">
	            <div class="title-prd-recom">
	                <h3>
	                    ${principal.name}님!<br>
	                    더 <span>핏</span>:하게<br>
	                    추천해 드릴게요!
	                </h3>
	                <img src="<c:url value='/image/img_prd_recom_pc_1.png'/>" alt="">
	            </div>
	            <button class="btn-prd-recom btn-prd-recom-01" type="button">네! 좋아요!</button>
	        </div>
	        <!-- process 1 end -->
	        <!-- process 2 -->
	        <div class="box-prd-recom box-prd-recom-02">
	            <div class="bar-progress bar-progress-01"></div>
	            <div class="title-prd-recom title-prd-recom-02">
	                <h3>
	                    현재 은빈님은 <b>목돈을 모으고 있나요?</b>
	                </h3>
	            </div>
	            <!-- 성별이 여자인 경우 -->
	            <div class="box-pc-01 box-pc-01-fm">
	                <div class="box-pc-y">
	                    <span>네!<br>모으고 있어요!</span>
	                    <img src="<c:url value='/image/img_prd_recom_pc_2.png'/>" alt="">
	                </div>
	                <div class="box-pc-n">
	                    <span>아니요!<br>이제 모으고 싶어요!</span>
	                    <img src="<c:url value='/image/img_prd_recom_pc_3.png'/>" alt="">
	                </div>
	            </div>
	            <!-- 성별이 남자인 경우 -->
	            <div class="box-pc-01 box-pc-01-m">
	                <div class="box-pc-y">
	                    <span>네!<br>모으고 있어요!</span>
	                    <img src="<c:url value='/image/img_prd_recom_pc_4.png'/>" alt="">
	                </div>
	                <div class="box-pc-n">
	                    <span>아니요!<br>이제 모으고 싶어요!</span>
	                    <img src="<c:url value='/image/img_prd_recom_pc_5.png'/>" alt="">
	                </div>
	            </div>
	            <button class="btn-prd-recom btn-prd-recom-02" type="button" disabled=>다음</button>
	        </div>
	        <!-- process 2 end -->
	        <!-- process 3 -->
	        <div class="box-prd-recom box-prd-recom-03">
	            <div class="bar-progress bar-progress-02"></div>
	            <div class="title-prd-recom title-prd-recom-03">
	                <h3>
	                    <b>어떤 방법</b>으로 모으고 있나요?
	                </h3>
	            </div>
	            <div class="box-pc-02">
	                <div class="box-pc-y">
	                    <span>예/적금을<br>이용하고 있어요!</span>
	                    <img src="<c:url value='/image/img_prd_recom_pc_6.png'/>" alt="">
	                </div>
	                <div class="box-pc-n">
	                    <span>주식/펀드를<br>이용하고 있어요!</span>
	                    <img src="<c:url value='/image/img_prd_recom_pc_7.png'/>" alt="">
	                </div>
	            </div>
	            <button class="btn-prd-recom btn-prd-recom-03" type="button" disabled>다음</button>
	        </div>
	        <!-- process 3 end -->
	        <!-- process 4 -->
	        <div class="box-prd-recom box-prd-recom-04">
	            <div class="bar-progress bar-progress-03"></div>
	            <div class="title-prd-recom title-prd-recom-04">
	                <h3>
	                    <b>현재 일</b>을 하고 있나요?
	                </h3>
	            </div>
	            <div class="box-pc-03">
	                <div class="box-pc-y">
	                    <span>네!<br>일을 하고 있어요!</span>
	                </div>
	                <div class="box-pc-n">
	                    <span>아니요!<br>일을 하고 있지 않아요!</span>
	                </div>
	            </div>
	            <button class="btn-prd-recom btn-prd-recom-04" type="button" disabled>완료!</button>
	        </div>
	        <!-- process 4 end -->
	        <!-- process 5 -->
	        <div class="box-prd-recom box-prd-recom-05">
	            <img src="<c:url value='/image/img_prd_recom_pc_8.png'/>" alt="">
	            <div class="title-prd-recom title-prd-recom-05">
	                <h3>가입한 이메일로 보내드렸어요!</h3>
	                <span>이메일로 전송된 리포트에서 딱 맞는 예/적금을 확인해보세요</span>
	            </div>
	            <button class="btn-prd-recom btn-prd-recom-05" type="button">확인</button>
	        </div>
	        <!-- process 5 end -->
	    </section>
	    <c:import url="/WEB-INF/views/layout/footer.jsp" />
	</body>
</html>