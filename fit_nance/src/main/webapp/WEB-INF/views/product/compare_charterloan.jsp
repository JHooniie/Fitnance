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
		<link rel="stylesheet" href="<c:url value='/css/compare_Homeloan.css' />"/>
		<!-- js -->
		<script src="<c:url value='/js/compare_Homeloan.js' />"></script>
	</head>
	<body>
		<!-- top.jsp -->
		<c:import url="/WEB-INF/views/layout/top.jsp" />
		<!-- section.jsp -->
		<section id="section">
	        <div class="div_background">
	            <div class="div_background_top">
	                <span class="background_title_main">
	                    주택 담보 대출 상품 비교함
	                </span>
	            </div>
	            <div class="div_background_bottom"></div>
	        </div>
	        <div class="div_list">
	            <div class="panel_list_prdt">
	                <div class="div_list_prdt">
	                    <table>
	                    	<tr>
	                    		<td class="title_head"></td>
	                    	</tr>
	                    	<tr>
	                    		<td class="title">가입 은행</td>
	                    	</tr>
	                    	<tr>
	                    		<td class="title">대출 금리유형</td>
	                    	</tr>
	                    	<tr>
	                    		<td class="title">대출 한도</td>
	                    	</tr>
	                    	<tr>
	                    		<td class="title">가입 방법</td>
	                    	</tr>
	                    	<tr>
	                    		<td class="title">이자율</td>
	                    	</tr>
	                    	<tr>
	                    		<td class="title inci_expn">대출 부대비용</td>
	                    	</tr>
	                    </table>
	                    <c:forEach items="${hcList }" var="list">
	                    	<table>
	                    		<tr class="delete_prdt">
	                    			<td>삭제하기<span style="display:none;">${list.oIndex }</span></td>
	                    		</tr>
		                    	<tr>
		                    		<td class="content">${list.fin_prdt_nm }</td>
		                    	</tr>
	                    		<tr>
	                    			<td class="content">${list.kor_co_nm }</td>
	                    		</tr>
		                    	<tr>
		                    		<td class="content">${list.rpay_type_nm }</td>
		                    	</tr>
		                    	<tr>
		                    		<td class="content">${list.loan_lmt }</td>
		                    	</tr>
		                    	<tr>
		                    		<td class="content">${list.join_way }</td>
		                    	</tr>
		                    	<tr>
		                    		<td class="content">${list.lend_rate_min }%</td>
		                    	</tr>
		                    	<tr>
		                    		<td class="content inci_expn">${list.loan_inci_expn }</td>
		                    	</tr>
		                    </table>
	                    </c:forEach>
	                </div>
	                <button class="btn_list_prdt" type="button"><span>목록으로 돌아가기</span></button>
	            </div>
	        </div>
	    </section>
		
		
		<!-- bottom.jsp -->
		<c:import url="/WEB-INF/views/layout/footer.jsp" />
	</body>
</html>