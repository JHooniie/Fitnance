<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
	<head>
		<!-- head -->
		<c:import url="/WEB-INF/views/layout/head.jsp" />
		<!-- css -->
		<link rel="stylesheet" href="<c:url value='/css/index.css' />"/>
		<!-- js -->
		<%-- <script src="<c:url value='/js/index.js' />"></script> --%>
	</head>
	<body>
		<c:import url="/WEB-INF/views/layout/top.jsp" />
    
		<%-- 전세자금대출 / 주택담보대출 / 개인신용대출
		<br>
		<a href="<c:url value='/insertCharterLoanBaseList'/>">charterloan - baseList 데이터 넣기</a><br>
		<a href="<c:url value='/insertCharterLoanOptList'/>">charterloan - optionList 데이터 넣기</a>
		
		<br><br><br>
		<a href="<c:url value='/insertHomeLoanBaseList'/>">homeloan - baseList 데이터 넣기</a><br>
		<a href="<c:url value='/insertHomeLoanOptList'/>">homeloan - optionList 데이터 넣기</a>
		
		<br><br><br>
		<a href="<c:url value='/insertPersonalLoanBaseList'/>">personalloan - baseList 데이터 넣기</a><br>
		<a href="<c:url value='/insertPersonalLoanOptList'/>">personalloan - optionList 데이터 넣기</a>
		<br><br><br>
		
		<a href="<c:url value='list_mortgage_loan'/>">주택담보대출 검색 결과 페이지</a><br> --%>
		<section>
			<div class="background_index">
	            <div class="index_main">
	                <div class="index_title_main">
	                    <h1>
	                        <p>모든 금융 상품을</p>
	                        <p>한 눈에 쏙</p>
	                    </h1>
	                </div>
	                <div class="div_scroll">
	                    <img src="/image/angle-down-solid.png">
	                </div>
	                <div class="div_index_img1">
	                    <div class="img_index_main"></div>
	                </div>
	            </div>
	            <div class="index_sub1">
	                <div class="div_index_img2">
	
	                </div>
	                <div class="index_title_sub">
	                    <div class="title_sub_maintitle">
	                        <h2>
	                            <p>각자 원하는 대로</p>
	                            <p>맞춤 추천 상품</p>
	                        </h2>
	                    </div>
	                    <div class="title_sub_subtitle">
	                        <h3>
	                            <p>단 한 번만 검색해도</p>
	                            <p>원하는 맞춤 상품</p>
	                            <p>추천해 드릴게요 너무 좋아요~</p>
	                        </h3>
	                    </div>
	                </div>
	            </div>
	            <div class="index_sub2">
	                <div class="index_title_sub">
	                    <div class="title_sub_maintitle">
	                        <h2>
	                            <p>어느 은행이든,</p>
	                            <p>한 눈에 볼 수 있게</p>
	                        </h2>
	                    </div>
	                    <div class="title_sub_subtitle">
	                        <h3>
	                            <p>여러 은행의 예적금, 수많은 대출</p>
	                            <p>귀찮게 찾아다닐 필요 없이</p>
	                            <p>한 눈에 보여드릴게요</p>
	                        </h3>
	                    </div>
	                </div>
	                <div class="div_index_img2">
	                    
	                </div>
	            </div>
	            <div class="index_sub3">
	                <div class="index_title_sub">
	                    <div class="title_sub_maintitle">
	                        <h2>
	                            <p>이제 금융 상품은</p>
	                            <p>여기, fit:nance에서</p>
	                            <p>확인하세요!</p>
	                        </h2>
	                    </div>
	                </div>
	                <div class="div_index_img3">
	                    
	                </div>
	            </div>
	        </div>
		</section>
		<c:import url="/WEB-INF/views/layout/footer.jsp" />
		
		
	</body>
</html>