<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
	<head>
		<c:import url="/WEB-INF/views/layout/head.jsp" />
		<!-- custom -->
		<link rel="stylesheet" href="<c:url value='/css/member_withdrawal_success.css'/>">
	</head>
	<body>
		<c:import url="/WEB-INF/views/layout/top.jsp" />
		<section id="withdrawal_sector">
        <div class="withdrawal_page wrap">
            <div class="withdrawal_container">
            
            	<div class="withdrawal-title">
            		<span>회원 탈퇴</span>
           		</div>
                <div class="withdrawal_box">
                    <span class="span-withdrawal_box-01"><span>fit</span>:nance를 이용해 주셔서 감사합니다.</span>
                    <span class="span-withdrawal_box-02">더 나은 서비스로 보답하는 <span>fit</span>:nance가 되겠습니다.</span>
                    <button id="index_location" type="button" class="Bbutton" onclick="location.href='<c:url value='/'/>'">메인페이지 이동</button>
                </div>
            </div>
        </div>
    </section>
    <!-- login end -->
	    <c:import url="/WEB-INF/views/layout/footer.jsp" />
	</body>
	<script src="../js/login.js"></script>
</html>