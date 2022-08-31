<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
	<head>
		<c:import url="/WEB-INF/views/layout/head.jsp" />
		<!-- custom -->
		<link rel="stylesheet" href="<c:url value='/css/member_signup.css'/>">
	</head>
	<body>
	<c:import url="/WEB-INF/views/layout/top.jsp" />
	<section id="signup_section">
        <div class="signup_page wrap">
            <div class="signup_container">
                <form id="form-signup" method="post" action="/signup">
                <div class="box-signup-Email">
                    <div class="process_graph process_graph-01"></div>
                    <h3>먼저 이메일이 필요해요 :)</h3>
                    <div class="box-form-signup-Email">
                        <input type="text" name="memId" id="input-user_id" class="input-user_id" placeholder="이메일을 입력해주세요">
                        <div id="text-Email-check-pass" class="text-process-state">
                            <span>사용 가능한 이메일 입니다.</span>
                            <a href="#">인증번호 받기</a>
                        </div>
                        <div id="text-Email-check-error" class="text-process-state">
                            <span class="span-process-error">사용 중인 이메일 입니다.</span>
                        </div>
                        <div class="box-token_no">
                            <input disabled type="text" id="input-token_no" class="input-token_no" placeholder="인증번호를 입력해주세요">
                            <div class="time"><span></span></div>
                        </div>
                        <div id="text-token-check-error" class="text-process-state">
                            <span class="span-process-error">인증번호를 다시 확인해주세요</span>
                        </div>
                        <button disabled id="btn-Email-next"><span class="btn-span">다음</span></button>
                    </div>
                </div>
                <div class="box-signup-password">
                    <div class="process_graph process_graph-02"></div>
                    <h3>비밀번호 입력</h3>
                    <span class="span-signup-password-title">영문, 숫자, 특수문자 모두 포함한 8자 이상의 비밀번호를 입력해주세요</span>
                    <div class="box-form-signup-password">
                            <div class="box-password-input">
                                <input type="password" name="memPwd" id="input-user_pw" class="input-user_pw" placeholder="비밀번호를 입력해주세요">
                                <i class="fa-solid fa-eye-slash"></i>
                                <i class="fa-solid fa-circle-xmark"></i>
                            </div>
                            <div id="text-password-check-pass" class="text-process-state">
                                <span>보안 상태가 강한 비밀번호입니다.</span>
                            </div>
                            <div id="text-password-check-error" class="text-process-state">
                                <span class="span-process-error">보안 상태가 약합니다. 비밀번호를 다시 확인해 주세요</span>
                            </div>
                            <div class="box-password-reInput">
                                <input type="password" id="input-user_pw-re" class="input-user_pw-re" placeholder="다시 한 번 입력해주세요" readonly>
                                <i class="fa-solid fa-eye-slash"></i>
                                <i class="fa-solid fa-circle-xmark re"></i>
                            </div>
                            <div id="text-password-reCheck-pass" class="text-process-state">
                                <span>비밀번호가 일치합니다</span>
                            </div>
                            <div id="text-password-reCheck-error" class="text-process-state">
                                <span class="span-process-error">비밀번호가 일치하지 않습니다.</span>
                            </div>
                            <span class="span-form-password-content">거의 다 왔어요!</span>
                            <button disabled id="btn-password-next"><span class="btn-span">다음</span></button>
                    </div>
                </div>
                <div class="box-signup-information">
                    <div class="process_graph process_graph-03"></div>
                    <h3>기본 정보 입력</h3>
                    <div class="box-form-signup-information">
                            <input type="text" name="memName" id="input-user_name" class="input-user_name" placeholder="이름을 입력해주세요">
                            <div id="signup_id_process_state" class="signup_process_state"></div>
                            <input type="text" name="memBirth" id="input-user_birth" class="input-user_birth" placeholder="생년월일을 입력해주세요 EX) 19900101" readonly>
                            <div id="text-birth-check-error" class="text-process-state">
                                <span>생년월일을 다시 입력해주세요. EX) 19900101</span>
                            </div>
                            <div class="check_divider">
                                <label class="label-information-checkAgree">
                                    <input type="checkbox" id="checkbox-checkAgree" name="checkbox-checkAgree" value="checkbox-checkAgree">
                                    <a href="#">이용약관</a> 및 <a href="#">개인정보취급방침</a>을 확인하였으며 이에 동의합니다.
                                </label>
                            </div>
                            <button disabled id="btn-information-finish" type="submit"><span class="btn-span">회원가입 완료</span></button>


                            <div class="box-more-information-button">
                                <span class="span-more-information">정보를 더 입력하시면 <br> 더 핏:하게 추천해 드릴게요!</span>
                                <button id="btn-information-next"><span class="btn-span">정보 더 입력하러 가기</span></button>
                            </div>
                    </div>
                </div>
                <div class="box-signup-more-information">
                    <div class="process_graph process_graph-04"></div>
                    <h3>추가 정보 입력</h3>
                    <div class="box-form-signup-more-information">
                            <div class="box-gender-select">
                                <input type="radio" id="radio-gender-select-man" class="radio-gender-select" value="남성" name="memGender">
                                <label for="radio-gender-select-man">남성</label>
                                <input type="radio" id="radio-gender-select-woman" class="radio-gender-select" value="여성" name="memGender">
                                <label for="radio-gender-select-woman">여성</label>
                            </div>
                            <div class="box-bank-select">
                                <label for="btn-user_bank"><span class="span-bank-more-information">주거래 은행 계좌정보 입력</span></label><br>
                                <button id="btn-user_bank" id="btn-user_bank"><span class="span-bank-btn">은행 선택</span></button>
                                <input id="input-user_bank" type="hidden" name="memBank">
                                <button id="btn-more-information-finish" type="submit"><span class="btn-span">정보 입력 완료</span></button>
                            </div>
                    </div>
                </div>
            </form>
            </div>
        </div>
        <div id="modal-signup" class="modal-overlay">
            <div class="modal-window">
                <div class="modal-title">
                    <span class="modal-bankselect-title">은행 선택</span>
                    <div class="modal-bank-close"><i class="fa-solid fa-x"></i></div>
                </div>
                <div class="modal-bank-content">
                    <c:forEach begin="0" end="30" step="1" varStatus="status">
                    <figure class="figure-bank">
                        <div class="figure-bank-img"></div>
                        <input type="hidden" value="대구은행">
                    <figcaption class="caption-bank">대구</figcaption>
                    </figure>
                    <figure class="figure-bank">
                        <div class="figure-bank-img"></div>
                    <figcaption class="caption-bank">
                        <input type="hidden" value="광주은행">
                        광주
                    </figcaption>
                    </figure>
                    </c:forEach>
                </div>
            </div>
        </div>
    </section>
    <!-- login end -->
	    <c:import url="/WEB-INF/views/layout/footer.jsp" />
	</body>
	<script src="../js/signup.js"></script>
</html>