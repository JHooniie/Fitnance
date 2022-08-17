<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Insert title here</title>
		<!-- jquery -->
	    <script src="https://cdn.jsdelivr.net/jquery/latest/jquery.min.js"></script>
	    <!-- font awesome -->
	    <script src="https://kit.fontawesome.com/fa5522895a.js"></script>
	    <!-- custom -->
		<link rel="stylesheet" href="<c:url value='/css/common.css'/>">
		<script src="<c:url value='/js/common.js'/>"></script>
	</head>
	<body>
		<!-- top menu -->
	    <!-- CSS 네이밍의 조합은 '형태_의미_순서_상태'을 기본 순서로 사용한다. -->
	    <header>
	        <div class="box-nav wrap">
	            <!-- logo -->
	            <a href="<c:url value='/'/>"><img src="<c:url value='/image/lg_fitnance.png'/>" alt="fit:nacnce"></a>
	            <!-- menu-top -->
	            <nav class="box-menu-default">
	                <div class="box-menu-top">
	                    <ul>
	                        <li><a href="#">회사소개</a></li>
	                        <li class="li-prd-info"><a href="#">상품안내</a></li>
	                        <li class="li-cal"><a href="#">계산기</a></li>
	                        <li class="li-cus-service"><a href="#">고객센터</a></li>
	                        <li class="li-lang">
	                            <span class="span-lang-kor span-lang-active">KOR</span>
	                            |
	                            <span class="span-lang-eng span-lang-inactive">ENG</span>
	                        </li>
	                        <li>
	                            <div class="btn-login"><i class="fa-solid fa-user"></i></div>
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
	                <li><a href="#">상품 한눈에 보기</a></li>
	                <li><a href="#">전월세 대출 추천</a></li>
	            </ul>
	            <ul>
	                <li>예/적금</li>
	                <li><a href="#">적금 상품</a></li>
	                <li><a href="#">예금 상품</a></li>
	                <li><a href="#">연금 저축</a></li>
	            </ul>
	            <ul>
	                <li>대출</li>
	                <li><a href="#">주택 담보 대출</a></li>
	                <li><a href="#">전세 자금 대출</a></li>
	                <li><a href="#">신용 대출</a></li>
	            </ul>
	        </div>
	        <!-- 계산기 -->
	        <div class="box-menu-03-bottom li-cal wrap">
	            <ul>
	                <li>목돈 계산기</li>
	                <li><a href="#">적금 계산기</a></li>
	                <li><a href="#">목돈 모으기 계산기</a></li>
	            </ul>
	            <ul>
	                <li>대출 계산기</li>
	                <li><a href="#">대출 이자 계산기</a></li>
	            </ul>
	            <ul>
	                <li>연말정산 계산기</li>
	                <li><a href="#">카드/현금 연말정산 계산기</a></li>
	            </ul>
	        </div>
	        <!-- 고객센터 -->
	        <div class="box-menu-04-bottom li-cus-service wrap">
	            <ul>
	                <li>이용 안내</li>
	                <li><a href="#">자주 묻는 질문</a></li>
	                <li><a href="#">공지사항</a></li>
	            </ul>
	            <ul>
	                <li>문의하기</li>
	                <li><a href="#">서비스 이용 문의</a></li>
	            </ul>
	        </div>
	    </header>
	</body>
</html>