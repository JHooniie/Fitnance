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
		<link rel="stylesheet" href="<c:url value='/css/calc_rpayment.css' />"/>
		<!-- js -->
		<script src="<c:url value='/js/calc_rpayment.js' />"></script>
		
		<meta charset="UTF-8">
	</head>
	<body>
		<!-- top.jsp -->
		<c:import url="/WEB-INF/views/layout/top.jsp" />
		<!-- section.jsp -->
		<section id="section">
	        <div class="div_calc">
	            <div class="div_calc_title">
	                <h1>대출 이자 계산기</h1>
	                <h2>
	                    <p>매월 얼마씩 갚아야 하지?</p>
	                    <p>원금과 이자가 매월 얼마씩 나가는지, 대출 기간 동안 총 비용은 어떻게 되는지 계산해드립니다.</p>
	                </h2>
	            </div>
	            <div class="div_calc_content">
	                <div class="panel_calc_input">
	                    <div class="div_rpay_type">
	                        <p>상환방식</p>
	                        <div class="div_select_rpay_type">
	                            <select class="select_rpay_type">
	                                <option value="option_rpay_type1">원리금분할상환</option>
	                                <option value="option_rpay_type2">원금분할상환</option>
	                                <option value="option_rpay_type3">만기일시상환</option>
	                            </select>
	                        </div>
	                    </div>
	                    <div class="div_lend_loan">
	                        <p>대출 금액</p>
	                        <div class="div_input_lend_loan">
	                            <input class="input_lend_loan" placeholder="대출 금액">
	                            <h3>원</h3>
	                        </div>
	                        <div class="div_btn_input">
	                            <input class="btn_reset button" type="button" value="초기화">
	                            <input class="btn_lend_100m button" type="button" value="+1억">
	                            <input class="btn_lend_50m button" type="button" value="+5,000만">
	                            <input class="btn_lend_10m button" type="button" value="+1,000만">
	                            <input class="btn_lend_1m button" type="button" value="+100만">
	                        </div>
	                    </div>
	                    <div class="div_dly_rate">
	                        <p>연 이자율</p>
	                        <div class="div_input_dly_rate">
	                            <input class="input_dly_rate" placeholder="연 이자율">
	                            <h3>%</h3>
	                        </div>
	                        <div class="div_btn_input">
	                            <input class="btn_reset button" type="button" value="초기화">
	                            <input class="btn_rate_0.1p button" type="button" value="+0.1%">
	                            <input class="btn_rate_1p button" type="button" value="+1%">
	                            <input class="btn_rate_2p button" type="button" value="+2%">
	                            <input class="btn_rate_5p button" type="button" value="+5%">
	                        </div>
	                    </div>
	                    <div class="div_rpay_period">
	                        <p>상환기간</p>
	                        <div class="div_input_rpay_period">
	                            <input class="input_rpay_period" placeholder="상환기간">
	                            <h3>년</h3>
	                        </div>
	                        <div class="div_btn_input">
	                            <input class="btn_reset button" type="button" value="초기화">
	                            <input class="btn_period_1y button" type="button" value="1년">
	                            <input class="btn_period_2y button" type="button" value="2년">
	                            <input class="btn_period_5y button" type="button" value="5년">
	                            <input class="btn_period_10y button" type="button" value="10년">
	                        </div>
	                    </div>
	                    <div class="div_grace_period">
	                        <p>상환기간</p>
	                        <div class="div_input_grace_period">
	                            <input class="input_grace_period" placeholder="거치기간">
	                            <h3>년</h3>
	                        </div>
	                        <div class="div_btn_input">
	                            <input class="btn_reset button" type="button" value="초기화">
	                            <input class="btn_period_1y button" type="button" value="1년">
	                            <input class="btn_period_2y button" type="button" value="2년">
	                            <input class="btn_period_5y button" type="button" value="5년">
	                            <input class="btn_period_10y button" type="button" value="10년">
	                        </div>
	                    </div>
	                    <div class="btn_calc">
	                        <span>계산하기</span>
	                    </div>
	                </div>
	                <div class="panel_calc_result">
	                    <div class="div_result_title">
	                        <h4>계산 결과</h4>
	                        <h5>
	                            <p><span>100,000,000</span>원을 <span>10년</span> 동안 <span>원리금균등상환</span>으로 대출을 받았을 때</p>
	                            <p><span>3.2%</span> 기준 매월 <span class="result">974,867원</span>씩 갚아야 합니다.</p>
	                        </h5>
	                    </div>
	                    <div class="div_result_content">
	                        <table>
	                            <th class="index">회차</th><th>이자</th><th>원금</th><th>내야하는 금액</th>
	                            <tr><td class="index">1</td><td>266,667원</td><td>266,667원</td><td>974,867원</td></tr>
	                            <tr><td class="index">12</td><td>245,614원</td><td>266,667원</td><td>974,867원</td></tr>
	                            <tr><td class="index">24</td><td>221,932원</td><td>266,667원</td><td>974,867원</td></tr>
	                            <tr><td class="index">36</td><td>266,667원</td><td>266,667원</td><td>266,667원</td></tr>
	                            <tr><td class="index">48</td><td>266,667원</td><td>266,667원</td><td>266,667원</td></tr>
	                            <tr><td class="index">60</td><td>266,667원</td><td>266,667원</td><td>266,667원</td></tr>
	                            <tr><td class="index">72</td><td>266,667원</td><td>266,667원</td><td>266,667원</td></tr>
	                            <tr><td class="index">84</td><td>266,667원</td><td>266,667원</td><td>266,667원</td></tr>
	                            <tr><td class="index">96</td><td>266,667원</td><td>266,667원</td><td>266,667원</td></tr>
	                            <tr><td class="index">108</td><td>266,667원</td><td>266,667원</td><td>266,667원</td></tr>
	                            <tr><td class="index">120</td><td>266,667원</td><td>266,667원</td><td>266,667원</td></tr>
	                        </table>
	                        <div class="total_result_content">
	                            <span>총 이자액</span>
	                            <span>16,984,025원</span>
	                        </div>
	                    </div>
	                </div>
	            </div>
	        </div>
	    </section>
		
		
		<!-- bottom.jsp -->
		<c:import url="/WEB-INF/views/layout/footer.jsp" />
	</body>
</html>