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
		<link rel="stylesheet" href="<c:url value='/css/compare_loan.css' />"/>
		<!-- js -->
		<script src="<c:url value='/js/compare_loan.js' />"></script>
	</head>
	<body>
		<!-- top.jsp -->
		<c:import url="/WEB-INF/views/layout/top.jsp" />
		<!-- section.jsp -->
		<
		<section id="section">
	        <div class="div_background">
	            <div class="div_background_top">
	                <span class="background_title_main">
	                    대출 상품 비교함
	                </span>
	            </div>
	            <div class="div_background_bottom"></div>
	        </div>
	        <div class="div_list">
	            <div class="panel_list_prdt">
	                <div class="div_list_prdt">
	                    <table>
	                        <tr><td rowspan="2"></td><td class="delete_prdt">삭제하기</td><td class="delete_prdt">삭제하기</td><td class="delete_prdt">삭제하기</td></tr>
	                        <tr><td class="prdt_co_nm">우리은행대출</td><td class="prdt_co_nm">우리은행대출</td><td class="prdt_co_nm">우리은행대출</td></tr>
	                        <tr><td class="title_co_nm title">가입 은행</td><td class="content_co_nm content">우리은행</td><td class="content_co_nm content">우리은행</td><td class="content_co_nm content">우리은행</td></tr>
	                        <tr><td class="title_loan_lmt title">대출 한도</td><td class="content_loan_lmt content">10억원</td><td class="content_loan_lmt content">10억원</td><td class="content_loan_lmt content">10억원</td></tr>
	                        <tr><td class="title_inci_expn title">대출 부대비용</td>
	                            <td class="content_inci_expn content">
	                                인지세 : 해당세액의 50% (대출금액 5천만원 이하 시 없음)
	                            </td>
	                            <td class="content_inci_expn content">
	                                인지세 : 해당세액의 50% (대출금액 5천만원 이하 시 없음)
	                            </td>
	                            <td class="content_inci_expn content">
	                                인지세 : 해당세액의 50% (대출금액 5천만원 이하 시 없음)
	                            </td>
	                        </tr>
	                        <tr><td class="title_rate_type title">대출 금리 유형</td><td class="content_rate_type content">고정</td><td class="content_rate_type content">고정</td><td class="content_rate_type content">고정</td></tr>
	                        <tr><td class="title_join_way title">가입 방법</td><td class="content_join_way content">영업점, 인터넷</td><td class="content_join_way content">영업점, 인터넷</td><td class="content_join_way content">영업점, 인터넷</td></tr>
	                        <tr><td class="title_dly_rate title">이자율</td><td class="content_dly_rate content">적용금리 + 3% (최고연체이자율 : 12%)</td><td class="content_dly_rate content">적용금리 + 3% (최고연체이자율 : 12%)</td><td class="content_dly_rate content">적용금리 + 3% (최고연체이자율 : 12%)</td></tr>
	                    </table>
	                </div>
	                <button class="btn_list_prdt" type="button"><span>목록으로 돌아가기</span></button>
	            </div>
	        </div>
	    </section>
		
		
		<!-- bottom.jsp -->
		<c:import url="/WEB-INF/views/layout/footer.jsp" />
	</body>
</html>