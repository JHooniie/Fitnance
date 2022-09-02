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
		<link rel="stylesheet" href="<c:url value='/css/faq.css'/>"/>
		<!-- js -->
		<script src="<c:url value='/js/faq.js' />"></script>
		<!-- 삭제해야함 -->
		<meta charset="UTF-8">
		<title>Insert title here</title>
	</head>
	<body>
		<!-- top.jsp -->
		<c:import url="/WEB-INF/views/layout/top.jsp" />
		
		<div class="middle">
        <div class="middle-topbox">
            <div class="topbox-title">무엇을 도와드릴까요?</div>
            <div class="topbox-textbox">
                <i class="fa-solid fa-magnifying-glass"></i>
                <input type="text" id="textbox" name="textbox" placeholder="궁금하신 점이 있다면 검색해주세요">
            </div>
        </div>
        <div class="middle-bottom wrap">
        <div class="a">
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
            </div>
            <div id="faq-search"></div>
            <!--<div class="q-box"><div class="q">인증 메일 하루 한도가 있나요?</div>
            <div class="icon"><i class="fa-solid fa-angle-down"></i></div></div>
            <div class="q-box"><div class="q">아이디를 찾고 싶어요</div>
            <div class="icon"><i class="fa-solid fa-angle-down"></i></div></div>
            <div class="q-box"><div class="q">이메일 인증 메일이 오지 않아요</div>
            <div class="icon"><i class="fa-solid fa-angle-down"></i></div></div>
            <div class="q-box"><div class="q">이메일 인증 메일이 오지 않아요</div>
            <div class="icon"><i class="fa-solid fa-angle-down"></i></div></div>
            <div class="q-box"><div class="q">이메일 인증 메일이 오지 않아요</div>
            <div class="icon"><i class="fa-solid fa-angle-down"></i></div></div>
            <div class="q-box"><div class="q">이메일 인증 메일이 오지 않아요</div>
            <div class="icon"><i class="fa-solid fa-angle-down"></i></div></div>
            <div class="q-box"><div class="q">이메일 인증 메일이 오지 않아요</div>
            <div class="icon"><i class="fa-solid fa-angle-down"></i></div></div>
            <div class="q-box"><div class="q">이메일 인증 메일이 오지 않아요</div>
            <div class="icon"><i class="fa-solid fa-angle-down"></i></div></div>
            <div class="q-box"><div class="q">이메일 인증 메일이 오지 않아요</div>
            <div class="icon"><i class="fa-solid fa-angle-down"></i></div></div> -->
           </div>

    </div>
		
		
		<!-- bottom.jsp -->
		<c:import url="/WEB-INF/views/layout/footer.jsp" />
	</body>
</html>