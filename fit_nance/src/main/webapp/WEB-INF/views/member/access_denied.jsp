<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
	<head>
		<c:import url="/WEB-INF/views/layout/head.jsp" />
		<!-- custom -->
		<link rel="stylesheet" href="<c:url value='/css/access_denied.css'/>">
	</head>
	<body>
		<c:import url="/WEB-INF/views/layout/top.jsp" />
		<section id="denied_sector">
        <div class="denied_page wrap">
            <div class="denied_container">
            	<div class="denied-title"><span>접근 제한 페이지</span></div>
                <div class="denied_box">
                   	<img src="<c:url value='/images/access_denied.png'/>">
                    <span>접근 권한이 없는 사용자입니다. </span>
                    <span>문의 사항은 fit:nance 관리자에게 문의해주세요</span>
                    <button id="index_location" type="button" class="Bbutton" onclick="location.href='<c:url value='/'/>'"><span class="btn-span">메인페이지 이동</span></button>
                </div>
            </div>
        </div>
    </section>
    <!-- end -->
	    <c:import url="/WEB-INF/views/layout/footer.jsp" />
	</body>
	<script src="../js/login.js"></script>
</html>