<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<sec:authorize access="isAuthenticated()">
    <sec:authentication property="principal" var="principal" />
</sec:authorize>
<!DOCTYPE html>
<html>
	<head>
		<script src="<c:url value='/js/result_pension.js' />"></script>
	</head>
	<body>
		<c:choose>
		<c:when test="${empty psList}">
			<div class="search-line">
                <div class="box">검색 결과 ${fn:length(psList) }개</div>
            </div>
			<div>
				<span class="no-list"><i class="fa-solid fa-circle-exclamation"></i><br>찾는 상품이 없습니다</span>
			</div>
		</c:when>
		<c:otherwise>
			<div class="search-line">
	             <div class="box">검색 결과 ${fn:length(psList) }개</div>
	         </div>
	         <div class="item-list">
	         <c:set var="total_pages" value="${fn:length(psList)/10+1 }"/>
                <c:forEach var="pages" begin="1" end="${total_pages+1 }">
                <div class="prdt_result_search prdt${pages }">
               	<c:forEach items="${psList }" var="list" varStatus="status" begin="${(pages-1)*10 }" end="${pages*10-1 }">	  
	             <div class="item-box-all">
	                 <div class="item-box">
	                     <div class="image-box">
	                     	<img src="<c:url value='/images/bank/${list.fin_co_no}.png'/>">
	                     </div>
	                     <div class="text-box">
	                         <div class="bank-name">${list.kor_co_nm }</div>
	                         <div class="item-line">
	                             <div class="item-name"><div class="item-name-prdt">${list.fin_prdt_nm }</div>
	                             <c:forEach items="${list.join_way }" var="jw">
	                              	<span>${jw}</span>
	                              </c:forEach></div>
	                         </div>
	                     </div>
	                     <div class="plus-icon plus-icon1" id="${list.oIndex}"><i class="fa-solid fa-folder-plus"></i></div>
		                  <c:if test="${empty principal.username}">
										<div class="plus-icon plus-icon2 no-login" id="${list.oIndex}"><i class="fa-solid fa-heart"></i></div>
									</c:if>
									<c:if test="${not empty principal.username}">
									<c:set var="a" value="<%=0 %>"/>
									<c:forEach items="${fList }" var="list2">
										<c:if test="${list2.oIndex eq list.oIndex }">
											<c:set var="a" value="<%=1 %>"/>
											<div class="plus-icon plus-icon2 yes-login plus-icon-clicked" id="${list.oIndex}"><i class="fa-solid fa-heart"></i></div>
										</c:if>
										
									</c:forEach>
									<c:if test="${a ne 1 }">
										<div class="plus-icon plus-icon2 yes-login" id="${list.oIndex}"><i class="fa-solid fa-heart"></i></div>
									</c:if>
					          		</c:if>
	                 </div>
	            
	                 <div class="item-box2">
	                     <div class="percent-box">
	                         <div class="percent1">
	                             <ul>
	                                 <li>연평균 수익률</li>
	                                 <li><span>${list.avg_prft_rate }</span>%</li>
	                             </ul>
	                         </div>
	                     </div>
	                     <div class="view-detail"><a href="<c:url value='/detailPension/${list.oIndex}'/>">자세히 보기</a></div>
	                 </div>
	             </div>
	             </c:forEach>
	             </div>
	             </c:forEach>
	             
	             <div class="page_prdt_list">
                     <div class="div_page_prev">
                         <i class="fa-solid fa-chevron-left"></i>
                     </div>
                     <div class="div_page_num">
                         <c:forEach var="pageNum" begin="1" end="${total_pages }">
                             <div class="btn_page page_num${pageNum }">${pageNum }</div>
                         </c:forEach>
                     </div>
                     <div class="div_page_next">
                         <i class="fa-solid fa-chevron-right"></i>
                     </div>
                 </div>
	         </div>
		</c:otherwise>
	</c:choose>
         
	</body>
</html>