<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<sec:authorize access="isAuthenticated()">
    <sec:authentication property="principal" var="principal" />
</sec:authorize>

<header>
    <div class="box-nav wrap">
        <!-- logo -->
        <a href="<c:url value='/'/>"><img src="<c:url value='/images/lg_fitnance.png'/>" alt="fit:nacnce"></a>
        <!-- menu-top -->
        <nav class="box-menu-default">
            <div class="box-menu-top">
                <ul>
                    <li class="li-intro"><a href="<c:url value='/intro'/>">회사소개</a></li>
                    <li class="li-prd-info">상품안내</li>
                    <li class="li-cal">계산기</li>
                    <li class="li-cus-service">고객센터</li>
                    <li class="li-lang">
                        <span class="span-lang-kor span-lang-active">KOR</span>
                        <span class="span-lang-divider">|</span>
                        <span class="span-lang-eng span-lang-inactive">ENG</span>
                       	<form>
                       		<input type="hidden" value="" id="pathInput" name="pathInput">
                       	</form>
                    </li>
                    <li>
                    	<sec:authorize access="isAnonymous()">
	                        <a class="btn-login" href="<c:url value='/loginForm'/>">
	                    		<i class="fa-solid fa-user"></i>
	                        </a>
                        </sec:authorize>
                        <sec:authorize access="hasAnyRole('ROLE_USER')">
	                        <a class="btn-login" href="<c:url value='/mypage'/>">
	                        	<i class="fa-solid fa-user"></i>
	                        </a>
                        </sec:authorize>
                       <sec:authorize access="hasAnyRole('ROLE_ADMIN')">
	                        <a class="btn-login" href="<c:url value='/admin/dashboard'/>">
	                        	<i class="fa-solid fa-user"></i>
	                        </a>
                        </sec:authorize>
                    </li>
                </ul>
            </div>
        </nav>
    </div>
    <!-- 회사소개는 바텀 없음 -->
    <!-- 상품안내 -->
    <div class="box-menu-02-bottom li-prd-info wrap">
        <ul>
            <li>상품 추천</li>
            <li><a href="<c:url value='/prd_all'/>">상품 한눈에 보기</a></li>
            <li><a href="<c:url value='/prd_recom'/>">예/적금 상품 추천</a></li>
        </ul>
        <ul>
            <li>예/적금</li>
            <li><a href="<c:url value='/listInstall'/>">적금 상품</a></li>
            <li><a href="<c:url value='/listDeposit'/>">예금 상품</a></li>
            <li><a href="<c:url value='/listPension'/>">연금 저축</a></li>
        </ul>
        <ul>
            <li>대출</li>
            <li><a href="<c:url value='/listMortgageLoan'/>">주택 담보 대출</a></li>
            <li><a href="<c:url value='/listCharterLoan'/>">전세 자금 대출</a></li>
            <li><a href="<c:url value='/listCreditLoan'/>">신용 대출</a></li>
        </ul>
    </div>
    <!-- 계산기 -->
    <div class="box-menu-03-bottom li-cal wrap">
        <ul>
            <li>목돈 계산기</li>
            <li><a href="<c:url value='/calc_deposit'/>">적금 계산기</a></li>
            <li><a href="<c:url value='/calc_lump'/>">목돈 모으기 계산기</a></li>
        </ul>
        <ul>
            <li>대출 계산기</li>
            <li><a href="<c:url value='/calc_rpayment'/>">대출 이자 계산기</a></li>
        </ul>
        <ul>
            <li>연말정산 계산기</li>
            <li><a href="<c:url value='/calc_tax'/>">카드/현금 연말정산 계산기</a></li>
        </ul>
    </div>
    <!-- 고객센터 -->
    <div class="box-menu-04-bottom li-cus-service wrap">
        <ul>
            <li>이용 안내</li>
            <li><a href="<c:url value='/faq'/>">자주 묻는 질문</a></li>
            <li><a href="<c:url value='/notice'/>">공지사항</a></li>
        </ul>
        <ul>
            <li>문의하기</li>
            <li><a href="<c:url value='/cc_inquire'/>">서비스 이용 문의</a></li>
        </ul>
    </div>
</header>