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
		<link rel="stylesheet" href="<c:url value='/css/list_mortgage_loan.css' />"/>
		<!-- js -->
		<meta charset="UTF-8">
	</head>
	<body>
	            <div id="filter_list_prdt" class="panel_list_prdt">
	            	
	                <form id="form_joinwawy" method="post" action="<c:url value='/list_mortgage_loan'/>">
	                <div class="div_search_list">
	                    <div class="div_list_result">
	                        <span>검색 결과 ${fn:length(list_home_loan) }개</span>
	                    </div>
	                    <div class="div_search_prdt">
	                        <input class="input_search_prdt" placeholder="키워드 검색">
	                        <img class="img_search_prdt" src="/image/magnifying-glass-solid.png">
	                    </div>
	                </div>
	                </form>
	                
	                <div class="div_list_prdt">
	                    <div class="prdt_result_search prdt">
	                    <form id="form_prdt" method="post" action="<c:url value='/view_prdt_detail'/>">
	                    	<input type="hidden" id="input_prdt_cd" name="input_prdt_cd" class="input_prdt_cd" type="text">
	                        <!-- 검색 결과 상품 - 시작 -->
	                        
	                        <c:forEach items="${list_home_loan }" var="list" varStatus="status">
	                        <%-- <c:set var="dindex" value="${status.current }"/> --%>
	                        <div class="div_prdt">
	                            <div class="div_prdt_info">
	                                <div class="div_ic_co">
	                                    <!-- 각 은행 로고 image -->
	                                </div>
	                                <div class="div_prdt_base">
	                                    <div class="top_prdt_info">
	                                        <div class="div_nm_co">
	                                            <span class="prdt_nm_co">
	                                                <c:out value="${list.kor_co_nm}"/>
	                                            </span>
	                                        </div>
	                                        <div class="div_nm_prdt">
	                                            <span class="prdt_nm_loan">
	                                                ${list.fin_prdt_nm }
	                                            </span>
	                                            <div class="div_joinway">
	                                            	<c:forTokens var="joinway" items="${list.join_way }" delims=",">
	                                                <div class="div_joinway_block">
	                                                    <span>${joinway }</span>
	                                                </div>
	                                                </c:forTokens>
	                                            </div>
	                                        </div>
	                                    </div>
	                                    <div class="bot_prdt_info">
	                                        <!-- <div class="div_lend_prdt"> -->
	                                            <div class="div_lend_rate">
	                                                <span class="lend_rate_title">
	                                                    최저 금리
	                                                </span>
	                                                <span class="lend_rate_prdt">
	                                                    ${list.lend_rate_min }<span>%</span>
	                                                </span>
	                                            </div>
	                                            <div class="div_loan_lmt">
	                                                <span class="loan_lmt_title">
	                                                    최대 한도
	                                                </span>
	                                                <span class="loan_lmt_prdt">
	                                                    상품 설명 참조
	                                                </span>
	                                            </div>
	                                        <!-- </div> -->
	                                    </div>
	                                </div>
	                            </div>
	                            <div class="div_btn_prdt">
	                                <div class="div_btn_add">
	                                    <div class="btn_add_compare">
	                                        <img class="img_ic_compare" src="/image/folder-plus-solid.png">
	                                    </div>
	                                    <div class="btn_add_favorite">
	                                        <img class="img_ic_favorite" src="/image/heart-solid.png">
	                                    </div>
	                                </div>
	                                <button class="btn_prdt_info">
	                                    자세히 보기
	                                    <span style="display:none" id="prdt_cd" class="prdt_cd">${list.fin_prdt_cd }</span>
	                                </button>
	                            </div>
	                        </div>
	                        </c:forEach>
	                        </form>
	                        <!-- 검색 결과 상품 - 끝 -->
	                        
	                        
	                    </div>
	                    <div class="page_prdt_list">
	                        <div class="div_page_prev">
	                            <img src="/image/chevron-left-solid.png">
	                        </div>
	                        <div class="div_page_num">
	                            <div class="page_num_clicked">1</div>
	                            <div class="page_num">2</div>
	                            <div class="page_num">3</div>
	                            <div class="page_num">4</div>
	                        </div>
	                        <div class="div_page_next">
	                            <img src="/image/chevron-right-solid.png">
	                        </div>
	                    </div>
	                </div>
	            </div>
	</body>
</html>