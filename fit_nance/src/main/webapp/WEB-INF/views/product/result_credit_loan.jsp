<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<!DOCTYPE html>
<html>
	<body>
		<c:choose>
		<c:when test="${empty clList}">
			<div class="div_search_list">
	             <div class="div_list_result">
	                 <span>검색 결과 ${fn:length(clList)}개</span>
	             </div>
	             <div class="div_search_prdt">
	                 <input class="input_search_prdt" placeholder="키워드 검색">
	                 <img src="/image/magnifying-glass-solid.png">
	             </div>
	         </div>
			<div>
				<span class="no-list"><i class="fa-solid fa-circle-exclamation"></i><br>찾는 상품이 없습니다</span>
			</div>
		</c:when>
		<c:otherwise>
			<div class="div_search_list">
	             <div class="div_list_result">
	                 <span>검색 결과 ${fn:length(clList)}개</span>
	             </div>
	             <div class="div_search_prdt">
	                 <input class="input_search_prdt" placeholder="키워드 검색">
	                 <img src="/image/magnifying-glass-solid.png">
	             </div>
	         </div>
	         
	         <div class="div_list_prdt">
	             <div class="prdt_result_search prdt">
	             <form id="form_prdt" method="post" action="<c:url value='/view_credit_detail'/>">
	             	<input type="hidden" id="input_prdt_cd" name="input_prdt_cd" class="input_prdt_cd" type="text">
	                 <!-- 검색 결과 상품 - 시작 -->
	                 <c:forEach items="${clList }" var="list" varStatus="status">
	                 <div class="div_prdt">
	                     <div class="div_prdt_info">
	                         <div class="div_ic_co">
	                             <!-- 각 은행 로고 image -->
	                             <img src="<c:url value='/image/bank/${list.fin_co_no}.png'/>">
	                         </div>
	                         <div class="div_prdt_base">
	                             <div class="top_prdt_info">
	                                 <div class="div_nm_co">
	                                     <span class="prdt_nm_co">
	                                         ${list.kor_co_nm}
	                                     </span>
	                                 </div>
	                                 <div class="div_nm_prdt">
	                                     <span class="prdt_nm_loan">
	                                         ${list.fin_prdt_nm }
	                                     </span>
	                                     <div class="div_joinway">
	                                         <c:forTokens var="joinway" items="${list.join_way }" delims=",">
	                                         <div class="div_joinway_block">
	                                             <span>${joinway }</span>
	                                         </div>
	                                     	</c:forTokens>
	                                     </div>
	                                 </div>
	                             </div>
	                             <div class="bot_prdt_info">
	                                 <!-- <div class="div_lend_prdt"> -->
	                                     <div class="div_lend_rate">
	                                         <span class="lend_rate_title">
	                                             평균 금리
	                                         </span>
	                                         <span class="lend_rate_prdt">
	                                             ${list.crdt_grad_avg }<span>%</span>
	                                         </span>
	                                     </div>
	                                 <!-- </div> -->
	                             </div>
	                         </div>
	                     </div>
	                     <div class="div_btn_prdt">
	                         <div class="div_btn_add">
	                             <div class="btn_add_compare">
	                                 <img class="img_ic_compare" src="/image/folder-plus-solid.png">
	                             </div>
	                             <div class="btn_add_favorite">
	                                 <img class="img_ic_favorite" src="/image/heart-solid.png">
	                             </div>
	                         </div>
	                         <a class="btn_prdt_info" href="<c:url value='/detailCreditLoan/${list.oIndex}'/>">자세히 보기</a>
	                     </div>
	                 </div>
	                 <!-- 검색 결과 상품 - 끝 -->
	                 </c:forEach>
	                 </form>
	             </div>
	             <div class="page_prdt_list">
	                 <div class="div_page_prev">
	                     <img src="/image/chevron-left-solid.png">
	                 </div>
	                 <div class="div_page_num">
	                     <div class="page_num_clicked">1</div>
	                     <div class="page_num">2</div>
	                     <div class="page_num">3</div>
	                     <div class="page_num">4</div>
	                 </div>
	                 <div class="div_page_next">
	                     <img src="/image/chevron-right-solid.png">
	                 </div>
	             </div>
	         </div>
		</c:otherwise>
	</c:choose>
	</body>
</html>