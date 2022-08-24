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
		<link rel="stylesheet" href="<c:url value='/css/deposit_detail.css'/>"/>
		<!-- js -->
		<!-- 삭제해야함 -->
		<meta charset="UTF-8">
		<title>Insert title here</title>
	</head>
	<body>
		<!-- top.jsp -->
		<c:import url="/WEB-INF/views/layout/top.jsp" />
		
		<header>
        <div class="box-nav wrap">
            <!-- logo-->
            <a href="index.html"><img src="../image/lg_fitnance.png" alt="fit:nacnce"></a>
            <!-- menu-top--> 
            <nav class="box-menu-default">
                <div class="box-menu-top">
                    <ul>
                        <li><a href="#">회사소개</a></li>
                        <li class="li-prd-info"><a href="#">상품안내</a></li>
                        <li class="li-cal"><a href="#">계산기</a></li>
                        <li class="li-cus-service"><a href="#">고객센터</a></li>
                        <li class="li-lang">
                            <span class="span-lang-kor span-lang-active">KOR</span>
                            |
                            <span class="span-lang-eng span-lang-inactive">ENG</span>
                        </li>
                        <li>
                            <div class="btn-login"><i class="fa-solid fa-user"></i></div>
                        </li>
                    </ul>
                </div>
            </nav>
        </div>
    </header>
    <div class="middle wrap">
        <div class="middle-top">
            <div class="item-box">
                <div class="image-box"></div>
                <div class="text-box">
                    <div class="bank-name">우리은행</div>
                    <div class="item-name">우리웰리치 주거래 예금</div>
                    <div class="sub-text">영업점</div>
                    <div class="sub-text">인터넷</div>
                    <div class="sub-text">스마트폰</div>
                    <div class="percent-box">
                        <div class="percent1">
                            <ul>
                                <li>1년기준 (세전)</li>
                                <li><span>1.15</span>%</li>
                            </ul>
                        </div>
                        <div class="percent2">
                            <ul>
                                <li>최대 (세전)</li>
                                <li><span>1.35</span>%</li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div> 
            <div class="detail-information">상세 정보</div> 
            <div class="middle-last-box">
                <div class="details">
                    <div class="details-title">가입 대상</div>
                    <div class="details-content">실명의 개인</div>
                    <div class="details-title">저축 금리 유형</div>
                    <div class="details-content">단리</div>
                    <div class="details-title">저축 기간</div>
                    <div class="details-content">최대 36개월</div>
                    <div class="details-title">가입 방법</div>
                    <div class="details-content">영업점, 인터넷, 스마트폰</div>
                    <div class="details-title">가입 제한</div>
                    <div class="details-content">제한 없음</div>
                    <div class="details-title">만기 후 이자율</div>
                    <div class="details-content"><span>만기 후 - 1개월이내 : 만기시점약정이율×50% - 1개월초과 6개월이내: 만기시점약정이율×30% - 6개월초과 : 만기시점약정이율×20% ※ 만기시점 약정이율 : 일반정기예금 금리</span></div>
                    <div class="details-title">우대 조건</div>
                    <div class="details-content"><span>다음 중 하나 충족한 입금건에 대해  최고 연0.2%p 1. 순신규고객 2. 가계대출이용고객 3. 입금일 전월 주거래우대조건 2가지이상 4. 건별3천만원이상 5. 건별 만기 자동재예치</span></div>
                    <div class="details-title">기타 유의사항</div>
                    <div class="details-content"><span>-추가입금은 신규가입 시 선택한 예치기간을 각 입금건별 입금일로부터 적용 -재예치는 입금건별 최초 입금일로부터 최장 10년간 가능</span></div>
                </div>
                <div class="calculator">
                    <div class="cal-title1">총 목표 금액</div>
                    <div class="price-box"><input type="text" id="price" name="price">원</div>
                    <div class="title-box">
                        <div class="cal-title2">적립 기간</div>
                        <div class="cal-title2">연 이자율</div>
                    </div>
                    <div class="sub-input">
                        <div class="period-box">
                            <select id="period" name="period">
                                <option value="3개월">3개월</option>
                                <option value="6개월">6개월</option>
                                <option value="12개월">12개월</option>
                                <option value="24개월">24개월</option>
                                <option value="36개월 이상">36개월 이상</option>
                            </select>
                            <div class="icon"><i class="fa-solid fa-angle-down"></i></div>
                        </div>
                        <div class="rate-box">
                            <input type="text" id="interest-rate" name="interest-rate" value="2.35"> <span>%</span>
                        </div>
                    </div>
                    <div class="total-box">
                        <div class="sub-title">총 저축 금액</div>
                        <div class="total"><span>3,600,000</span>원</div>
                    </div>
                    <div class="more-box">
                        <div class="more-title">더 자세한 결과값을 보고싶으시다면</div>
                        <div class="go-more">계산기 바로가기</div>
                    </div>
                </div>
            </div>
        </div>      
    </div>
		
		<!-- bottom.jsp -->
		<c:import url="/WEB-INF/views/layout/footer.jsp" />
	</body>
</html>