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
		<link rel="stylesheet" href="<c:url value='/css/intro.css'/>"/>
		<!-- js -->
		<!-- 삭제해야함 -->
		
		<meta charset="UTF-8">
	</head>
	<body>
		<!-- top.jsp -->
		<c:import url="/WEB-INF/views/layout/top.jsp" />
		
		<div class="middle wrap">
        <div class="middle1">
            <ul>
                <li>우리 로고 만들 때<br>
                생각했던 의미</li>
                <li>우리 로고 만들 때 생각했던 의미</li>
                <li>여러줄로 적을 예정인 곳</li>
                <li>위에랑 겹치지 않게 뭐라고 적을지~~</li>
            </ul>
        </div>
        <div class="middle2">
            <ul>
                <li><img src="<c:url value='/image/lg_fitnance_b_white.png'/>" class="middle2-image" alt="fit:nacnce"></li>
                <li>가장 핏:한 금융 서비스</li>
                <li>로고에 담긴 의미 등등등</li>
                <li>몇 줄까지 적어야할까</li>
                <li>로고에 담긴 의미 등등등 몇 줄까지 적어야할까로고에 담긴 의미 등</li>
            </ul>
        </div>
        <div class="middle3">
            <div class="middle3-title">
                오시는 길
            </div>
            <div class="middle3-sub">
                <div class="middle3-sub01">
                    <div class="sub1">주소</div>
                    <div class="sub1-detail">서울 강남구 선릉로 428 2층 (위워크)</div>
                </div>
                <div class="middle3-sub02">
                    <div class="sub2">전화번호</div>
                    <div class="sub2-detail">02-2442-0888</div>
                </div>
            </div>
            <div class="middle3-box">                
            </div>
        </div>
    </div>
		
		<!-- bottom.jsp -->
		<c:import url="/WEB-INF/views/layout/footer.jsp" />
	</body>
</html>