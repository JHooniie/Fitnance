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
		<script src="<c:url value='/js/compare_credit_loan.js' />"></script>
	</head>
	<body>
		<!-- top.jsp -->
		<c:import url="/WEB-INF/views/layout/top.jsp" />
		<!-- section.jsp -->
		<section id="section">
	        <div class="div_background">
	            <div class="div_background_top">
	                <span class="background_title_main">
	                    개인 신용 대출 상품 비교함
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
	                    		<td class="title">대출 종류</td>
	                    	</tr>
	                    	<tr>
	                    		<td class="title">가입 방법</td>
	                    	</tr>
	                    	<tr>
	                    		<td class="title">평균 금리</td>
	                    	</tr>
	                    </table>
	                    <c:forEach items="${pcList }" var="list">
	                    	<table>
	                    		<tr class="delete_prdt">
	                    			<td class="btn_delete_prdt"><span>삭제하기</span><span style="display:none;" class="prdt_index">${list.oIndex }</span></td>
	                    		</tr>
		                    	<tr>
		                    		<td class="content"><span class="fin_prdt_nm">${list.fin_prdt_nm }</span></td>
		                    	</tr>
	                    		<tr>
	                    			<td class="content">${list.kor_co_nm }</td>
	                    		</tr>
		                    	<tr>
		                    		<td class="content">${list.crdt_prdt_type_nm }</td>
		                    	</tr>
		                    	<tr>
		                    		<td class="content">${list.join_way }</td>
		                    	</tr>
		                    	<tr>
		                    		<td class="content">${list.crdt_grad_avg }%</td>
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