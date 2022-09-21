<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
	<head>
		<c:import url="/WEB-INF/views/layout/head.jsp" />
		<!-- custom -->
		<link rel="stylesheet" href="<c:url value='/css/prd_all.css'/>">
		<script src="<c:url value='/js/prd_all.js'/>"></script>
	</head>
	<body>
		<c:import url="/WEB-INF/views/layout/top.jsp" />
		<!-- section -->
	    <section>
	        <div class="box-prd-01 wrap">
	            <h1 class="title-prd-all">금융 상품<br>한눈에 보기</h1>
	            <span class="sub-prd-all">모든 은행 상품은 여기에 다- 있다!</span>
	            <img class="img-prd-all" src="<c:url value='/images/img_prd_all.png'/>" alt="">
	            <div class="box-prd-01-list">
	                <h3 class="title-prd-list">김낸스님에게만 추천해드려요!</h3>
	                <c:forEach var="insList" items="${insList}" begin="27" end="29">
	                	<div class="box-prd-list">
		                    <div class="lg-bank">
		                    	<img src="<c:url value='/images/bank/${insList.fin_co_no}.png'/>">
		                    </div>
		                    <span class="name-bank">${insList.kor_co_nm}</span>
		                    <span class="name-prd">${insList.fin_prdt_nm}</span>
		                    <span class="title-percent">1년 기준(세전)</span>
		                    <div class="box-percent">
		                        <span>연</span>
		                        <span>${insList.intr_rate2}</span><span>%</span>
		                    </div>
		                </div>
	                </c:forEach>
	            </div>
	        </div>
	    </section>
	    <section class="bg-gray">
	        <div class="box-prd-02 wrap">
	            <span class="sub-prd-list">쉿, 여기서만 보여드릴게요!</span>
	            <h3 class="title-prd-list">사회초년생에게 가장 핫한 상품</h3>
	            <div class="container-wrap-list">
	                <div class="wrap-list">
	                <c:forEach items="${pList }" var="pList">
	                    <div class="box-prd-list">
	                        <div class="box-bank-info">
	                            <div class="lg-bank">
	                            	<img src="<c:url value='/images/bank/${pList.fin_co_no}.png'/>">
	                            </div>
	                            <span class="name-bank">${pList.kor_co_nm}</span>
	                        </div>
	                        <span class="name-prd">${pList.fin_prdt_nm}</span>
	                        <div class="box-percent">
	                            <span>연</span>
	                            <span>${pList.intr_rate2}</span><span>%</span>
	                            <span>(세전)</span>
	                        </div>
	                    </div>
	                    </c:forEach>
	                    <!--<div class="box-prd-list">
	                        <div class="box-bank-info">
	                            <div class="lg-bank">
	                            	<img src="<c:url value='/images/bank/${insList[32].fin_co_no}.png'/>">
	                            </div>
	                            <span class="name-bank">${insList[32].kor_co_nm}</span>
	                        </div>                
	                        <span class="name-prd">${insList[32].fin_prdt_nm}</span>
	                        <div class="box-percent">
	                            <span>연</span>
	                            <span>${insList[32].intr_rate2}</span><span>%</span>
	                            <span>(세전)</span>
	                        </div>
	                    </div>
	                    <div class="box-prd-list">
	                        <div class="box-bank-info">
	                            <div class="lg-bank">
	                            	<img src="<c:url value='/images/bank/${insList[9].fin_co_no}.png'/>">
	                            </div>
	                            <span class="name-bank">${insList[9].kor_co_nm}</span>
	                        </div>                
	                        <span class="name-prd">${insList[9].fin_prdt_nm}</span>
	                        <div class="box-percent">
	                            <span>연</span>
	                            <span>${insList[9].intr_rate2}</span><span>%</span>
	                            <span>(세전)</span>
	                        </div>
	                    </div>
	                    <div class="box-prd-list">
	                        <div class="box-bank-info">
	                            <div class="lg-bank">
	                            	<img src="<c:url value='/images/bank/${insList[39].fin_co_no}.png'/>">
	                            </div>
	                            <span class="name-bank">${insList[39].kor_co_nm}</span>
	                        </div>                
	                        <span class="name-prd">${insList[39].fin_prdt_nm}</span>
	                        <div class="box-percent">
	                            <span>연</span>
	                            <span>${insList[39].intr_rate2}</span><span>%</span>
	                            <span>(세전)</span>
	                        </div>
	                    </div>-->
	                </div>
	            </div>
	        </div>
	    </section>
	    <section>
	        <div class="box-prd-03 wrap">
	            <span class="sub-prd-list">돈이 불어나는 습관 들이기</span>
	            <div class="wrap-title-btn">
	                <h3 class="title-prd-list">적금 들고 올바른 금융 습관 들여요!</h3>
	                <a class="btn-prd-all" href="<c:url value='/saving'/>">전체보기 <i class="fa-solid fa-angle-right"></i></a>
	            </div>            
	            <div class="wrap-list">
	            	<c:forEach var="insList" items="${insList}" begin="10" end="13">
	                	<div class="box-prd-list">
		                    <div class="box-bank-info">
		                        <div class="lg-bank">
		                        	<img src="<c:url value='/images/bank/${insList.fin_co_no}.png'/>">
		                        </div>
		                        <span class="name-bank">${insList.kor_co_nm}</span>
		                    </div>                
		                    <span class="name-prd">${insList.fin_prdt_nm}</span>
		                    <div class="box-percent">
		                        <!-- <div class="box-percent-01">
		                            <span>최대한도</span>
		                            <span>3백만원</span>
		                        </div> -->
		                        <div class="box-percent-02">
		                            <span>1년 기준(세전)</span>
		                            <span>연</span>
		                            <span>${insList.intr_rate2}</span><span>%</span>
		                        </div>
		                    </div>
		                </div>
	                </c:forEach>
	            </div>
	        </div>
	    </section>
	    <section class="bg-gray">
	        <div class="box-prd-04 wrap">
	            <span class="sub-prd-list">목돈을 모았으면 더 불려볼까요?</span>
	            <div class="wrap-title-btn">
	                <h3 class="title-prd-list">예금으로 목돈을 더 크게 불려봐요!</h3>
	                <a class="btn-prd-all" href="/deposit">전체보기 <i class="fa-solid fa-angle-right"></i></a>
	            </div>            
	            <div class="wrap-list">
	            	<c:forEach var="dpList" items="${dpList}" begin="10" end="13">
	                	<div class="box-prd-list">
		                    <div class="box-bank-info">
		                        <div class="lg-bank">
		                        	<img src="<c:url value='/images/bank/${dpList.fin_co_no}.png'/>">
		                        </div>
		                        <span class="name-bank">${dpList.kor_co_nm}</span>
		                    </div>                
		                    <span class="name-prd">${dpList.fin_prdt_nm}</span>
		                    <div class="box-percent">
		                        <!-- <div class="box-percent-01">
		                            <span>최대한도</span>
		                            <span>3백만원</span>
		                        </div> -->
		                        <div class="box-percent-02">
		                            <span>1년 기준(세전)</span>
		                            <span>연</span>
		                            <span>${dpList.intr_rate2}</span><span>%</span>
		                        </div>
		                    </div>
		                </div>
	                </c:forEach>
	            </div>
	        </div>
	    </section>
	    <section>
	        <div class="box-prd-05 wrap">
	            <span class="sub-prd-list">비상금이 필요할 때</span>
	            <div class="wrap-title-btn">
	                <h3 class="title-prd-list">그치만 남용은 안돼요!</h3>
	                <a class="btn-prd-all" href="/list_credit_loan">전체보기 <i class="fa-solid fa-angle-right"></i></a>
	            </div>            
	            <div class="wrap-list">
	            	<c:forEach var="clList" items="${clList}" begin="10" end="13">
	                	<div class="box-prd-list">
		                    <div class="box-bank-info">
		                        <div class="lg-bank">
		                        	<img src="<c:url value='/images/bank/${clList.fin_co_no}.png'/>">
		                        </div>
		                        <div>
		                            <span class="name-bank">${clList.kor_co_nm}</span>
		                            <span class="name-prd">${clList.fin_prdt_nm}</span>
		                        </div>                        
		                    </div>
		                    <div class="box-percent">
		                        <span>연</span>
		                        <span>${clList.crdt_grad_avg}</span><span>%</span>
		                    </div>
		                </div>
	                </c:forEach>
                </div>
	        </div>
	    </section>
	    <!-- end section -->
	    <c:import url="/WEB-INF/views/layout/footer.jsp" />
	</body>
</html>