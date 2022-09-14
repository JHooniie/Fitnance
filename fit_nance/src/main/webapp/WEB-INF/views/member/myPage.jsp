<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
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
                            <li class="li-menuTab-01"><span>전체 (6)</span></li>
                            <li><span>적금 (6)</span></li>
                            <li><span>예금 (6)</span></li>
                            <li><span>연금 (6)</span></li>
                            <li><span>주택담보대출 (6)</span></li>
                            <li><span>전세자금대출 (6)</span></li>
                            <li><span>신용대출 (6)</span></li>
                        </ul>
                    </div>
                    <div class="box-favoriteList-list">
                        <div class="box-favoriteList-cell">
                            <div class="box-favoriteList-img">
                                <div class="box-favoriteList-img-center"></div>
                            </div>
                            <div class="box-favoriteList-info">
                                <div class="box-favoriteCell-title">
                                        <span class="span-favoriteCell-title-bank">우리은행</span><br>
                                        <span class="span-favoriteCell-title-name">시니어플러스우리적금(증엽우대형)</span>
                                        <ul>
                                            <li><span>영업점</span></li>
                                            <li><span>인터넷</span></li>
                                            <li><span>스마트폰</span></li>
                                        </ul>
                                        <button><i class="fa-solid fa-heart"></i></button>
                                </div>
                                <div class="box-favoriteCell-detail">
                                    <ul>
                                        <li>
                                            <span class="span-detailOption-standard">1년기준 (세전)</span><br>
                                            <span class="span-detailOption-amount">2.35%</span>
                                        </li>
                                        <li>
                                            <span class="span-detailOption-standard">최대 (세전)</span><br>
                                            <span class="span-detailOption-amount">2.75%</span>
                                        </li>
                                    </ul>
                                    <button><span>자세히 보기</span></button>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- login end -->
	    <c:import url="/WEB-INF/views/layout/footer.jsp" />
	</body>
	<script src="../js/login.js"></script>
</html>