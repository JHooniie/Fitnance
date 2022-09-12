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
		<link rel="stylesheet" href="<c:url value='/css/deposit_compare.css'/>"/>
	</head>
	<body>
		<!-- top.jsp -->
		<c:import url="/WEB-INF/views/layout/top.jsp" />
		
		<div class="middle">
        <div class="middle-topbox">
            <div class="middle-text">예금 상품 비교함</div>
        </div>
    </div>
    <div class="wrap">
        <table >
            <tr><td id="blank"></td><td id="delete">삭제하기</td><td id="delete">삭제하기</td><td id="delete">삭제하기</td></tr>
            <th id="blank"></th><th id="name">시니어플러스우리적금(증여우대형)</th><th id="name">시니어플러스우리적금</th><th id="name">시니어플러스우리적금</th>
            <tr><td id="title">가입 은행</td><td>우리은행</td><td>우리은행</td><td>우리은행</td></tr>
            <tr><td id="title">가입 대상</td><td>개인, 개인사업자</td><td>개인, 개인사업자</td><td>개인, 개인사업자</td></tr>
            <tr><td id="title">저축 금리 유형</td><td>단리</td><td>단리</td><td>단리</td></tr>
            <tr><td id="title">가입 방법</td><td>영업점</td><td>영업점</td><td>영업점</td></tr>
            <tr><td id="title">가입 제한</td><td>제한 없음</td><td>제한 없음</td><td>제한 없음</td></tr>
            <tr><td id="title">만기 후 이자율</td><td>만기 후 - 1개월 이내 : 만기시점약정이율x50% - 1개월초과 6개월이내 : 만기시점약...정이율x30% -6개월초과 : 만기시점약정이율x20% ※ 만기시점 약정이율 : 일반정기적금 금리</td><td>만기 후 - 1개월 이내 : 만기시점약정이율x50% - 1개월초과 6개월이내 : 만기시점약...정이율x30% -6개월초과 : 만기시점약정이율x20% ※ 만기시점 약정이율 : 일반정기적금 금리</td><td>만기 후 - 1개월 이내 : 만기시점약정이율x50% - 1개월초과 6개월이내 : 만기시점약...정이율x30% -6개월초과 : 만기시점약정이율x20% ※ 만기시점 약정이율 : 일반정기적금 금리</td></tr>
            <tr><td id="title">우대 조건</td><td>- 신규 시 아래항목 충족 시 최고 연 0.2%p 1. 올포미 신용 카드 보유 및 우리은행 결제계좌 지정 연 0.2%p 2. 우리은행 첫거래 고객 연 0.1%p 4.통신비/공과금 자동이체 고객 연0.1%p</td><td>- 신규 시 아래항목 충족 시 최고 연 0.2%p 1. 올포미 신용 카드 보유 및 우리은행 결제계좌 지정 연 0.2%p 2. 우리은행 첫거래 고객 연 0.1%p 4.통신비/공과금 자동이체 고객 연0.1%p</td><td>- 신규 시 아래항목 충족 시 최고 연 0.2%p 1. 올포미 신용 카드 보유 및 우리은행 결제계좌 지정 연 0.2%p 2. 우리은행 첫거래 고객 연 0.1%p 4.통신비/공과금 자동이체 고객 연0.1%p</td></tr>
            <tr><td id="title">기타 유의사항</td><td>-추가입금은 신규가입 시 선택한 예치기간을 각 입금건별 입금일로부터 적용 -재예치는 입금건별 최초 입금일로부터 최장 10년간 가능</td><td>-추가입금은 신규가입 시 선택한 예치기간을 각 입금건별 입금일로부터 적용 -재예치는 입금건별 최초 입금일로부터 최장 10년간 가능</td><td>-추가입금은 신규가입 시 선택한 예치기간을 각 입금건별 입금일로부터 적용 -재예치는 입금건별 최초 입금일로부터 최장 10년간 가능</td></tr>
        </table>
        <div class="tables">
    	<div class="table1">
        <table >
            <tr><td id="blank1"></td></tr>
            <th id="blank2"></th>
            <tr><td id="title">가입 은행</td></tr>
            <tr><td id="title">가입 대상</td></tr>
            <tr><td id="title">저축 금리 유형</td></tr>
            <tr><td id="title">가입 방법</td></tr>
            <tr><td id="title">가입 제한</td></tr>
            <tr><td id="title">만기 후 이자율</td></tr>
            <tr><td id="title">우대 조건</td></tr>
            <tr><td id="title">기타 유의사항</td></tr>
            </table>
            </div>
            <div class="table-list">
            <c:forEach items="${dpList }" var="list">
        <div class="table2">
        <table>
        	<tr><td id="delete">삭제하기</td></tr>
        	<th id="name">${list.fin_prdt_nm }</th>
        	<tr><td>${list.kor_co_nm }</td></tr>
        	<tr><td>${list.join_member }</td></tr>
        	<tr><td>${list.intr_rate_type_nm }</td></tr>
        	<tr><td>${list.join_way }</td></tr>
        	<tr><td>${list.join_deny }</td></tr>
        	<tr><td><div class="description">${list.mtrt_int }</div></td></tr>
        	<tr><td><div class="description">${list.spcl_cnd }</div></td></tr>
        	<tr><td><div class="description">${list.etc_note }</div></td></tr>
        	</table>
        </div>
        </c:forEach>
        </div>
        </div>
        <div class="go-to-list"><a href="<c:url value='deposit'/>">목록으로 돌아가기</a></div>
    </div>
		
				<!-- bottom.jsp -->
		<c:import url="/WEB-INF/views/layout/footer.jsp" />
	</body>
</html>