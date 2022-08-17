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
		<footer>
	        <div class="box-footer wrap">
	            <div class="box-cpy-info">
	                <span class="text-cpy-name">(주)핏낸스</span>
	                <span>대표 <b>정은빈</b> | 개인정보보호책임자 <b>최정훈</b></span>
	                <span><b>06192 서울 강남구 선릉로 428 2층 (위워크)</b></span>
	                <span>이메일 <b>help@fitnance.com</b> | 마케팅/제휴 문의 <b>marketing@fitnance.com</b></span>
	            </div>
	            <div class="box-cpy-info-right">
	                <img src="<c:url value='/image/lg_fitnance_gray.png'/>">
	                <div class="box-cpy-terms">
	                    <a href="#">개인정보 처리방침</a>
	                    <a href="#">이용약관</a>
	                    <a href="#">공지사항</a>
	                </div>
	            </div>
	        </div>
	    </footer>
	</body>
</html>