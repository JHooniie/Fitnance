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
		<link rel="stylesheet" href="<c:url value='/css/calculator_deposit.css'/>"/>
		<!-- js -->
		<script src="<c:url value='/js/calculator_deposit.js' />"></script>
		<!-- 삭제해야함 -->
		
		<meta charset="UTF-8">
	</head>
	<body>
		<!-- top.jsp -->
		<c:import url="/WEB-INF/views/layout/top.jsp" />
		
		<div class="middle wrap">
        <div class="middle1">
            <ul>
                <li>목돈 계산기</li>
                <li>목표 금액을 모으기 위해 매월 얼마씩 저축해야 하는지 계산해 드립니다.</li>
            </ul>
        </div>
        <div class="middle2">
            <div class="middle2-box1">
                적금 계산기
            </div>
            <div class="middle2-box2">
                <a href="<c:url value='calculator_lump'/>">목돈 모으기 계산기</a>
            </div>
        </div>
        <div class="middle3">
            적금 계산기
        </div>
        <div class="middle4">
            <div class="middle4-subbox1">
                <div class="sub-title">매월 납입 금액</div>
                <div class="sub-input">
                    <input type="text" id="amount-paid" name="amount-paid" onkeyup="input_num(this);" placeholder="매월 납입 금액"><span>원</span>
                </div>
                <div class="sub-title">적립 기간</div>
                <div class="sub-input">
                    <select id="period" name="period">
                        <option value="3개월">3개월</option>
                        <option value="6개월">6개월</option>
                        <option value="12개월">12개월</option>
                        <option value="24개월">24개월</option>
                        <option value="36개월 이상">36개월 이상</option>
                   </select>
                </div>
                <div class="sub-title">연 이자율</div>
                <div class="sub-input">
                    <input type="text" id="interest-rate" name="interest-rate" placeholder="연 이자율"> <span>%</span>
                </div>
                <div class="sub-title">금리 방식</div>
                <div class="sub-input">
                    <select id="interest-rate-system" name="interest-rate-system">
                        <option value="단리">단리</option>
                        <option value="복리">복리</option>
                    </select>
                </div>
                <div class="calculate">계산하기</div>
            </div>
            <div class="middle4-subbox2">
                <div class="sub-title1">계산 결과</div>
                <div class="sub-box">
                    <div class="box1" value="1">일반세율</div>
                    <div class="box2" value="2">세금우대</div>
                    <div class="box3" value="3">비과세</div>
                </div>
                <div class="sub-detail">
          
             
                  
                </div>
                <div class="sub-title2">세율별 총 이자액</div>
                <div class="sub-line1">
                    <div class="line-left">일반세율</div>
                    <div class="line-middle">15.4%</div>
                    <div class="line-right"><span class="num1"></span>원</div>
                </div>
                <div class="sub-line1">
                    <div class="line-left">세금우대</div>
                    <div class="line-middle">9.5%</div>
                    <div class="line-right"><span class="num2"></span>원</div>
                </div>
                <div class="sub-line2">
                    <div class="line-left">비과세</div>
                    <div class="line-middle">0.0%</div>
                    <div class="line-right"><span class="num3"></span>원</div>
                </div>
            </div>
        </div>
    </div>
		
		<!-- bottom.jsp -->
		<c:import url="/WEB-INF/views/layout/footer.jsp" />
	</body>
</html>