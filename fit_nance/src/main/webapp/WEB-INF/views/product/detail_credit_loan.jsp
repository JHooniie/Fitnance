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
		<section id="section">
	        <div class="div_detail_prdt">
	            <div class="panel_info_prdt">
	                <div class="div_prdt_info">
	                    <div class="div_ic_co">
	                        <!-- 각 은행 로고 image -->
	                        <img src="<c:url value='/image/bank/${creditloan.fin_co_no}.png'/>">
	                    </div>
	                    <div class="div_prdt_base">
	                        <div class="top_prdt_info">
	                            <div class="div_nm_co">
	                                <span class="prdt_nm_co">
	                                    ${creditloan.kor_co_nm }
	                                </span>
	                            </div>
	                            <div class="div_nm_prdt">
	                                <span class="prdt_nm_loan">
	                                    ${creditloan.fin_prdt_nm }
	                                </span>
	                            </div>
	                        </div>
	                        <div class="div_joinway">
	                            <c:forTokens var="joinway" items="${creditloan.join_way }" delims=",">
	                                <div class="div_joinway_block">
	                                    <span>${joinway }</span>
	                                </div>
                                </c:forTokens>
	                        </div>
	                        <div class="bot_prdt_info">
	                            <!-- <div class="div_lend_prdt"> -->
	                                <div class="div_lend_rate">
	                                    <span class="lend_rate_title">
	                                        평균 금리
	                                    </span>
	                                    <span class="lend_rate_prdt">
	                                        ${creditloan.crdt_grad_avg }<span>%</span>
	                                    </span>
	                                </div>
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
	                        <span class="panel_content_title">대출금리 (단위 : %)</span>
	                        <span class="panel_content_detail">* KCB & NICE 개인신용평점 900점 이상, 당행 자체신용등급 1등급 기준, 교육세 포함</span>
	                        <table>
	                            <tr><td>기준금리</td><td>가산금리</td><td>우대금리</td><td>대출금리</td></tr>
	                            <tr><td>2.44</td><td>2.87</td><td>0.74</td><td>4.57</td></tr>
	                        </table>
	                        <span class="panel_content_title">대출금리 = 기준금리 + 가산금리 - 가감조정금리</span>
	                        <span class="panel_content_title">기준금리</span>
	                        <span class="panel_content_detail">MOR(Market Opportunity Rate)은 금융채 유통수익률 등 기간별 시장금리의 지표금리로<br>
	                        한국자산평가, KIS채권평가에서 고시하는 기간별 금융채(금융기관 AA등급 기준. 단, 은행의 신용<br>
	                        등급 변동에 따라 달라질 수 있음) 유통수익률을 기초로 산출됩니다.</span>
	                        <span class="panel_content_title">가산금리</span>
	                        <span class="panel_content_detail">고객별 가산금리는, 당행 자체신용등급 또는 개인신용평점에 따라 차등 적용</span>
	                        <span class="panel_content_title">우대금리</span>
	                        <span class="panel_content_detail">최고 0.99% 이내에서 우대</span>
	                    </div>
	                </div>
	            </div>
	            <button class="btn_list_credit" type="button"><span>목록으로 돌아가기</span></button>
	        </div>
	    </section>
		
		
		<!-- bottom.jsp -->
		<c:import url="/WEB-INF/views/layout/footer.jsp" />
	</body>
</html>