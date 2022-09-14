<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<!DOCTYPE html>
<html>
	<head>
		<c:import url="/WEB-INF/views/layout/head.jsp" />
		<!-- css -->
		<link rel="stylesheet" href="<c:url value='/css/faq.css'/>"/>
	</head>
	<body>
	<div class="title">자주 묻는 질문(${fn:length(FAQList) })</div>
		<c:choose>
	            <c:when test="${fn:length(FAQList) le 20}">
		            <div>
			            <c:forEach items="${FAQList }" var="list">
			            <div class="q-box"><div class="q">${list.FAQTitle }</div>
			            <div class="icon"><i class="fa-solid fa-angle-down"></i></div></div>
			            <div class="a-box">${list.FAQContent }
			            </div>
			            </c:forEach>
			        </div>
			        <div class="more">더보기 (${fn:length(FAQList) }/${fn:length(FAQList) }) <i class="fa-solid fa-angle-down"></i></div>    
	            </c:when>
	            <c:otherwise>
	            	<div class="20-items">
	            		<c:forEach var="i" begin="0" end="19">
	            			<div class="q-box"><div class="q">${FAQList[i].FAQTitle }</div>
				            <div class="icon"><i class="fa-solid fa-angle-down"></i></div></div>
				            <div class="a-box">${FAQList[i].FAQContent }</div>
	            		</c:forEach>
	            	</div>
	            		<div class="more-down">더보기 (20/${fn:length(FAQList) }) <i class="fa-solid fa-angle-down"></i></div>
	            	<div class="more-items">
	            		<c:forEach var="i" begin="20" end="${fn:length(FAQList)-1 }">
	            			<div class="q-box"><div class="q">${FAQList[i].FAQTitle }</div>
				            <div class="icon"><i class="fa-solid fa-angle-down"></i></div></div>
				            <div class="a-box">${FAQList[i].FAQContent }</div>
	            		</c:forEach>
	            		</div>
	            		<div class="more-up">더보기 (${fn:length(FAQList) }/${fn:length(FAQList) }) <i class="fa-solid fa-angle-up"></i></div>
	            </c:otherwise>
            </c:choose>
	</body>
</html>