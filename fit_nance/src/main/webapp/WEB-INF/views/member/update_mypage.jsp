<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
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
                            <img src="<c:url value='image/lg_fitnance_initial_mypage.png'/>">
                        </div>
                    </div>
                    <div class="box-update-profile-content">
                        <form id="form-update-profile" action="">
                        <div class="box-update-profile-basic">
                            <label for="input-update-profile-Email"><span class="span-update span-update-profile-Email">이메일</span></label><br>
                            <input type="text" id="input-update-profile-Email" value="hgd1234@gmail.com" readonly>
                            <span class="span-update span-update-profile-Email">비밀번호</span><br>
                            <div class="a-update-profile-password"><a href="<c:url value='/update-password'/>">비밀번호 변경하기</a></div>
                            <label for="input-update-profile-name"><span class="span-update span-update-profile-name">이름</span></label><br>
                            <input type="text" id="input-update-profile-name" value="" placeholder="홍길동">
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
                            <label for="select-update-user_bank"><span class="span-update span-update-profile-user_bank">주거래 은행 계좌정보 입력</span></label><br>
                                <select name="select-update-user_bank" id="select-update-user_bank" required>
                                    <option id="option-select" value="">은행 선택</option>
                                    <option value="국민">국민</option>
                                    <option value="우리">우리</option>
                                    <option value="카카오">카카오</option>
                                    <option value="신한">신한</option>
                                    <option value="농협">농협</option>
                                    <option value="기업">기업</option>
                                </select>
                                    <input type="checkbox" name="checkbox-checkAgree" id="checkbox-checkAgree" value="checkbox-checkAgree">
                                    <label class="label-information-checkAgree">광고/마케팅 수신동의</label>
                                <p>수신동의하시면 추천 상품을 이메일로 먼저 알려드릴게요!</p>
                            </div>
                            <button id="btn-reset-profile">취소하기</button>
                            <button id="btn-update-profile">수정하기</button>
                            <div class="a-delete-profile"><a href="<c:url value='/update-password'/>">회원 탈퇴</a></div>
                        </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- login end -->
	    <c:import url="/WEB-INF/views/layout/footer.jsp" />
	</body>
	<script src="../js/login.js"></script>
</html>