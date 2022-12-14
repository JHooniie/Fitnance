<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<sec:authorize access="isAuthenticated()">
    <sec:authentication property="principal" var="principal" />
</sec:authorize>

<!-- chatbot -->
<div id="boxChatbot">
	<div id="resultBox"></div>
			
	<form id="chatForm">
		<input type="text" id="chatInput" name="chatInput" placeholder="질문을 입력하세요">
		<button type="submit" id="btnChatSubmit"><i class="fa-solid fa-paper-plane"></i></button>
	</form>
</div>
<!-- remote -->
<div class="box-remote">
    <div class="box-top-btn">
        <i class="fa-solid fa-angle-up"></i>
    </div>
    <div class="box-chatbot">
        <img class="img-chatbot-01" src="<c:url value='/images/img_chatbot.png'/>" alt="chatbot">
        <img class="img-chatbot-02" src="<c:url value='/images/img_chatbot_2.png'/>" alt="chatbot">
    </div>        
</div>
<!-- remote end -->
<!-- footer -->
<footer>
      <div class="box-footer wrap">
          <div class="box-cpy-info">
              <span class="text-cpy-name">(주)핏낸스</span>
              <span>대표 <b>정은빈</b> | 개인정보보호책임자 <b>최정훈</b></span>
              <span><b>06192 서울 강남구 선릉로 428 2층 (위워크)</b></span>
              <span>이메일 <b>help@fitnance.com</b> | 마케팅/제휴 문의 <b>marketing@fitnance.com</b></span>
          </div>
          <div class="box-cpy-info-right">
              <img src="<c:url value='/images/lg_fitnance_gray.png'/>">
            <div class="box-cpy-terms">
                <a href="#">개인정보 처리방침</a>
                <a href="#">이용약관</a>
                <a href="<c:url value='/notice'/>">공지사항</a>
            </div>
        </div>
    </div>
</footer>
<script src="<c:url value='/js/common.js'/>"></script>
<script src="<c:url value='/js/papago.js'/>"></script>
<script src="<c:url value='/js/chatbot.js'/>"></script>
<!-- footer -->
</html>