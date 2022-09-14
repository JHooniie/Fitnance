<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<sec:authorize access="isAuthenticated()">
    <sec:authentication property="principal" var="principal" />
</sec:authorize>
<c:set var="provider" value="${principal.provider}" />
<c:set var="memId" value="${principal.username}" />
<c:set var="memBank" value="${principal.memBank}" />
<!DOCTYPE html>
<html>
	<head>
		<c:import url="/WEB-INF/views/layout/head.jsp" />
		<!-- custom -->
		<link rel="stylesheet" href="<c:url value='/css/member_update_mypage.css'/>">
	</head>
	<body>
		<c:import url="/WEB-INF/views/layout/top.jsp" />
		<section>
        <div class="mypage_banner"></div>
        <div class="update_myPage wrap">
            <div class="update_mypage_myProfile">
                <div class="box-update-profile">
                    <div class="box-update-profileImg">
                        <div class="box-profileImg-overlay"></div>
                        <div class="box-update-profileImg-img-center">
                            <img src="<c:url value='images/lg_fitnance_initial_mypage.png'/>">
                        </div>
                    </div>
                    <div class="box-update-profile-content">
                        <form id="form-update-profile" action="<c:url value='/user/update_memInfo'/>">
                        <div class="box-update-profile-basic">
                            <label for="input-update-profile-Email"><span class="span-update span-update-profile-Email">이메일</span></label>
                            <input type="text" id="input-update-profile-Email" name="memId" value="${principal.username}" readonly>
                            <c:if test="${provider eq null}"> 
	                            <span class="span-update span-update-profile-Email">비밀번호</span>
	                            <div class="a-update-profile-password"><a href="<c:url value='/update-password'/>">비밀번호 변경하기</a></div>
	                        </c:if>
                            <label for="input-update-profile-name"><span class="span-update span-update-profile-name">이름</span>
                            <c:if test="${provider ne null}"> 
                            <input type="text" id="input-update-profile-name" name="memName" value="${principal.name}" readonly>
                            </c:if>
                            <c:if test="${provider eq null}"> 
                            <input type="text" id="input-update-profile-name" name="memName" value="${principal.name}">
                            </c:if>
                            </label>
                            <label for="input-update-profile-birth"><span class="span-update span-update-profile-birth">생년월일</span></label><br>
                            <div class="div-update-profile-birth">
                                <input type="text" id="input-update-profile-birth-year" name="input-update-profile-birth-year" placeholder="1990">
                                <div class="update-birth-year">년</div>
                                <select id="select-update-profile-birth-month" name="select-update-profile-birth-month">
                                    <option value="01">1</option>
                                </select>
                                <div class="update-birth-month">월</div>
                                <select id="select-update-profile-birth-day" name="select-update-profile-birth-day">
                                    <option value="01">1</option>
                                </select>
                                <div class="update-birth-day">일</div>
                            </div><br>
                        </div>
                        <div class="box-update-profile-more">
                            <div class="box-update-profile-more-title">
                                <h3>아래의 정보를 더 입력하시면<br>
                                더 <span>핏</span>:하게 추천해 드릴게요!</h3>
                            </div>
                            
                            
                            
                            
                            <label for="btn-user_bank"><span class="span-bank-more-information">주거래 은행 계좌정보 입력</span></label><br>
                                <button id="btn-user_bank" id="btn-user_bank">
                                    <c:forEach items="${bankList }" var="bank">
                                        <c:if test="${memBank eq bank.memBank}">
                                            <span class="span-bank-btn">${bank.kor_co_nm}</span>
                                        </c:if>   
                                    </c:forEach>
                                </button>
                                <input id="input-user_bank" type="hidden" name="memBank">
                                    <input type="checkbox" name="memEmailRecd" id="checkbox-checkAgree" value="">
                                    <label class="label-information-checkAgree">광고/마케팅 수신동의</label>
                                <p>수신동의하시면 추천 상품을 이메일로 먼저 알려드릴게요!</p>
                            </div>
                            <button id="btn-reset-profile" type="reset">취소하기</button>
                            <button id="btn-update-profile" type="submit">수정하기</button>
                            <div class="a-delete-profile"><a id="a-delete-profile-check" href="<c:url value='/user/withdrawal_passwordCheckForm'/>">회원 탈퇴</a></div>
                        </div>
                        </form>
                    </div>
          <div id="modal-signup" class="modal-overlay">
            <div class="modal-window">
                <div class="modal-title">
                    <span class="modal-bankselect-title">은행 선택</span>
                    <div class="modal-bank-close"><i class="fa-solid fa-x"></i></div>
                </div>
                <div class="modal-bank-content">
                    <c:forEach items="${bankList }" var="bank">
 					<c:if test="${bank.memBank ne '0'}">
					   		<figure class="figure-bank">
		                        <div class="figure-bank-img">
		                        <img src="<c:url value='/images/bank/${bank.fin_co_no }.png'/>">
		                        </div>
		                        <input class="bank-name" type="hidden" value="${bank.kor_co_nm }">
		                        <input class="bank-code" type="hidden" value="${bank.memBank }">
		                   		<figcaption class="caption-bank">${bank.kor_co_nm }</figcaption>
		                    </figure>
                	</c:if>   
                    </c:forEach>
                </div>
            </div>
        </div>
                </div>
            </div>
        </div>
    </section>
    <!-- login end -->
	    <c:import url="/WEB-INF/views/layout/footer.jsp" />
	</body>
	<script src="../js/member_update_mypage.js"></script>
</html>