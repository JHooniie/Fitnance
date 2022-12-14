<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<sec:authorize access="isAuthenticated()">
    <sec:authentication property="principal" var="principal" />
</sec:authorize>

<c:set var="memBank" value="${principal.memBank}" />
<c:set var="memBirth" value="${principal.memBirth} }"/>
<c:set var="memImg" value="${principal.memImg }"/>
<c:set var="memEmailRecd" value="${principal.getMemEmailRecd() }"/>

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
            <form id="form-upload-profileImg" name="form_update_profileImg" method="post" action="<c:url value='/user/update_memInfo'/>" enctype="multipart/form-data">
                <div class="box-update-profile">
                    <div class="box-update-profileImg">
		               <div class="box-profileImg-overlay"></div>
		               <input type="file" id="input-upload-profileImg" name="input-upload-profileImg">
		               <label id="label-upload-profileImg" for="input-upload-profileImg"></label>
		               <div class="box-update-profileImg-img-center">
		               	<c:choose>
                       		<c:when test="${memImg eq null || memImg eq ''}">
		               			<img id="img-profileImg" src="<c:url value='/images/upload/lg_fitnance_initial_mypage.png'/>">
							</c:when>
		               		<c:when test="${memImg ne null || memImg ne ''}">
		               			<img id="img-profileImg" src="<c:url value='/images/upload/${memImg}'/>">
		               		</c:when>
			            </c:choose>
		               </div>
			       </div>
                    <div class="box-update-profile-content">
                        <div class="box-update-profile-basic">
                            <label for="input-update-profile-Email"><span class="span-update span-update-profile-Email">?????????</span></label>
                            <input type="text" id="input-update-profile-Email" name="memId" value="${principal.username}" readonly>
                            <c:if test="${provider ne 'naver'}">??
	                            <span class="span-update span-update-profile-Email">????????????</span>
	                            <div class="a-update-profile-password"><a href="<c:url value='/user/update-passwordForm'/>">???????????? ????????????</a></div>
	                        </c:if>
                            <label for="input-update-profile-name"><span class="span-update span-update-profile-name">??????</span>
                            <c:if test="${provider eq 'naver'}">??
                            <input type="text" id="input-update-profile-name" name="memName" value="${principal.name}" readonly>
                            </c:if>
                            <c:if test="${provider ne 'naver'}">??
                            <input type="text" id="input-update-profile-name" name="memName" value="${principal.name}">
                            </c:if>
                            </label>
                            <label for="input-update-profile-birth"><span class="span-update span-update-profile-birth">????????????</span></label><br>
                            <div class="div-update-profile-birth">
                            	<input type="hidden" id="input-update-birth" name="memBirth" value="${fn:substring(memBirth,0,9)}">
                                <input type="text" id="input-update-profile-birth-year" name="birth_year" value="${fn:substring(memBirth,0,4)}" placeholder="1990">
                                <div class="update-birth-year">???</div>
                                <input type="text" id="select-update-profile-birth-month" name="birth_month" value="${fn:substring(memBirth,4,6)}" placeholder="1">
                                <div class="update-birth-month">???</div>
                                <input type="text" id="select-update-profile-birth-day" name="birth_day" value="${fn:substring(memBirth,6,8)}" placeholder="1">
                                <div class="update-birth-day">???</div>
                            </div>
                        </div>
                        <div class="box-update-profile-more">
                            <div class="box-update-profile-more-title">
                                <h3>????????? ????????? ??? ???????????????<br>
                                ??? <span>???</span>:?????? ????????? ????????????!</h3>
                            </div>
                            <!-- ???????????? -->
                            <input type="hidden" id="input-update-role" name="memRole" value="${principal.getMemRole()}">
                            <input type="hidden" id="input-update-pwd" name="memPwd" value="${principal.getPassword()}">
                            <input type="hidden" id="input-update-gender" name="memGender" value="${principal.getMemGender()}">
                            <input type="hidden" id="input-update-provider" name="provider" value="${principal.getProvider()}">
                            <input type="hidden" id="input-update-providerId" name="providerId" value="${principal.getProviderId()}">
                            <input type="hidden" id="input-update-certifed" name="certified" value="${principal.getCertified()}">
                            <input type="hidden" id="input-update-memImg" name="memImg" value="${principal.getMemImg()}">

                            <label for="btn-user_bank"><span class="span-bank-more-information">????????? ?????? ???????????? ??????</span></label><br>
                                <button id="btn-user_bank" id="btn-user_bank">
                                    <c:forEach items="${bankList }" var="bank">
                                        <c:if test="${memBank eq bank.memBank}">
                                            <span class="span-bank-btn">${bank.kor_co_nm}</span>
                                        </c:if>   
                                    </c:forEach>
                                </button>
                                <input id="input-user_bank" type="hidden" name="memBank" value="${memBank}">
                                  <input type="checkbox" id="checkbox-checkAgree"<c:if test="${memEmailRecd eq 'Y'}"> checked </c:if>>??
                                  <label for="checkbox-checkAgree" class="label-information-checkAgree">??????/????????? ????????????</label>
                                  <input type="hidden" id="input-update-emailRecd" name="memEmailRecd" value="${memEmailRecd}">
                                <p>????????????????????? ?????? ????????? ???????????? ?????? ??????????????????!</p>
                            </div>
                            <button id="btn-reset-profile" type="reset">????????????</button>
                            <button id="btn-update-profile" type="submit">????????????</button>
                            <div class="a-delete-profile"><a id="a-delete-profile-check" href="<c:url value='/user/withdrawal_passwordCheckForm'/>">?????? ??????</a></div>
                        </div>
                        </form>
                    </div>
                    
          <div id="modal-signup" class="modal-overlay">
            <div class="modal-window">
                <div class="modal-title">
                    <span class="modal-bankselect-title">?????? ??????</span>
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