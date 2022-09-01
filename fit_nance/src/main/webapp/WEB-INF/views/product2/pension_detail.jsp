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
                                <li>연평균 수익률</li>
                                <li><span>${avg_prft_rate }</span>%</li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div> 
            <div class="detail-information">상세 정보</div> 
            <div class="middle-last-box">
                <div class="details">
                    <div class="details-title">연금 종류</div>
                    <div class="details-content">${pnsn_kind_nm }</div>
                    <div class="details-title">판매 시작일</div>
                    <div class="details-content">
                    <c:if test="${sale_strt_day ne 'null'}">
                    <c:set var="ssd" value="${sale_strt_day}"/>
                    	${sale_strt_day.substring(0,4)}.${sale_strt_day.substring(4,6)}.${sale_strt_day.substring(6,8)}
                    </c:if>
                    <c:if test="${sale_strt_day eq 'null'}">
                    	X
                    </c:if>
                    </div>
                    <div class="details-title">상품 유형명</div>
                    <div class="details-content">${prdt_type_nm }</div>
                    <div class="details-title">판매사</div>
                    <div class="details-content">${sale_co }</div>
                    <div class=details-list>
                        <div class="box">
                            <div class="details-title">연금 수령 기간</div>
                            <div class="details-content">${pnsn_recp_trm_nm }</div>
                        </div>
                        <div class="box">
                            <div class="details-title">연금 가입 연령</div>
                            <div class="details-content">${pnsn_entr_age_nm }</div>
                        </div>
                    </div>
                    <div class=details-list>
                        <div class="box">
                            <div class="details-title">월 납입액</div>
                            <div class="details-content">${mon_paym_atm_nm }</div>
                        </div>
                        <div class="box">
                            <div class="details-title">납입 기간</div>
                            <div class="details-content">${paym_prd_nm }</div>
                        </div>
                    </div>
                    <div class=details-list>
                        <div class="box">
                            <div class="details-title">연금 개시연령</div>
                            <div class="details-content">${pnsn_strt_age_nm }</div>
                        </div>
                        <div class="box">
                            <div class="details-title">연금 수령액</div>
                            <div class="details-content">${pnsn_recp_amt }원</div>
                        </div>
                    </div>
                    <div class=details-list>
                        <div class="box">
                            <div class="details-title">과거수익률 (1년 전)</div>
                            <div class="details-content">${btrm_prft_rate_1 }%</div>
                        </div>
                        <div class="box">
                            <div class="details-title">과거수익률 (2년 전)</div>
                            <div class="details-content">${btrm_prft_rate_2 }%</div>
                        </div>
                        <div class="box">
                            <div class="details-title">과거수익률 (3년 전)</div>
                            <div class="details-content">${btrm_prft_rate_3 }%</div>
                        </div>
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