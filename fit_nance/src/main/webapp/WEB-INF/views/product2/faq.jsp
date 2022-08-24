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
                <input type="text" id="textbox" name="textbox" value="궁금하신 점이 있다면 검색해주세요">
            </div>
        </div>
        <div class="middle-bottom wrap">
            <div class="title">자주 묻는 질문(20)</div>
            <div class="q-box"><div class="q">이메일 인증 메일이 오지 않아요</div>
            <div class="icon"><i class="fa-solid fa-angle-up"></i></div></div>
            <div class="a-box">휴대폰 본인인증 시 문자가 도착하지 않았다면, 먼저 스팸문자함을 확인해 주세요.<br>
            만약 스팸문자함에서도 확인이 되지 않는다면, 스팸 차단 앱 혹은 통신사에서 스팸으로 차단된 것은 아닌지 확인해 주세요.
            <br><br>
            ※ PASS 앱 (이동통신사 본인확인) 이용자의 경우, 인증 문자가 발송되지 않는다면 PASS 앱에서 인증번호를 확인해 주세요.
            </div>
            <div class="q-box"><div class="q">인증 메일 하루 한도가 있나요?</div>
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
            <div class="icon"><i class="fa-solid fa-angle-down"></i></div></div>
            <div class="more">더보기 (20/55) <i class="fa-solid fa-angle-down"></i></div>
        </div>

    </div>
		
		
		<!-- bottom.jsp -->
		<c:import url="/WEB-INF/views/layout/footer.jsp" />
	</body>
</html>