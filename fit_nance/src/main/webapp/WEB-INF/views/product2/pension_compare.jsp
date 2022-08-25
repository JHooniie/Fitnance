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
		<!-- js -->
		<!-- 삭제해야함 -->
		
		<meta charset="UTF-8">
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
        <table >
            <tr><td id="blank"></td><td id="delete">삭제하기</td><td id="delete">삭제하기</td><td id="delete">삭제하기</td></tr>
            <th id="blank"></th><th id="name">시니어플러스우리적금(증여우대형)</th><th id="name">시니어플러스우리적금</th><th id="name">시니어플러스우리적금</th>
            <tr><td id="title">가입 은행</td><td>우리은행</td><td>우리은행</td><td>우리은행</td></tr>
            <tr><td id="title">연금 종류</td><td>연금 저축 펀드</td><td>개인, 개인사업자</td><td>개인, 개인사업자</td></tr>
            <tr><td id="title">판매 시작일</td><td>2001.02.01</td><td>단리</td><td>단리</td></tr>
            <tr><td id="title">상품 유형명</td><td>채권형</td><td>영업점</td><td>영업점</td></tr>
            <tr><td id="title">판매사</td><td>KEB하나은행(구.외환은행),KEB하나은행(구.하나은행),우리은행,기업은행,수협중앙회,에스케이증권,현대증권,메리츠종금증권,삼성증권,한양증권,NH투자증권,교보증권,KDB대우증권,신한금융투자,
                유안타증권,아이비케이투자증권,이베스트투자증권,키움증권,리딩투자증권,하나금융투자,하이투자증권,동부증권,에이치엠씨투자증권,한화투자증권,미래에셋생명보험,삼성생명보험,한화생명보험,
                펀드온라인코리아 주식회사,케이티비투자증권,유진투자증권</td><td>제한 없음</td><td>제한 없음</td></tr>
            <tr><td id="title">연금 수령 기간</td><td>10년 확정</td><td>단리</td><td>단리</td></tr>
            <tr><td id="title">연금 가입 연령</td><td>30세</td><td>단리</td><td>단리</td></tr>
            <tr><td id="title">월 납입액</td><td>100,000원</td><td>단리</td><td>단리</td></tr>
            <tr><td id="title">납입 기간</td><td>10년</td><td>단리</td><td>단리</td></tr>
            <tr><td id="title">연금 개시연령</td><td>60세</td><td>단리</td><td>단리</td></tr>
            <tr><td id="title">연금 수령액</td><td>229,566원</td><td>단리</td><td>단리</td></tr>
            <tr><td id="title">과거수익률(1년전)</td><td>2.96%</td><td>단리</td><td>단리</td></tr>
            <tr><td id="title">과거수익률(2년전)</td><td>1.97%</td><td>단리</td><td>단리</td></tr>
            <tr><td id="title">과거수익률(3년전)</td><td>3.35%</td><td>단리</td><td>단리</td></tr>
        </table>
        <div class="go-to-list">목록으로 돌아가기</div>
    </div>
		
				<!-- bottom.jsp -->
		<c:import url="/WEB-INF/views/layout/footer.jsp" />
	</body>
</html>