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
		<link rel="stylesheet" href="<c:url value='/css/pension_detail.css'/>"/>
		<!-- js -->
		<!-- 삭제해야함 -->
		<meta charset="UTF-8">
		<title>Insert title here</title>
	</head>
	<body>
		<!-- top.jsp -->
		<c:import url="/WEB-INF/views/layout/top.jsp" />
		
		<div class="middle wrap">
        <div class="middle-top">
            <div class="item-box">
                <div class="image-box"></div>
                <div class="text-box">
                    <div class="bank-name">하나유비에스자산운용</div>
                    <div class="item-name">하나UBS인Best연금증권투자신탁(제1호)[채권]</div>
                    <div class="sub-text">영업점</div>
                    <div class="sub-text">인터넷</div>
                    <div class="sub-text">스마트폰</div>
                    <div class="sub-text">모집인</div>
                    <div class="sub-text">텔레뱅킹</div>
                    <div class="sub-text">기타</div>
                    <div class="percent-box">
                        <div class="percent1">
                            <ul>
                                <li>연평균 수익률</li>
                                <li><span>4.05</span>%</li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div> 
            <div class="detail-information">상세 정보</div> 
            <div class="middle-last-box">
                <div class="details">
                    <div class="details-title">연금 종류</div>
                    <div class="details-content">연금 저축 펀드</div>
                    <div class="details-title">판매 시작일</div>
                    <div class="details-content">2001.02.01</div>
                    <div class="details-title">상품 유형명</div>
                    <div class="details-content">채권형</div>
                    <div class="details-title">판매사</div>
                    <div class="details-content">KEB하나은행(구.외환은행),KEB하나은행(구.하나은행),우리은행,기업은행,수협중앙회,에스케이증권,현대증권,메리츠종금증권,삼성증권,한양증권,NH투자증권,교보증권,KDB대우증권,신한금융투자,
                        유안타증권,아이비케이투자증권,이베스트투자증권,키움증권,리딩투자증권,하나금융투자,하이투자증권,동부증권,에이치엠씨투자증권,한화투자증권,미래에셋생명보험,삼성생명보험,한화생명보험,
                        펀드온라인코리아 주식회사,케이티비투자증권,유진투자증권</div>
                    <div class=details-list>
                        <div class="box">
                            <div class="details-title">연금 수령 기간</div>
                            <div class="details-content">10년 확정</div>
                        </div>
                        <div class="box">
                            <div class="details-title">연금 가입 연령</div>
                            <div class="details-content">30세</div>
                        </div>
                    </div>
                    <div class=details-list>
                        <div class="box">
                            <div class="details-title">월 납입액</div>
                            <div class="details-content">100,000원</div>
                        </div>
                        <div class="box">
                            <div class="details-title">납입 기간</div>
                            <div class="details-content">10년</div>
                        </div>
                    </div>
                    <div class=details-list>
                        <div class="box">
                            <div class="details-title">연금 개시연령</div>
                            <div class="details-content">60세</div>
                        </div>
                        <div class="box">
                            <div class="details-title">연금 수령액</div>
                            <div class="details-content">229,566원</div>
                        </div>
                    </div>
                    <div class=details-list>
                        <div class="box">
                            <div class="details-title">과거수익률 (1년 전)</div>
                            <div class="details-content">2.96%</div>
                        </div>
                        <div class="box">
                            <div class="details-title">과거수익률 (2년 전)</div>
                            <div class="details-content">1.97%</div>
                        </div>
                        <div class="box">
                            <div class="details-title">과거수익률 (3년 전)</div>
                            <div class="details-content">3.35%</div>
                        </div>
                    </div>
                </div>
            </div>
        </div>      
    </div>
		
		<!-- bottom.jsp -->
		<c:import url="/WEB-INF/views/layout/footer.jsp" />
	</body>
</html>