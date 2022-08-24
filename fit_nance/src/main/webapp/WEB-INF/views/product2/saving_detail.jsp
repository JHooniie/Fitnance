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
		<link rel="stylesheet" href="<c:url value='/css/saving_detail
		.css'/>"/>
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
                    <div class="bank-name">우리은행</div>
                    <div class="item-name">올포미적금</div>
                    <div class="sub-text">영업점</div>
                    <div class="percent-box">
                        <div class="percent1">
                            <ul>
                                <li>1년기준 (세전)</li>
                                <li><span>2.35</span>%</li>
                            </ul>
                        </div>
                        <div class="percent2">
                            <ul>
                                <li>최대 (세전)</li>
                                <li><span>2.75</span>%</li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div> 
            <div class="detail-information">상세 정보</div> 
            <div class="middle-last-box">
                <div class="details">
                    <div class="details-title">가입 대상</div>
                    <div class="details-content">개인, 개인사업자</div>
                    <div class="details-title">적립 유형</div>
                    <div class="details-content">정액적립식</div>
                    <div class="details-title">월 최고 한도</div>
                    <div class="details-content">3,000,000원</div>
                    <div class="details-title">저축 금리 유형</div>
                    <div class="details-content">단리</div>
                    <div class="details-title">저축 기간</div>
                    <div class="details-content">최대 24개월</div>
                    <div class="details-title">가입 방법</div>
                    <div class="details-content">영업점</div>
                    <div class="details-title">가입 제한</div>
                    <div class="details-content">제한 없음</div>
                    <div class="details-title">만기 후 이자율</div>
                    <div class="details-content"><span>만기 후 - 1개월 이내 : 만기시점약정이율x50% - 1개월초과 6개월이내 : 만기시점약정이율x30% -6개월초과 : 만기시점약정이율x20% ※ 만기시점 약정이율 : 일반정기적금 금리</span></div>
                    <div class="details-title">우대 조건</div>
                    <div class="details-content"><span>- 신규 시 아래항목 충족 시 최고 연 0.2%p 1. 올포미 신용 카드 보유 및 우리은행 결제계좌 지정 연 0.2%p 2. 우리은행 첫거래 고객 연 0.1%p 4.통신비/공과금 자동이체 고객 연0.1%p</span></div>
                </div>
                <div class="calculator">
                    <div class="cal-title1">매월 납입 금액</div>
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
            <div class="go-to-list">목록으로 돌아가기</div>
        </div>      
    </div>
		
		<!-- bottom.jsp -->
		<c:import url="/WEB-INF/views/layout/footer.jsp" />
	</body>
</html>