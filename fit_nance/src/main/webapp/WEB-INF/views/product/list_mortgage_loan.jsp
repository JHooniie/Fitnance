<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<sec:authorize access="isAuthenticated()">
    <sec:authentication property="principal" var="principal" />
</sec:authorize>
<!DOCTYPE html>
<html>
	<head> 
		<!-- head -->
		<c:import url="/WEB-INF/views/layout/head.jsp" />
		<!-- css -->
		<link rel="stylesheet" href="<c:url value='/css/list_mortgage_loan.css' />"/>
		<!-- js -->
		<script src="<c:url value='/js/list_mortgage_loan.js' />"></script>
		
		<meta charset="UTF-8">
	</head>
	<body>
		<!-- top.jsp -->
		<c:import url="/WEB-INF/views/layout/top.jsp" />
		<!-- section.jsp -->
		<section id="section">
			<div class="div_background">
				<div class="div_background_wrap wrap">
		            <div class="div_background_title">
		                <span class="background_title_main">
		                    주택 담보<br>
		                    대출
		                </span>
		                <span class="background_title_sub">
		                    내게 맞는 주택담보대출 찾기
		                </span>
		            </div>
		            <div class="div_background_image">
		                <img src="/images/img_mortgage.png">
		            </div>
		        </div>
			</div>
	        <div class="div_list wrap">
	            <div class="panel_filter">
	                <div class="div_prdt_compare">
	                    <div class="btn_prdt_compare">
	                        상품 비교하기
	                    </div>
	                </div>
	                <div class="div_prdt_joinway">
	                    <div class="title_prdt_joinway">가입방법</div>
	                    <div class="option_prdt_joinway">
	                        <div class="btn_prdt_joinway btn_prdt_joinway1">영업점</div>
	                        <div class="btn_prdt_joinway btn_prdt_joinway2">인터넷</div>
	                        <div class="btn_prdt_joinway btn_prdt_joinway3">스마트폰</div>
	                        <div class="btn_prdt_joinway btn_prdt_joinway4">모집인</div>
	                    </div>
	                </div>
	                <div class="div_mrtg_type">
	                    <div class="title_mrtg_type">담보유형</div>
	                    <div class="option_mrtg_type">
	                        <div class="btn_mrtg_type1">아파트</div>
	                        <div class="btn_mrtg_type2">아파트 외</div>
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
	                    <button type="button" class="btn_reset_filter">
	                        <i class="fa-solid fa-rotate-right"></i>
	                        <span>필터 초기화</span>
	                    </button>
	                </div>
	                <div>
	                	<input class="com1" type="hidden">
	                	<input class="com2" type="hidden">
	                	<input class="com3" type="hidden">
	                </div>
	            </div>
	            <c:set var="total_pages" value="${fn:length(hlList)/10+1 }"/>
	            <div class=wrap>
		            <div class="div_search">
		            	<div class="div_search_prdt">
							<input class="input_search_prdt" placeholder="키워드 검색">
							<i class="fa-solid fa-magnifying-glass"></i>
						</div>
		            </div>
				</div>
	            <div id="result_list_prdt" class="panel_list_prdt">
	            <div class="div_search_list">
					<div class="div_list_result">
						<span>검색 결과 ${fn:length(hlList) }개</span>
					</div>
                </div>
		            <div class="div_list_prdt">
		            <c:forEach var="pages" begin="1" end="${total_pages+1 }">
		            	<div class="prdt_result_search prdt${pages }">
		            	<!-- 검색 결과 상품 - 시작 -->
		            		<c:forEach items="${hlList}" var="list" varStatus="status" begin="${(pages-1)*10 }" end="${pages*10-1 }">
		            			<div class="div_prdt">
		            				<div class="div_prdt_info">
		            					<div class="div_ic_co">
		            						<!-- 각 은행 로고 image -->
		            						<img src="<c:url value='/images/bank/${list.fin_co_no}.png'/>">
		           						</div>
		           						<div class="div_prdt_base">
		           							<div class="top_prdt_info">
		           								<div class="div_nm_co">
		           									<span class="prdt_nm_co">${list.kor_co_nm}</span>
		                                        </div>
		                                        <div class="div_nm_prdt">
		                                        	<span class="prdt_nm_loan">${list.fin_prdt_nm}</span>
		                                        	<div class="div_joinway">
		                                        		<c:forTokens var="joinway" items="${list.join_way}" delims=",">
		                                        			<div class="div_joinway_block">
		                                        				<span>${joinway}</span>
		                                       				</div>
		                                   				</c:forTokens>
		                               				</div>
		                           				</div>
		                       				</div>
		                       				<div class="bot_prdt_info">
		                       					<div class="div_lend_rate">
		                       						<span class="lend_rate_title">최저 금리</span>
			                                        <span class="lend_rate_prdt">
			                                        	${list.lend_rate_min }<span>%</span>
		                                        	</span>
		                                       	</div>
		                                       	<div class="div_loan_lmt">
		                                       		<span class="loan_lmt_title">최대 한도</span>
			                                        <span class="loan_lmt_prdt">상품 설명 참조</span>
		                                        </div>
		                                    </div>
		                                </div>
		                            </div>
		                            <div class="div_btn_prdt">
		                           		<div class="div_btn_add">
		                           			<div class="btn_add_compare">
		                           				<i class="fa-solid fa-folder-plus"></i>
		                           				<input type="hidden" value="${list.oIndex }">
	                       					</div>
		                           			<c:if test="${empty principal.username }">
		                           				<div class="btn_add_favorite not_login_favorite" >
		                           					<i class="fa-solid fa-heart"></i>
		                           					<input type="hidden" value="${list.oIndex }">
		                           				</div>
		                           			</c:if>
		                           			<c:if test="${not empty principal.username }">
		                           				<c:set var="a" value="<%=0 %>"/>
		                           				<c:forEach items="${fList }" var="fList">
		                           					<c:if test="${fList.oIndex eq list.oIndex}" >
			                           					<c:set var="a" value="<%=1 %>"/>
			                           					<div class="btn_add_favorite_clicked login_favorite">
			                           						<i class="fa-solid fa-heart"></i>
			                           						<input type="hidden" value="${list.oIndex }">
		                       							</div>
		                           					</c:if>
		                           				</c:forEach>
		                           				<c:if test="${a ne 1}">
		                           					<div class="btn_add_favorite login_favorite">
		                           						<i class="fa-solid fa-heart"></i>
		                           						<input type="hidden" value="${list.oIndex }">
	                       							</div>
		                           				</c:if>
		                           			</c:if>
		           						</div>
		           						<a class="btn_prdt_info" href="<c:url value='/detailMortgageLoan/${list.oIndex}'/>">자세히 보기</a>
			                        </div>
			                    </div>
		                    </c:forEach>
		                    <!-- 검색 결과 상품 - 끝 -->
		                 </div>
		                 </c:forEach>
		                 <div class="page_prdt_list">
	                        <div class="div_page_prev">
	                            <i class="fa-solid fa-chevron-left"></i>
	                        </div>
	                        <div class="div_page_num">
	                        	<c:forEach var="pageNum" begin="1" end="${total_pages }">
	                            	<div class="btn_page page_num${pageNum }">${pageNum }</div>
	                            </c:forEach>
	                        </div>
	                        <div class="div_page_next">
	                            <i class="fa-solid fa-chevron-right"></i>
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