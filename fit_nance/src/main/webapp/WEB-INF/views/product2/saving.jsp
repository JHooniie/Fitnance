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
		<link rel="stylesheet" href="<c:url value='/css/saving.css'/>"/>
		<!-- js -->
		<script src="<c:url value='/js/saving.js' />"></script>
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
		                <li>돈이 불어나는 습관,<br>
		                적금 상품</li>
		                <li class="middle-sub-text">적금 관련 문구 적금 관련 문구</li>
		            </ul>
		        </div>
		        <div class="middle-image">
		            <img src="image/img_savings.png">
		        </div>
	        </div>
	        <div class="middel-bottom">
	            <div>
	                <div class="product-compare-box"><a href="<c:url value='saving_detail'/>">상품 비교하기</a></div>   
	                <div class="select-box">
	                    <div class="what-select" value="rsrv_type_nm">
	                        <div class="select-title" >예치방식</div>
	                        <div class="select-option select-option1" value="자유적립식">자유적립식</div>
	                        <div class="select-option select-option1" value="정액적립식">정액적립식</div>
	                    </div>
	
	                    <div class="what-select" value="join_member">
	                        <div class="select-title" >가입대상</div>
	                        <div class="select-option select-option1" value="개인">개인</div>
	                        <div class="select-option select-option1" value="기업">기업</div>
	                    </div>
	
	                    <div class="what-select" value="join_way">
	                        <div class="select-title">가입방법</div>
	                        <div class="select-option select-option1" value="영업점">영업점</div>
	                        <div class="select-option select-option1" value="인터넷">인터넷</div>
	                        <div class="select-option select-option1" value="스마트폰">스마트폰</div>
	                    </div>
	
	                    <div class="what-select" value="save_trm">
	                        <div class="select-title">가입기간</div>
	                        <div class="select-option select-option2" value="3">3개월</div>
	                        <div class="select-option select-option2" value="6">6개월</div>
	                        <div class="select-option select-option2" value="12">12개월</div>
	                        <div class="select-option select-option2" value="24">24개월</div>
	                        <div class="select-option select-option3" value="36">36개월 이상</div>
	                    </div>
	
	                    <div class="filter-reset"><i class="fa-solid fa-arrow-rotate-right"></i>  필터 초기화</div>
	                    
	                </div>
	            </div>
	            <div class="result-box">
	                <div class="search-line">
	                    <div class="box">검색 결과 ${fn:length(insList) }개</div>
	                    <div class="search-box"><input type="text" id="tourName" name="tourName" placeholder="키워드 검색"><i class="fa-solid fa-magnifying-glass"></i></div>
	                </div>
	                <div class="item-list">
	                	<c:forEach items="${insList }" var="list">
	                	<c:set var="index" value="${list.oIndex}"/>
	                	<% 
	           				int index= (int)pageContext.getAttribute("index");
	           			%>
	           			
	                    <div class="item-box-all">
	                        <div class="item-box">
	                            <div class="image-box">
	                            	<img src="<c:url value='/image/bank/${list.fin_co_no}.png'/>">
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
	                            <div class="plus-icon1"><i class="fa-solid fa-folder-plus"></i></div>
	                            <div class="plus-icon2"><i class="fa-solid fa-heart"></i></div>
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
	                                        <li>최대 (세전)</li>
	                                        <li><span>${list.intr_rate2 }</span>%</li>
	                                    </ul>
	                                </div>
	                            </div>
	                            <div class="view-detail"><a href="<c:url value='saving_detail?index=${index }'/>">자세히 보기</a></div>
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
	            
	            <div id="result-box-filter"></div>
	            <div id="result-box-filter2"></div>
	        </div>
        </div>
    </div>
		
		<!-- bottom.jsp -->
		<c:import url="/WEB-INF/views/layout/footer.jsp" />
	</body>
</html>