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
		<link rel="stylesheet" href="<c:url value='/css/deposit.css'/>"/>
		<!-- js -->
		<script src="<c:url value='/js/list_deposit.js' />"></script>
	</head>
	<body>
		<!-- top.jsp -->
		<c:import url="/WEB-INF/views/layout/top.jsp" />
		<div class="back"></div>
        <div class="wrap">
        <div class="m">
            <div class="middle-text">
                <ul>
                    <li>예금<br>
                    관련 문구</li>
                    <li class="middle-sub-text">정기예금 관련 문구 정기예금 관련 문구</li>
                </ul>
            </div>
            <div class="middle-image">
                <img src="/images/img_deposit.png">
            </div>
        </div>
        <div class="middel-bottom">
            <div>
                <div class="product-compare-box"><a href="<c:url value='/compareDeposit'/>">상품 비교하기</a></div>   
                <div class="select-box">
                    <div class="what-select">
	                        <div class="select-title">가입대상</div>
	                        <div class="select-option select-option-join_member1">개인</div>
	                        <div class="select-option select-option-join_member2">기업</div>
	                    </div>
	
	                    <div class="what-select">
	                        <div class="select-title">가입방법</div>
	                        <div class="select-option select-option-join-way1">영업점</div>
	                        <div class="select-option select-option-join-way2">인터넷</div>
	                        <div class="select-option select-option-join-way3">스마트폰</div>
	                    </div>
	
	                    <div class="what-select">
	                        <div class="select-title">가입기간</div>
	                        <div class="select-option-save-trm select-option-save_trm1">3개월</div>
	                        <div class="select-option-save-trm select-option-save_trm2">6개월</div>
	                        <div class="select-option-save-trm select-option-save_trm3">12개월</div>
	                        <div class="select-option-save-trm select-option-save_trm4">24개월</div>
	                        <div class="select-option-save-trm select-option-save_trm5">36개월 이상</div>
	                      </div>

                    <div class="filter-reset"><i class="fa-solid fa-arrow-rotate-right"></i>  필터 초기화</div>
                    
                </div>
            </div>
            <div class="result-box">
                <div class="search-line">
                    <div class="box">검색 결과 ${fn:length(dpList) }개</div>
                    <div class="search-box"><input type="text" id="tourName" name="tourName" placeholder="키워드 검색"><div class="search"><i class="fa-solid fa-magnifying-glass"></i></div></div>
                </div>
                <div class="item-list">
                <c:forEach items="${dpList }" var="list">
                    <div class="item-box-all">
                        <div class="item-box">
                            <div class="image-box">
                            	<img src="<c:url value='/images/bank/${list.fin_co_no}.png'/>">
                            </div>
                            <div class="text-box">
                                <div class="bank-name">${list.kor_co_nm }</div>
                                <div class="item-line">
                                    <div class="item-name">${list.fin_prdt_nm }
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
                                        <li>1년기준 (세전)</li>
                                        <li><span>${list.intr_rate }</span>%</li>
                                    </ul>
                                </div>
                                <div class="percent2">
                                    <ul>
                                        <li>최소</li>
                                        <li><span>${list.save_trm }</span>개월부터</li>
                                    </ul>
                                </div>
                            </div>
                            <div class="view-detail"><a href="<c:url value='/detailDeposit/${list.oIndex}'/>">자세히 보기</a></div>
                        </div>
                    </div>
                    </c:forEach>                    
                    <div class="page-list">
                        <div class="page-icon"><i class="fa-solid fa-angle-left"></i></div>
                        <div class="page-num">
                            <div class="page-num1">1</div>
                            <div class="page-num2">2</div>
                            <div class="page-num3">3</div>
                        </div>
                        <div class="page-icon"><i class="fa-solid fa-angle-right"></i></div>
                    </div>
                </div>
            </div>
        </div>
    </div>
		
		
		<!-- bottom.jsp -->
		<c:import url="/WEB-INF/views/layout/footer.jsp" />
	</body>
</html>