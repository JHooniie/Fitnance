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
		<link rel="stylesheet" href="<c:url value='/css/pension_compare.css'/>"/>
	</head>
	<body>
		<!-- top.jsp -->
		<c:import url="/WEB-INF/views/layout/top.jsp" />
		
		<div class="middle">
        <div class="middle-topbox">
            <div class="middle-text">연금 상품 비교함</div>
        </div>
    </div>
    <div class="wrap">
        <div class="tables">
    	<div class="table1">
        <table >
            <tr><td id="blank1"></td></tr>
            <th id="blank2"></th>
            <tr><td id="title">가입 은행</td></tr>
            <tr><td id="title">연금 종류</td></tr>
            <tr><td id="title">판매 시작일</td></tr>
            <tr><td id="title">상품 유형명</td></tr>
            <tr><td id="title">판매사</td></tr>
            <tr><td id="title">연금 수령 기간</td></tr>
            <tr><td id="title">연금 가입 연령</td></tr>
            <tr><td id="title">월 납입액</td></tr>
            <tr><td id="title">납입 기간</td></tr>
            <tr><td id="title">연금 개시연령</td></tr>
            <tr><td id="title">연금 수령액</td></tr>
            <tr><td id="title">과거수익률(1년전)</td></tr>
            <tr><td id="title">과거수익률(2년전)</td></tr>
            <tr><td id="title">과거수익률(3년전)</td></tr>
            </table>
            </div>
            <div class="table-list">
            <c:forEach items="${psList }" var="list">
        <div class="table2">
        <table>
        	<tr><td id="delete">삭제하기</td></tr>
        	<th id="name"><div class="description">${list.fin_prdt_nm }</div></th>
        	<tr><td>${list.kor_co_nm }</td></tr>
        	<tr><td>${list.pnsn_kind_nm }</td></tr>
        	<tr><td>${list.sale_strt_day }</td></tr>
        	<tr><td>${list.prdt_type_nm }</td></tr>
        	<tr><td><div class="description">${list.sale_co }</div></td></tr>
        	<tr><td>${list.pnsn_recp_trm_nm }</td></tr>
        	<tr><td>${list.pnsn_entr_age_nm }</td></tr>
        	<tr><td>${list.mon_paym_atm_nm }</td></tr>
        	<tr><td>${list.paym_prd_nm }</td></tr>
        	<tr><td>${list.pnsn_strt_age_nm }</td></tr>
        	<tr><td>${list.pnsn_recp_amt }</td></tr>
        	<tr><td>${list.btrm_prft_rate_1 }</td></tr>
        	<tr><td>${list.btrm_prft_rate_2 }</td></tr>
        	<tr><td>${list.btrm_prft_rate_3 }</td></tr>
        	</table>
        </div>
        </c:forEach>
        </div>
        </div>
        <div class="go-to-list"><a href="<c:url value='pension'/>">목록으로 돌아가기</a></div>
    </div>
		
				<!-- bottom.jsp -->
		<c:import url="/WEB-INF/views/layout/footer.jsp" />
	</body>
</html>