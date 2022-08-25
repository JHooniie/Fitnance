<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
	<head>
		<c:import url="/WEB-INF/views/layout/head.jsp" />
		<!-- custom -->
		<link rel="stylesheet" href="<c:url value='/css/cc_notice.css'/>">
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
	                <span>제목</span>
	                <span>게시일자</span>
	            </div>
	            <c:forEach items="${noticeList}" var="notice">
		            <div class="box-notice-content">
		                <a href="<c:url value='/notice_detail'/>" class="text-notice-title">${notice.noticeTitle}</a>
		                <span class="text-notice-date">${notice.noticeDate}</span>
		            </div>
	            </c:forEach>
	        </section>
	        <!-- 페이지네이션 -->
	        <div class="pagination">
	            <span class="page page-left"><i class="fa-solid fa-angle-left"></i></span>
	            <span class="page page-active">1</span>
	            <span class="page page-right"><i class="fa-solid fa-angle-right"></i></span>
	        </div>
	    </section>
	    <!-- notice end -->
	    <c:import url="/WEB-INF/views/layout/footer.jsp" />
	</body>
</html>