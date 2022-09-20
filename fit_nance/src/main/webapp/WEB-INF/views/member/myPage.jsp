<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<sec:authorize access="isAuthenticated()">
    <sec:authentication property="principal" var="principal" />
</sec:authorize>
<!DOCTYPE html>
<html>
	<head>
		<c:import url="/WEB-INF/views/layout/head.jsp" />
		<!-- custom -->
		<link rel="stylesheet" href="<c:url value='/css/member_mypage.css'/>">
	</head>
	<body>
		<c:import url="/WEB-INF/views/layout/top.jsp" />
		<section>
        <div class="mypage_banner"></div>
        <div class="myPage wrap">
            <div class="mypage_myProfile">
                <div class="box-profile">
                    <div class="box-profileImg">
                        <div class="box-profileImg-img-center">
                            <img src="<c:url value='/images/lg_fitnance_initial_mypage.png'/>">
                        </div>
                    </div>
                    <div class="box-profile-content">
                        <span class="span-profile-name">${principal.name} </span>
                        <span class="span-profile-Email">${principal.username}</span>
                        <a href="<c:url value='/logout'/>">로그아웃</a>
                        <c:if test="${provider ne null}"> 
                        	<button onclick="location.href='<c:url value='/user/update_mypage'/>'"><span>프로필 수정하기</span></button>
                        </c:if>
                        <c:if test="${provider eq null}"> 
                        	<button onclick="location.href='<c:url value='/user/passwordCheckForm'/>'"><span>프로필 수정하기</span></button>
                        </c:if>
                    </div>
                </div>
            </div>
            <div class="mypage_myFavoriteList">
                <span class="span-myFavorite-title">찜한 상품</span>
                <div class="box-favoriteList">
                    <div class="box-favoriteList-tab">
                        <ul>
                            <li class="li-menuTab-01"><span class="favorite-tab active">전체 (${count})</span></li>
                            <li><span class="favorite-tab">적금 (${fn:length(instList) })</span></li>
                            <li><span class="favorite-tab">예금 (${fn:length(depList) })</span></li>
                            <li><span class="favorite-tab">연금 (${fn:length(penList) })</span></li>
                            <li><span class="favorite-tab">주택담보대출 (${fn:length(morList) })</span></li>
                            <li><span class="favorite-tab">전세자금대출 (${fn:length(charList) })</span></li>
                            <li><span class="favorite-tab">신용대출 (${fn:length(crdList) })</span></li>
                        </ul>
                    </div>
                   
                    <div class="box-favoriteList-list 00">
                    	 <c:if test="${count eq 0 }">
                        <div class="box-favoriteList-empty">
                            <div class="box-favoriteList-empty-warning">
                                <i class="fa-solid fa-circle-exclamation"></i>
                                <span>즐겿찾는 상품이 없습니다</span>
                            </div>
                        </div>
                        </c:if>
                        <c:if test="${count ne 0 }">
                        <c:forEach items="${instList }" var="list">
                        <div class="box-favoriteList-cell">
                            <div class="box-favoriteList-img">
                                <div class="box-favoriteList-img-center">
                                	<img src="<c:url value='/images/bank/${list.fin_co_no }.png'/>">
                                </div>
                            </div>
                            <div class="box-favoriteList-info">
                                <div class="box-favoriteCell-title">
                                        <span class="span-favoriteCell-title-bank">${list.kor_co_nm }</span><br>
                                        <span class="span-favoriteCell-title-name">${list.fin_prdt_nm }</span>
                                        <ul>
                                        	<c:forTokens var="joinway" items="${list.join_way}" delims=",">
                                            <li><span>${joinway }</span></li>
                                            </c:forTokens>
                                        </ul>
                                        <button><i class="fa-solid fa-heart"></i></button>
                                </div>
                                <div class="box-favoriteCell-detail">
                                    <ul>
                                        <li>
                                            <span class="span-detailOption-standard">1년기준 (세전)</span>
                                            <span class="span-detailOption-amount">${list.intr_rate }%</span>
                                        </li>
                                        <li>
                                            <span class="span-detailOption-standard">최대 (세전)</span>
                                            <span class="span-detailOption-amount">${list.intr_rate2 }%</span>
                                        </li>
                                    </ul>
                                    <button><span>자세히 보기</span></button>
                                </div>
                            </div>
                        </div>
                        </c:forEach>
                        <c:forEach items="${depList }" var="list">
                        <div class="box-favoriteList-cell">
                        	<div class="box-favoriteList-img">
                                <div class="box-favoriteList-img-center">
                                	<img src="<c:url value='/images/bank/${list.fin_co_no }.png'/>">
                                </div>
                            </div>
                            <div class="box-favoriteList-info">
                                <div class="box-favoriteCell-title">
                                        <span class="span-favoriteCell-title-bank">${list.kor_co_nm }</span><br>
                                        <span class="span-favoriteCell-title-name">${list.fin_prdt_nm }</span>
                                        <ul>
                                        	<c:forTokens var="joinway" items="${list.join_way}" delims=",">
                                            <li><span>${joinway }</span></li>
                                            </c:forTokens>
                                        </ul>
                                        <button><i class="fa-solid fa-heart"></i></button>
                                </div>
                                <div class="box-favoriteCell-detail">
                                    <ul>
                                        <li>
                                            <span class="span-detailOption-standard">1년기준 (세전)</span>
                                            <span class="span-detailOption-amount">${list.intr_rate }%</span>
                                        </li>
                                        <li>
                                            <span class="span-detailOption-standard">최소</span>
                                            <span class="span-detailOption-amount">${list.save_trm }개월부터</span>
                                        </li>
                                    </ul>
                                    <button><span>자세히 보기</span></button>
                                </div>
                            </div>
                        </div>
                        </c:forEach>
                        <c:forEach items="${penList }" var="list">
                        <div class="box-favoriteList-cell">
                            <div class="box-favoriteList-img">
                                <div class="box-favoriteList-img-center">
                                	<img src="<c:url value='/images/bank/${list.fin_co_no }.png'/>">
                                </div>
                            </div>
                            <div class="box-favoriteList-info">
                                <div class="box-favoriteCell-title">
                                        <span class="span-favoriteCell-title-bank">${list.kor_co_nm }</span><br>
                                        <span class="span-favoriteCell-title-name">${list.fin_prdt_nm }</span>
                                        <ul>
                                        	<c:forTokens var="joinway" items="${list.join_way}" delims=",">
                                            <li><span>${joinway }</span></li>
                                            </c:forTokens>
                                        </ul>
                                        <button><i class="fa-solid fa-heart"></i></button>
                                </div>
                                <div class="box-favoriteCell-detail">
                                    <ul>
                                        <li>
                                            <span class="span-detailOption-standard">연평균 수익률</span>
                                            <span class="span-detailOption-amount">${list.avg_prft_rate }%</span>
                                        </li>
                                    </ul>
                                    <button><span>자세히 보기</span></button>
                                </div>
                            </div>
                        </div>
                        </c:forEach>
                        <c:forEach items="${morList }" var="list">
                        <div class="box-favoriteList-cell">
                            <div class="box-favoriteList-img">
                                <div class="box-favoriteList-img-center">
                                	<img src="<c:url value='/images/bank/${list.fin_co_no }.png'/>">
                                </div>
                            </div>
                            <div class="box-favoriteList-info">
                                <div class="box-favoriteCell-title">
                                        <span class="span-favoriteCell-title-bank">${list.kor_co_nm }</span><br>
                                        <span class="span-favoriteCell-title-name">${list.fin_prdt_nm }</span>
                                        <ul>
                                        	<c:forTokens var="joinway" items="${list.join_way}" delims=",">
                                            <li><span>${joinway }</span></li>
                                            </c:forTokens>
                                        </ul>
                                        <button><i class="fa-solid fa-heart"></i></button>
                                </div>
                                <div class="box-favoriteCell-detail">
                                    <ul>
                                        <li>
                                            <span class="span-detailOption-standard">최저 금리</span>
                                            <span class="span-detailOption-amount">${list.lend_rate_min }%</span>
                                        </li>
                                        <li>
                                            <span class="span-detailOption-standard">최대 한도</span>
                                            <span class="span-detailOption-amount">상품 설명 참조</span>
                                        </li>
                                    </ul>
                                    <button><span>자세히 보기</span></button>
                                </div>
                            </div>
                        </div>
                        </c:forEach>
                        <c:forEach items="${charList }" var="list">
                        <div class="box-favoriteList-cell">
                            <div class="box-favoriteList-img">
                                <div class="box-favoriteList-img-center">
                                	<img src="<c:url value='/images/bank/${list.fin_co_no }.png'/>">
                                </div>
                            </div>
                            <div class="box-favoriteList-info">
                                <div class="box-favoriteCell-title">
                                        <span class="span-favoriteCell-title-bank">${list.kor_co_nm }</span><br>
                                        <span class="span-favoriteCell-title-name">${list.fin_prdt_nm }</span>
                                        <ul>
                                        	<c:forTokens var="joinway" items="${list.join_way}" delims=",">
                                            <li><span>${joinway }</span></li>
                                            </c:forTokens>
                                        </ul>
                                        <button><i class="fa-solid fa-heart"></i></button>
                                </div>
                                <div class="box-favoriteCell-detail">
                                    <ul>
                                        <li>
                                            <span class="span-detailOption-standard">최저 금리</span>
                                            <span class="span-detailOption-amount">${list.lend_rate_min }%</span>
                                        </li>
                                    </ul>
                                    <button><span>자세히 보기</span></button>
                                </div>
                            </div>
                        </div>
                        </c:forEach>
                        <c:forEach items="${crdList }" var="list">
                        <div class="box-favoriteList-cell">
                            <div class="box-favoriteList-img">
                                <div class="box-favoriteList-img-center">
                                	<img src="<c:url value='/images/bank/${list.fin_co_no }.png'/>">
                                </div>
                            </div>
                            <div class="box-favoriteList-info">
                                <div class="box-favoriteCell-title">
                                        <span class="span-favoriteCell-title-bank">${list.kor_co_nm }</span><br>
                                        <span class="span-favoriteCell-title-name">${list.fin_prdt_nm }</span>
                                        <ul>
                                        	<c:forTokens var="joinway" items="${list.join_way}" delims=",">
                                            <li><span>${joinway }</span></li>
                                            </c:forTokens>
                                        </ul>
                                        <button><i class="fa-solid fa-heart"></i></button>
                                </div>
                                <div class="box-favoriteCell-detail">
                                    <ul>
                                        <li>
                                            <span class="span-detailOption-standard">평균 금리</span>
                                            <span class="span-detailOption-amount">${list.crdt_grad_avg }%</span>
                                        </li>
                                    </ul>
                                    <button><span>자세히 보기</span></button>
                                </div>
                            </div>
                        </div>
                        </c:forEach>
                        </c:if>
                    </div>
                    <div class="box-favoriteList-list 01">
                    <c:set var="instCount" value="${fn:length(instList) }"/>
                    	 <c:if test="${instCount eq 0 }">
                        <div class="box-favoriteList-empty">
                            <div class="box-favoriteList-empty-warning">
                                <i class="fa-solid fa-circle-exclamation"></i>
                                <span>즐겿찾는 상품이 없습니다</span>
                            </div>
                        </div>
                        </c:if>
                        <c:if test="${instCount ne 0 }">
                        <c:forEach items="${instList }" var="list">
                        <div class="box-favoriteList-cell">
                            <div class="box-favoriteList-img">
                                <div class="box-favoriteList-img-center">
                                	<img src="<c:url value='/images/bank/${list.fin_co_no }.png'/>">
                                </div>
                            </div>
                            <div class="box-favoriteList-info">
                                <div class="box-favoriteCell-title">
                                        <span class="span-favoriteCell-title-bank">${list.kor_co_nm }</span><br>
                                        <span class="span-favoriteCell-title-name">${list.fin_prdt_nm }</span>
                                        <ul>
                                        	<c:forTokens var="joinway" items="${list.join_way}" delims=",">
                                            <li><span>${joinway }</span></li>
                                            </c:forTokens>
                                        </ul>
                                        <button><i class="fa-solid fa-heart"></i></button>
                                </div>
                                <div class="box-favoriteCell-detail">
                                    <ul>
                                        <li>
                                            <span class="span-detailOption-standard">1년기준 (세전)</span>
                                            <span class="span-detailOption-amount">${list.intr_rate }%</span>
                                        </li>
                                        <li>
                                            <span class="span-detailOption-standard">최대 (세전)</span>
                                            <span class="span-detailOption-amount">${list.intr_rate2 }%</span>
                                        </li>
                                    </ul>
                                    <button><span>자세히 보기</span></button>
                                </div>
                            </div>
                        </div>
                        </c:forEach>
                        </c:if>
                    </div>
                    <div class="box-favoriteList-list 02">
                    <c:set var="depCount" value="${fn:length(depList) }"/>
                    	 <c:if test="${depCount eq 0 }">
                        <div class="box-favoriteList-empty">
                            <div class="box-favoriteList-empty-warning">
                                <i class="fa-solid fa-circle-exclamation"></i>
                                <span>즐겿찾는 상품이 없습니다</span>
                            </div>
                        </div>
                        </c:if>
                        <c:if test="${depCount ne 0 }">
                        <c:forEach items="${depList }" var="list">
                        <div class="box-favoriteList-cell">
                        	<div class="box-favoriteList-img">
                                <div class="box-favoriteList-img-center">
                                	<img src="<c:url value='/images/bank/${list.fin_co_no }.png'/>">
                                </div>
                            </div>
                            <div class="box-favoriteList-info">
                                <div class="box-favoriteCell-title">
                                        <span class="span-favoriteCell-title-bank">${list.kor_co_nm }</span><br>
                                        <span class="span-favoriteCell-title-name">${list.fin_prdt_nm }</span>
                                        <ul>
                                        	<c:forTokens var="joinway" items="${list.join_way}" delims=",">
                                            <li><span>${joinway }</span></li>
                                            </c:forTokens>
                                        </ul>
                                        <button><i class="fa-solid fa-heart"></i></button>
                                </div>
                                <div class="box-favoriteCell-detail">
                                    <ul>
                                        <li>
                                            <span class="span-detailOption-standard">1년기준 (세전)</span>
                                            <span class="span-detailOption-amount">${list.intr_rate }%</span>
                                        </li>
                                        <li>
                                            <span class="span-detailOption-standard">최소</span>
                                            <span class="span-detailOption-amount">${list.save_trm }개월부터</span>
                                        </li>
                                    </ul>
                                    <button><span>자세히 보기</span></button>
                                </div>
                            </div>
                        </div>
                        </c:forEach>
                        </c:if>
                    </div>
                    <div class="box-favoriteList-list 03">
                    <c:set var="penCount" value="${fn:length(penList) }"/>
                    	 <c:if test="${penCount eq 0 }">
                        <div class="box-favoriteList-empty">
                            <div class="box-favoriteList-empty-warning">
                                <i class="fa-solid fa-circle-exclamation"></i>
                                <span>즐겿찾는 상품이 없습니다</span>
                            </div>
                        </div>
                        </c:if>
                        <c:if test="${penCount ne 0 }">
                        <c:forEach items="${penList }" var="list">
                        <div class="box-favoriteList-cell">
                            <div class="box-favoriteList-img">
                                <div class="box-favoriteList-img-center">
                                	<img src="<c:url value='/images/bank/${list.fin_co_no }.png'/>">
                                </div>
                            </div>
                            <div class="box-favoriteList-info">
                                <div class="box-favoriteCell-title">
                                        <span class="span-favoriteCell-title-bank">${list.kor_co_nm }</span><br>
                                        <span class="span-favoriteCell-title-name">${list.fin_prdt_nm }</span>
                                        <ul>
                                        	<c:forTokens var="joinway" items="${list.join_way}" delims=",">
                                            <li><span>${joinway }</span></li>
                                            </c:forTokens>
                                        </ul>
                                        <button><i class="fa-solid fa-heart"></i></button>
                                </div>
                                <div class="box-favoriteCell-detail">
                                    <ul>
                                        <li>
                                            <span class="span-detailOption-standard">연평균 수익률</span>
                                            <span class="span-detailOption-amount">${list.avg_prft_rate }%</span>
                                        </li>
                                    </ul>
                                    <button><span>자세히 보기</span></button>
                                </div>
                            </div>
                        </div>
                        </c:forEach>
                        </c:if>
                    </div>
                    <div class="box-favoriteList-list 04">
                    <c:set var="morCount" value="${fn:length(morList) }"/>
                    	 <c:if test="${morCount eq 0 }">
                        <div class="box-favoriteList-empty">
                            <div class="box-favoriteList-empty-warning">
                                <i class="fa-solid fa-circle-exclamation"></i>
                                <span>즐겿찾는 상품이 없습니다</span>
                            </div>
                        </div>
                        </c:if>
                        <c:if test="${morCount ne 0 }">
                        <c:forEach items="${morList }" var="list">
                        <div class="box-favoriteList-cell">
                            <div class="box-favoriteList-img">
                                <div class="box-favoriteList-img-center">
                                	<img src="<c:url value='/images/bank/${list.fin_co_no }.png'/>">
                                </div>
                            </div>
                            <div class="box-favoriteList-info">
                                <div class="box-favoriteCell-title">
                                        <span class="span-favoriteCell-title-bank">${list.kor_co_nm }</span><br>
                                        <span class="span-favoriteCell-title-name">${list.fin_prdt_nm }</span>
                                        <ul>
                                        	<c:forTokens var="joinway" items="${list.join_way}" delims=",">
                                            <li><span>${joinway }</span></li>
                                            </c:forTokens>
                                        </ul>
                                        <button><i class="fa-solid fa-heart"></i></button>
                                </div>
                                <div class="box-favoriteCell-detail">
                                    <ul>
                                        <li>
                                            <span class="span-detailOption-standard">최저 금리</span>
                                            <span class="span-detailOption-amount">${list.lend_rate_min }%</span>
                                        </li>
                                        <li>
                                            <span class="span-detailOption-standard">최대 한도</span>
                                            <span class="span-detailOption-amount">상품 설명 참조</span>
                                        </li>
                                    </ul>
                                    <button><span>자세히 보기</span></button>
                                </div>
                            </div>
                        </div>
                        </c:forEach>
                        </c:if>
                    </div>
                    <div class="box-favoriteList-list 05">
                    <c:set var="charCount" value="${fn:length(charList) }"/>
                    	 <c:if test="${charCount eq 0 }">
                        <div class="box-favoriteList-empty">
                            <div class="box-favoriteList-empty-warning">
                                <i class="fa-solid fa-circle-exclamation"></i>
                                <span>즐겿찾는 상품이 없습니다</span>
                            </div>
                        </div>
                        </c:if>
                        <c:if test="${charCount ne 0 }">
                        <c:forEach items="${charList }" var="list">
                        <div class="box-favoriteList-cell">
                            <div class="box-favoriteList-img">
                                <div class="box-favoriteList-img-center">
                                	<img src="<c:url value='/images/bank/${list.fin_co_no }.png'/>">
                                </div>
                            </div>
                            <div class="box-favoriteList-info">
                                <div class="box-favoriteCell-title">
                                        <span class="span-favoriteCell-title-bank">${list.kor_co_nm }</span><br>
                                        <span class="span-favoriteCell-title-name">${list.fin_prdt_nm }</span>
                                        <ul>
                                        	<c:forTokens var="joinway" items="${list.join_way}" delims=",">
                                            <li><span>${joinway }</span></li>
                                            </c:forTokens>
                                        </ul>
                                        <button><i class="fa-solid fa-heart"></i></button>
                                </div>
                                <div class="box-favoriteCell-detail">
                                    <ul>
                                        <li>
                                            <span class="span-detailOption-standard">최저 금리</span>
                                            <span class="span-detailOption-amount">${list.lend_rate_min }%</span>
                                        </li>
                                    </ul>
                                    <button><span>자세히 보기</span></button>
                                </div>
                            </div>
                        </div>
                        </c:forEach>
                        </c:if>
                    </div>
                    <div class="box-favoriteList-list 06">
                    <c:set var="crdCount" value="${fn:length(crdList) }"/>
                    	 <c:if test="${crdCount eq 0 }">
                        <div class="box-favoriteList-empty">
                            <div class="box-favoriteList-empty-warning">
                                <i class="fa-solid fa-circle-exclamation"></i>
                                <span>즐겿찾는 상품이 없습니다</span>
                            </div>
                        </div>
                        </c:if>
                        <c:if test="${crdCount ne 0 }">
                        <c:forEach items="${crdList }" var="list">
                        <div class="box-favoriteList-cell">
                            <div class="box-favoriteList-img">
                                <div class="box-favoriteList-img-center">
                                	<img src="<c:url value='/images/bank/${list.fin_co_no }.png'/>">
                                </div>
                            </div>
                            <div class="box-favoriteList-info">
                                <div class="box-favoriteCell-title">
                                        <span class="span-favoriteCell-title-bank">${list.kor_co_nm }</span><br>
                                        <span class="span-favoriteCell-title-name">${list.fin_prdt_nm }</span>
                                        <ul>
                                        	<c:forTokens var="joinway" items="${list.join_way}" delims=",">
                                            <li><span>${joinway }</span></li>
                                            </c:forTokens>
                                        </ul>
                                        <button><i class="fa-solid fa-heart"></i></button>
                                </div>
                                <div class="box-favoriteCell-detail">
                                    <ul>
                                        <li>
                                            <span class="span-detailOption-standard">평균 금리</span>
                                            <span class="span-detailOption-amount">${list.crdt_grad_avg }%</span>
                                        </li>
                                    </ul>
                                    <button><span>자세히 보기</span></button>
                                </div>
                            </div>
                        </div>
                        </c:forEach>
                        </c:if>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- login end -->
	    <c:import url="/WEB-INF/views/layout/footer.jsp" />
	</body>
	<script src="../js/member_mypage.js"></script>
</html>