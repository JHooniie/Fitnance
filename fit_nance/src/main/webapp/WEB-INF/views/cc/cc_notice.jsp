<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
	<head>
		<c:import url="/WEB-INF/views/layout/head.jsp" />
	</head>
	<body>
		<c:import url="/WEB-INF/views/layout/top.jsp" />
		<!-- contents -->
	    <section class="sec-recom-title">
	        <div class="wrap">
	            <h2>1:1 맞춤형<br>
	                전월세 대출 추천</h2>
	            <span>피할 수 없다면 편하게 대출 받자!</span>
	            <a href="#">가이드 신청하기</a>
	        </div>
	        <img src="../images/img_sv_loan_01.png">
	    </section>
	    <section class="sec-recom-content">
	        <div class="box-recom-content">
	            <div class="wrap">
	                <img src="../images/img_sv_loan_02.png">
	                <h1>나에게 가장 유리한<br>
	                    전세 ・ 월세<br>
	                    대출을 추천받고</h1>
	            </div>
	        </div>
	        <div class="box-recom-content bg_gray">
	            <div class="wrap">
	                <h1>최대 얼마를<br>
	                    빌릴 수 있는지<br>
	                    확인하고</h1>
	                <img src="../images/img_sv_loan_03.png">
	            </div>
	        </div>
	        <div class="box-recom-content">
	            <div class="wrap">
	                <img src="../images/img_sv_loan_04.png">
	                <h1>각 단계별<br>
	                    준비사항을 한 번에<br>
	                    확인하세요!</h1>
	            </div>
	        </div>
	        <div class="wrap box-recom-notice">
	            <pre>꼭 알아두세요!
	
	 - 본 서비스는 본인 명의의 휴대폰으로 카카오톡 회원가입이 되어있는 사용자를 대상으로 제공됩니다.
	 - 카카오톡 서비스 장애로 인해 메세지 발송 오류가 발생할 수 있습니다.
	 - 본 서비스를 통해 생성된 리포트는 공인인증된 정보가 아닌 사용자 입력 값을 기반으로 합니다.
	    따라서 금융기관 대출심사 과정에서 확정되는 대출조건과 차이가 발생할 수 있음을 알려드립니다.
	            </pre>
	        </div>
	    </section>
	    <!-- contents end -->
	    <c:import url="/WEB-INF/views/layout/footer.jsp" />
	</body>
</html>