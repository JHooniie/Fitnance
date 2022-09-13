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
		<link rel="stylesheet" href="<c:url value='/css/pension.css'/>"/>
		<!-- js -->
		<script src="<c:url value='/js/list_pension.js' />"></script>
	</head>
	<body>
		<!-- top.jsp -->
		<c:import url="/WEB-INF/views/layout/top.jsp" />
		
		<div class="middle">
        <div class="back">
            </div>
        <div class="wrap">
        <div class="m">
            <div class="middle-text">
                <ul>
                    <li>연금<br>
                    관련 문구</li>
                    <li class="middle-sub-text">연금 관련 문구 연금 관련 문구</li>
                </ul>
            </div>
            <div class="middle-image">
                <img src="/images/img_pension.png">
            </div>
        </div>
        <div class="middel-bottom">
            <div>
                <div class="product-compare-box"><a href="<c:url value='/comparePension'/>">상품 비교하기</a></div>   
                <div class="select-box">
	                <div class="what-select">
	                    <div class="select-title">연금수령기간</div>
	                    <div class="select-option select-option-recp-trm1">10년 확정</div>
	                    <div class="select-option select-option-recp-trm2">20년 확정</div>
					</div>
					
					<div class="what-select">
	                    <div class="select-title">월 납입액</div>
	                    <div class="select-option-pay_atm select-option-pay_atm1">10만원</div>
	                    <div class="select-option-pay_atm select-option-pay_atm2">20만원</div>
	                    <div class="select-option-pay_atm select-option-pay_atm3">30만원</div>
					</div>
					
					<div class="what-select">
	                    <div class="select-title">연금개시연령</div>
	                    <div class="select-option select-option-strt-age1">60세</div>
	                    <div class="select-option select-option-strt-age2">65세</div>
					</div>
				
                    <div class="filter-reset"><i class="fa-solid fa-arrow-rotate-right"></i>  필터 초기화</div>
                    
                </div>
            </div>
            <div class="result-box">
                <div class="search-line">
                    <div class="box">검색 결과 ${fn:length(psList) }개</div>
                    <div class="search-box"><input type="text" id="tourName" name="tourName" placeholder="키워드 검색"><div class="search"><i class="fa-solid fa-magnifying-glass"></i></div></div>
                </div>
                <div class="item-list">
                <c:forEach items="${psList }" var="list">
                    <div class="item-box-all">
                        <div class="item-box">
                            <div class="image-box">
                            	<img src="<c:url value='/images/bank/${list.fin_co_no}.png'/>">
                            </div>
                            <div class="text-box">
                                <div class="bank-name">${list.kor_co_nm }</div>
                                <div class="item-line">
                                    <div class="item-name"><div class="item-name-prdt">${list.fin_prdt_nm }</div>
                                    <c:forEach items="${list.join_way }" var="jw">
	                                    	<span>${jw}</span>
	                                    </c:forEach></div>
                                </div>
                            </div>
                            <div class="plus-icon plus-icon1" id="${list.oIndex}"><i class="fa-solid fa-folder-plus"></i></div>
		                            <c:if test="${empty sessionScope.sid}">
										<div class="plus-icon plus-icon2 no-login" id="${list.oIndex}"><i class="fa-solid fa-heart"></i></div>
									</c:if>

									<c:if test="${not empty sessionScope.sid}">
										<div class="plus-icon plus-icon2 yes-login" id="${list.oIndex}"><i class="fa-solid fa-heart"></i></div>
					          		</c:if>
                        </div>
                   
                        <div class="item-box2">
                            <div class="percent-box">
                                <div class="percent1">
                                    <ul>
                                        <li>연평균 수익률</li>
                                        <li><span>${list.avg_prft_rate }</span>%</li>
                                    </ul>
                                </div>
                            </div>
                            <div class="view-detail"><a href="<c:url value='/detailPension/${list.oIndex}'/>">자세히 보기</a></div>
                        </div>
                    </div>
                    </c:forEach>
                    
                    <div class="page-list">
                        <div class="page-icon"><i class="fa-solid fa-angle-left"></i></div>
                        <div class="page-num">
                            <div class="page-num1">1</div>
                        </div>
                        <div class="page-icon"><i class="fa-solid fa-angle-right"></i></div>
                    </div>
                </div>
            </div>
       	 </div>
        </div>
    </div>
		
		<!-- bottom.jsp -->
		<c:import url="/WEB-INF/views/layout/footer.jsp" />
	</body>
</html>