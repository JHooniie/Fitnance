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
		<link rel="stylesheet" href="<c:url value='/css/list_house_loan.css' />"/>
		<!-- js -->
		<script src="<c:url value='/js/list_house_loan.js' />"></script>
		
		<meta charset="UTF-8">
	</head>
	<body>
		<!-- top.jsp -->
		<c:import url="/WEB-INF/views/layout/top.jsp" />
		<!-- section.jsp -->
		<
		<section id="section">
	        <div class="div_background">
	            <div class="div_background_top"></div>
	            <div class="div_background_bottom"></div>
	            <div class="div_background_title">
	                <span class="background_title_main">
	                    전세 자금<br>
	                    대출
	                </span>
	                <br>
	                <span class="background_title_sub">
	                    내게 맞는 전세자금대출 찾기
	                </span>
	            </div>
	            <div class="div_background_image">
	                <img src="image/img_lease_loan.png">
	            </div>
	        </div>
	        <div class="div_list">
	            <div class="panel_filter">
	                <div class="div_prdt_compare">
	                    <div class="btn_prdt_compare">
	                        상품 비교하기
	                    </div>
	                </div>
	                <div class="div_prdt_joinway">
	                    <div class="title_prdt_joinway">가입방법</div>
	                    <div class="option_prdt_joinway">
	                        <div class="btn_prdt_joinway1">영업점</div>
	                        <div class="btn_prdt_joinway2">인터넷</div>
	                        <div class="btn_prdt_joinway3">스마트폰</div>
	                        <div class="btn_prdt_joinway4">모집인</div>
	                    </div>
	                </div>
	                <div class="div_loan_lmt">
	                    <div class="title_loan_lmt">대출 한도</div>
	                    <div class="option_loan_lmt">
	                        <div class="text_max_lmt">최대</div>
	                        <input class="input_max_lmt">
	                        <div class="text_won_lmt">백만원</div>
	                    </div>
	                </div>
	                <div class="div_rpay_type">
	                    <div class="title_rpay_type">대출상환유형</div>
	                    <div class="option_rpay_type">
	                        <div class="btn_rpay_type1">원리금분할상환</div>
	                        <div class="btn_rpay_type2">원금분할상환</div>
	                        <div class="btn_rpay_type3">만기일시상환</div>
	                    </div>
	                </div>
	                <div class="div_lend_type">
	                    <div class="title_lend_type">대출금리유형</div>
	                    <div class="option_lend_type">
	                        <div class="btn_lend_type1">고정금리</div>
	                        <div class="btn_lend_type2">변동금리</div>
	                    </div>
	                </div>
	                <div class="div_reset_filter">
	                    <div class="btn_reset_filter">
	                        <img class="img_ic_reset" src="../images/arrow-rotate-right-solid.png">
	                        <span>필터 초기화</span>
	                    </div>
	                </div>
	            </div>
	            <div class="panel_list_prdt">
	                <div class="div_search_list">
	                    <div class="div_list_result">
	                        <span>검색 결과 00개</span>
	                    </div>
	                    <div class="div_search_prdt">
	                        <input class="input_search_prdt" placeholder="키워드 검색">
	                        <img src="../images/magnifying-glass-solid.png">
	                    </div>
	                </div>
	                
	                <div class="div_list_prdt">
	                    <div class="prdt_result_search prdt">
	                        <!-- 검색 결과 상품 - 시작 -->
	                        <div class="div_prdt">
	                            <div class="div_prdt_info">
	                                <div class="div_ic_co">
	                                    <!-- 각 은행 로고 image -->
	                                </div>
	                                <div class="div_prdt_base">
	                                    <div class="top_prdt_info">
	                                        <div class="div_nm_co">
	                                            <span class="prdt_nm_co">
	                                                농협은행주식회사
	                                            </span>
	                                        </div>
	                                        <div class="div_nm_prdt">
	                                            <span class="prdt_nm_loan">
	                                                NH주택담보대출
	                                            </span>
	                                            <div class="div_joinway">
	                                                <div class="div_joinway_block">
	                                                    <span>영업점</span>
	                                                </div>
	                                            </div>
	                                        </div>
	                                    </div>
	                                    <div class="bot_prdt_info">
	                                        <!-- <div class="div_lend_prdt"> -->
	                                            <div class="div_lend_rate">
	                                                <span class="lend_rate_title">
	                                                    최저 금리
	                                                </span>
	                                                <span class="lend_rate_prdt">
	                                                    3.33<span>%</span>
	                                                </span>
	                                            </div>
	                                            <div class="div_loan_lmt">
	                                                <span class="loan_lmt_title">
	                                                    최대 한도
	                                                </span>
	                                                <span class="loan_lmt_prdt">
	                                                    5<span>억원</span>
	                                                </span>
	                                            </div>
	                                        <!-- </div> -->
	                                    </div>
	                                </div>
	                            </div>
	                            <div class="div_btn_prdt">
	                                <div class="div_btn_add">
	                                    <div class="btn_add_compare">
	                                        <img class="img_ic_compare" src="../images/folder-plus-solid.png">
	                                    </div>
	                                    <div class="btn_add_favorite">
	                                        <img class="img_ic_favorite" src="../images/heart-solid.png">
	                                    </div>
	                                </div>
	                                <div class="btn_prdt_info">
	                                    자세히 보기
	                                </div>
	                            </div>
	                        </div>
	                        <!-- 검색 결과 상품 - 끝 -->
	                    </div>
	                    <div class="page_prdt_list">
	                        <div class="div_page_prev">
	                            <img src="../images/chevron-left-solid.png">
	                        </div>
	                        <div class="div_page_num">
	                            <div class="page_num_clicked">1</div>
	                            <div class="page_num">2</div>
	                            <div class="page_num">3</div>
	                            <div class="page_num">4</div>
	                        </div>
	                        <div class="div_page_next">
	                            <img src="../images/chevron-right-solid.png">
	                        </div>
	                    </div>
	                </div>
	            </div>
	        </div>
	    </section>
		
		
		<!-- bottom.jsp -->
		<c:import url="/WEB-INF/views/layout/footer.jsp" />
	</body>
</html>