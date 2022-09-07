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
		<link rel="stylesheet" href="<c:url value='/css/detail_mortgage_loan.css' />"/>
		<!-- js -->
		<script src="<c:url value='/js/detail_mortgage_loan.js' />"></script>
		
		<meta charset="UTF-8">
	</head>
	<body>
		<!-- top.jsp -->
		<c:import url="/WEB-INF/views/layout/top.jsp" />
		<!-- section.jsp -->
		<
		<section id="section">
	        <div class="div_detail_prdt">
	            <div class="panel_info_prdt">
	                <div class="div_prdt_info">
	                    <div class="div_ic_co">
	                        <!-- 각 은행 로고 image -->
	                        <img src="<c:url value='/image/bank/${charterloan.fin_co_no}.png'/>">
	                    </div>
	                    <div class="div_prdt_base">
	                        <div class="top_prdt_info">
	                            <div class="div_nm_co">
	                                <span class="prdt_nm_co">
	                                    ${charterloan.kor_co_nm }
	                                </span>
	                            </div>
	                            <div class="div_nm_prdt">
	                                <span class="prdt_nm_loan">
	                                    ${charterloan.fin_prdt_nm }
	                                </span>
	                            </div>
	                        </div>
	                        <div class="div_joinway">
	                            <c:forTokens var="joinway" items="${charterloan.join_way }" delims=",">
	                                <div class="div_joinway_block">
	                                    <span>${joinway }</span>
	                                </div>
                                </c:forTokens>
	                        </div>
	                        <div class="bot_prdt_info">
	                            <!-- <div class="div_lend_prdt"> -->
	                                <div class="div_lend_rate">
	                                    <span class="lend_rate_title">
	                                        최저 금리
	                                    </span>
	                                    <span class="lend_rate_prdt">
	                                        ${charterloan.lend_rate_min }<span>%</span>
	                                    </span>
	                                </div>
	                                <div class="div_loan_lmt">
	                                    <span class="loan_lmt_title">
	                                        최대 한도
	                                    </span>
	                                    <span class="loan_lmt_prdt">
	                                        ${charterloan.loan_lmt }<span>억원</span>
	                                    </span>
	                                </div>
	                            <!-- </div> -->
	                        </div>
	                    </div>
	                </div>
	            </div>
	            <div class="panel_detail_prdt">
	                <div class="tap_detail_prdt">
	                    <span>상세 정보</span>
	                </div>
	                <div class="div_content_prdt">
	                    <div class="panel_content_prdt">
	                        <span>대출 부대 비용</span>
	                        <span>${charterloan.loan_inci_expn}</span>
	                        <span>중도 상환 수수료</span>
	                        <span>${charterloan.erly_rpay_fee}</span>
	                        <span>연체 이자율</span>
	                        <span>${charterloan.dly_rate}</span>
	                        <span>대출 한도</span>
	                        <span>${charterloan.loan_lmt}</span>
	                    </div>
	                </div>
	            </div>
	            <button class="btn_list_house" type="button"><span>목록으로 돌아가기</span></button>
	        </div>
	    </section>
		
		
		<!-- bottom.jsp -->
		<c:import url="/WEB-INF/views/layout/footer.jsp" />
	</body>
</html>