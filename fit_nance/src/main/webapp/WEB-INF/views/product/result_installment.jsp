<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<!DOCTYPE html>
<html>
	<head>
		<script src="<c:url value='/js/result_installment.js' />"></script>
	</head>
	<body>
	<c:choose>
		<c:when test="${empty installList}">
			<div class="search-line">
                <div class="box">검색 결과 ${fn:length(installList) }개</div>
            </div>
			<div>
				<span class="no-list"><i class="fa-solid fa-circle-exclamation"></i><br>찾는 상품이 없습니다</span>
			</div>
		</c:when>
		<c:otherwise>
			<div class="search-line">
                <div class="box">검색 결과 ${fn:length(installList) }개</div>
            </div>
            <div class="item-list">
            	<c:forEach items="${installList }" var="list">	           			
                <div class="item-box-all">
                    <div class="item-box">
                        <div class="image-box">
                        	<img src="<c:url value='/images/bank/${list.fin_co_no}.png'/>">
                        </div>
                        <div class="text-box">
                            <div class="bank-name">${list.kor_co_nm }</div>
                            <div class="item-line">
                                <div class="item-name">${list.fin_prdt_nm }
                                <c:forEach items="${list.join_way }" var="jw">
                                	<span>${jw}</span>
                                </c:forEach></div>
                            </div>
                        </div>
                        <div class="plus-icon plus-icon1" id="${list.oIndex}"><i class="fa-solid fa-folder-plus"></i></div>
		                            <c:if test="${empty sessionScope.sid}">
										<div class="plus-icon plus-icon2 no-login" id="${list.oIndex}"><i class="fa-solid fa-heart"></i></div>
									</c:if>

									<c:if test="${not empty sessionScope.sid}">
										<div class="plus-icon plus-icon2 yes-login" id="${list.oIndex}"><i class="fa-solid fa-heart"></i></div>
					          		</c:if>
                    </div>
               
                    <div class="item-box2">
                        <div class="percent-box">
                            <div class="percent1">
                                <ul>
                                    <li>1년기준 (세전)</li>
                                    <li><span>${list.intr_rate }</span>%</li>
                                </ul>
                            </div>
                            <div class="percent2">
                                <ul>
                                    <li>최대 (세전)</li>
                                    <li><span>${list.intr_rate2 }</span>%</li>
                                </ul>
                            </div>
                        </div>
                        <div class="view-detail"><a href="<c:url value='/detailInstall/${list.oIndex}'/>">자세히 보기</a></div>
                    </div>
                </div>
                </c:forEach>
    
                <div class="page-list">
                    <div class="page-icon"><i class="fa-solid fa-angle-left"></i></div>
                    <div class="page-num">
                        <div class="page-num1">1</div>
                        <div class="page-num2">2</div>
                        <div class="page-num3">3</div>
                    </div>
                    <div class="page-icon"><i class="fa-solid fa-angle-right"></i></div>
                </div>
            </div>
		</c:otherwise>
	</c:choose>
	</body>
    <!-- js -->
	<script src="<c:url value='/js/list_installment.js' />"></script>
</html>