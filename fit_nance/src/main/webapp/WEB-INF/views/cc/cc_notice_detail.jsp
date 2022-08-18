<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
	<head>
		<c:import url="/WEB-INF/views/layout/head.jsp" />
		<!-- custom -->
		<link rel="stylesheet" href="<c:url value='/css/cc_notice_detail.css'/>">
	</head>
	<body>
		<c:import url="/WEB-INF/views/layout/top.jsp" />
		<!-- notice -->
	    <section class="wrap">
	        <div class="box-notice-title">
	            <h3>공지사항</h3>
	        </div>
	        <section class="sec-notice-col">
	            <div class="box-notice-title">
	                <span>이메일 인증 메일이 오지 않아요</span>
	                <span>2022.06.20</span>
	            </div>
	            <div class="box-notice-content">
	                <pre class="text-notice-content">안녕하세요. 토스뱅크팀 입니다.
6월 20일 09시 28분부터 12시 00분까지 대외 기관 오류로 토스뱅크 대출이 되지 않았습니다.
고객님들께 불편을 드려 죄송하다는 말씀 올리며, 같은 문제가 재발하지 않도록 개선하겠습니다.
더 노력하는 토스뱅크가 되겠습니다.
감사합니다.</pre>
	            </div>
	            <!-- 목록으로 돌아가기 -->
	            <div class="box-return-list">
	                <a href="<c:url value='/notice'/>" class="btn-return-list">목록으로 돌아가기</a>
	            </div>            
	        </section>        
	    </section>
	    <!-- notice end -->
	    <c:import url="/WEB-INF/views/layout/footer.jsp" />
	</body>
</html>