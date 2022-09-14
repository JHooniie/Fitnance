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
	                <span>${notice.noticeTitle}</span>
	                <span>${notice.noticeDate}</span>
	            </div>
	            <div class="box-notice-content">
	                <pre class="text-notice-content">${notice.noticeContent}</pre>
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