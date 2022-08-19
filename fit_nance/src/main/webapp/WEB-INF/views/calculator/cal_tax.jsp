<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
	<head>
		<c:import url="/WEB-INF/views/layout/head.jsp" />
		<!-- custom -->
		<link rel="stylesheet" href="<c:url value='/css/cal_tax.css'/>">
		<script src="<c:url value='/js/cal_tax.js'/>"></script>
	</head>
	<body>
		<c:import url="/WEB-INF/views/layout/top.jsp" />
		<!-- calculator -->
	    <section class="wrap">
	        <div class="box-cal-title">
	            <h3>카드/현금 연말정산 계산기</h3>
	            <span>2021년 연말정산부터 달라지는 내용을 반영했습니다.</span>
	        </div>
	        <section class="sec-cal-col">
	            <div class="box-cal-col box-cal-left-col">
	                <h4>카드 및 현금 소비액 소득공제</h4>
	                <div class="box-cal-input">
	                    <span>급여액(연간)</span>
	                    <div class="input-cal">
	                        <input id="payVal" type="text" placeholder="급여액">
	                        <span>만 원</span>
	                    </div>
	                </div>
	                <div class="box-cal-input">
	                    <span>신용카드(연간)</span>
	                    <div class="input-cal">
	                        <input id="creditCardVal" type="text" placeholder="사용금액">
	                        <span>만 원</span>
	                    </div>
	                </div>
	                <div class="box-cal-input">
	                    <span>현금영수증(연간)</span>
	                    <div class="input-cal">
	                        <input id="cashVal" type="text" placeholder="사용금액">
	                        <span>만 원</span>
	                    </div>
	                </div>
	                <div class="box-cal-input">
	                    <span>체크카드(연간)</span>
	                    <div class="input-cal">
	                        <input id="checkCardVal" type="text" placeholder="사용금액">
	                        <span>만 원</span>
	                    </div>
	                </div>
	                <input type="button" value="계산하기" class="btn-submit btn-search">
	            </div>
	            <div class="box-cal-col box-cal-right-col">
	                <div class="box-cal-result-text">
	                    <h4>예상 소득 공제</h4>
	                    <span class="text-result-01">계산을 진행해주세요 :)</span>
	                </div>          
	                <div class="box-cal-result-num">
	                    <h4>예상 적용 세율</h4>
	                    <span class="text-result-num text-result-03">0%</span>
	                    <span>소득공제 후 연간 급여액의 변동에 따라 적용 세율 구간이 한 단계 낮아질 수 있습니다</span>
	                </div>
	                <div class="box-cal-result-num">
	                    <h4>아낄 수 있는 세금(예상액)</h4>
	                    <span class="text-result-num text-result-04">0원</span>
	                    <span>본 금액은 환급액이 아니며 실제 환급액은 기존 납입 세금에 따라 달라집니다</span>
	                </div>
	            </div>
	        </section>        
	    </section>
	    <!-- calculator end -->
	    <c:import url="/WEB-INF/views/layout/footer.jsp" />
	</body>
</html>