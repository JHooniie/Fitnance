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
		<script src="<c:url value='/js/list_mortgage_loan.js' />"></script>
		
		<meta charset="UTF-8">
	</head>
	<body>
		<!-- top.jsp -->
		<c:import url="/WEB-INF/views/layout/top.jsp" />
		<!-- section.jsp -->
		<section id="section">
			<div class="div_background">
				<div class="div_background_wrap wrap">
		            <div class="div_background_title">
		                <span class="background_title_main">
		                    주택 담보<br>
		                    대출
		                </span>
		                <span class="background_title_sub">
		                    내게 맞는 주택담보대출 찾기
		                </span>
		            </div>
		            <div class="div_background_image">
		                <img src="/image/img_mortgage.png">
		            </div>
		        </div>
			</div>
	        <div class="div_list wrap">
	            <div class="panel_filter">
	                <div class="div_prdt_compare">
	                    <div class="btn_prdt_compare">
	                        상품 비교하기
	                    </div>
	                </div>
	                <div class="div_prdt_joinway">
	                    <div class="title_prdt_joinway">가입방법</div>
	                    <div class="option_prdt_joinway">
	                        <div class="btn_prdt_joinway1">영업점</div>
	                        <div class="btn_prdt_joinway2">인터넷</div>
	                        <div class="btn_prdt_joinway3">스마트폰</div>
	                        <div class="btn_prdt_joinway4">모집인</div>
	                    </div>
	                </div>
	                <div class="div_mrtg_type">
	                    <div class="title_mrtg_type">담보유형</div>
	                    <div class="option_mrtg_type">
	                        <div class="btn_mrtg_type1">아파트</div>
	                        <div class="btn_mrtg_type2">아파트 외</div>
	                    </div>
	                </div>
	                <div class="div_rpay_type">
	                    <div class="title_rpay_type">대출상환유형</div>
	                    <div class="option_rpay_type">
	                        <div class="btn_rpay_type1">원리금분할상환</div>
	                        <div class="btn_rpay_type2">원금분할상환</div>
	                        <div class="btn_rpay_type3">만기일시상환</div>
	                    </div>
	                </div>
	                <div class="div_lend_type">
	                    <div class="title_lend_type">대출금리유형</div>
	                    <div class="option_lend_type">
	                        <div class="btn_lend_type1">고정금리</div>
	                        <div class="btn_lend_type2">변동금리</div>
	                    </div>
	                </div>
	                <div class="div_reset_filter">
	                    <button class="btn_reset_filter">
	                        <!-- <img class="img_ic_reset" src="/image/arrow-rotate-right-solid.png"> -->
	                        <i class="fa-solid fa-rotate-right"></i>
	                        <span>필터 초기화</span>
	                    </button>
	                </div>
	            </div>
	            <div id="first_list_prdt" class="panel_list_prdt">
	            	
	                <form id="form_joinwawy" method="post" action="<c:url value='/list_mortgage_loan'/>">
	                <div class="div_search_list">
	                    <div class="div_list_result">
	                        <span>검색 결과 ${fn:length(list_home_loan) }개</span>
	                    </div>
	                    <div class="div_search_prdt">
	                        <input class="input_search_prdt" placeholder="키워드 검색">
	                        <img src="/image/magnifying-glass-solid.png">
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
	                                    <img src="<c:url value='/image/bank/${list.fin_co_no}.png'/>">
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
	            <div id="result_filter"></div>
	        </div>
	    </section>
		
		
		<!-- bottom.jsp -->
		<c:import url="/WEB-INF/views/layout/footer.jsp" />
	</body>
</html>