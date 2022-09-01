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
	</head>
	<body>
		<!-- top.jsp -->
		<c:import url="/WEB-INF/views/layout/top.jsp" />
		
		
    <div class="middle wrap">
        <div class="middle-top">
            <div class="item-box">
                <div class="image-box">
                	<img src="<c:url value='/image/bank/${fin_co_no}.png'/>">
                </div>
                <div class="text-box">
                    <div class="bank-name">${kor_co_nm }</div>
                    <div class="item-name">${fin_prdt_nm }</div>
                    <div class="sub-text-box">
                    <div class="sub-text"><c:forEach items="${join_way }" var="jw">
	                                    	<span>${jw}</span>
	                                    </c:forEach></div></div>
                    <div class="percent-box">
                        <div class="percent1">
                            <ul>
                                <li>1년기준 (세전)</li>
                                <li><span>${intr_rate }</span>%</li>
                            </ul>
                        </div>
                        <div class="percent2">
                            <ul>
                                <li>최대 (세전)</li>
                                <li><span>${intr_rate2 }</span>%</li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div> 
            <div class="detail-information">상세 정보</div> 
            <div class="middle-last-box">
                <div class="details">
                    <div class="details-title">가입 대상</div>
                    <div class="details-content">${join_member }</div>
                    <div class="details-title">저축 금리 유형</div>
                    <div class="details-content">${intr_rate_type_nm }</div>
                    <div class="details-title">저축 기간</div>
                    <div class="details-content">최대 ${save_trm }개월</div>
                    <div class="details-title">가입 방법</div>
                    <div class="details-content">${join_way }</div>
                    <div class="details-title">가입 제한</div>
                    <div class="details-content">${join_deny }</div>
                    <div class="details-title">만기 후 이자율</div>
                    <div class="details-content"><span>${mtrt_int }</span></div>
                    <div class="details-title">우대 조건</div>
                    <div class="details-content"><span>${spcl_cnd }</span></div>
                    <div class="details-title">기타 유의사항</div>
                    <div class="details-content"><span>${etc_note }</span></div>
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
            <a class="go-to-list" href="<c:url value='/deposit'/>">목록으로 돌아가기</a>
        </div>      
    </div>
		
		<!-- bottom.jsp -->
		<c:import url="/WEB-INF/views/layout/footer.jsp" />
	</body>
</html>