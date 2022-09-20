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
		<link rel="stylesheet" href="<c:url value='/css/saving.css'/>"/>
		<!-- js -->
		<script src="<c:url value='/js/list_installment.js' />"></script>
	</head>
	<body>
		<!-- top.jsp -->
		<c:import url="/WEB-INF/views/layout/top.jsp" />
			
		<div class="middle">
	        <div class="back">
	            </div>
	        <div class="wrap">
	        	<div class="m">
			        <div class="middle-text">
			            <ul>
			                <li>돈이 불어나는 습관,<br>
			                적금 상품</li>
			                <li class="middle-sub-text">노력과 꿈을 모아모아, 나를 위한 목돈 마련</li>
			            </ul>
			        </div>
			        <div class="middle-image">
			            <img src="/images/img_savings.png">
			        </div>
		        </div>
		        <div class="middel-bottom">
		            <div>
		                <div class="product-compare-box"><a href="<c:url value='/compareInstall'/>">상품 비교하기</a></div>   
		                <div class="select-box">
		                    <div class="what-select">
		                        <div class="select-title">예치방식</div>
		                        <div class="select-option select-option-rsrv-type1">자유적립식</div>
		                        <div class="select-option select-option-rsrv-type2">정액적립식</div>
		                    </div>
		
		                    <div class="what-select">
		                        <div class="select-title">가입대상</div>
		                        <div class="select-option select-option-join_member1">개인</div>
		                        <div class="select-option select-option-join_member2">기업</div>
		                    </div>
		
		                    <div class="what-select">
		                        <div class="select-title">가입방법</div>
		                        <div class="select-option select-option-join-way1">영업점</div>
		                        <div class="select-option select-option-join-way2">인터넷</div>
		                        <div class="select-option select-option-join-way3">스마트폰</div>
		                    </div>
		
		                    <div class="what-select">
		                        <div class="select-title">가입기간</div>
		                        <div class="select-option-save-trm select-option-save_trm1">3개월</div>
		                        <div class="select-option-save-trm select-option-save_trm2">6개월</div>
		                        <div class="select-option-save-trm select-option-save_trm3">12개월</div>
		                        <div class="select-option-save-trm select-option-save_trm4">24개월</div>
		                        <div class="select-option-save-trm select-option-save_trm5">36개월 이상</div>
		                    </div>
		
		                    <div class="filter-reset"><i class="fa-solid fa-arrow-rotate-right"></i>필터 초기화</div>
		                    
		                </div>
		            </div>

		            <div class="a">
		            <div class="search-box"><input type="text" id="tourName" name="tourName" placeholder="키워드 검색"><div class="search"><i class="fa-solid fa-magnifying-glass"></i></div></div>

		            <div class="result-box">
		                <div class="search-line">
		                    <div class="box">검색 결과 ${fn:length(installList) }개</div>
		                    
		                </div>
		                <div class="item-list">
		                <c:set var="total_pages" value="${fn:length(installList)/31+1 }"/>
		                 <c:forEach var="pages" begin="1" end="${total_pages+1 }">
		                 <div class="prdt_result_search prdt${pages }">
		                	<c:forEach items="${installList }" var="list" varStatus="status" begin="${(pages-1)*31 }" end="${pages*31-1 }">	           			
		                    <div class="item-box-all">
		                        <div class="item-box">
		                            <div class="image-box">
		                            	<img src="<c:url value='/images/bank/${list.fin_co_no}.png'/>">
		                            </div>
		                            <div class="text-box">
		                                <div class="bank-name">${list.kor_co_nm }</div>
		                                <div class="item-line">
		                                    <div class="item-name">${list.fin_prdt_nm }
		                                    <c:forEach items="${list.join_way }" var="jw">
		                                    	<span>${jw}</span>
		                                    </c:forEach></div>
		                                </div>
		                            </div>
		                            <div class="plus-icon plus-icon1" id="${list.oIndex}"><i class="fa-solid fa-folder-plus"></i></div>
		                            <c:if test="${empty principal.username}">
										<div class="plus-icon plus-icon2 no-login" id="${list.oIndex}"><i class="fa-solid fa-heart"></i></div>
									</c:if>
									<c:if test="${not empty principal.username}">
									<c:set var="a" value="<%=0 %>"/>
									<c:forEach items="${fList }" var="list2">
										<c:if test="${list2.oIndex eq list.oIndex }">
											<c:set var="a" value="<%=1 %>"/>
											<div class="plus-icon plus-icon2 yes-login plus-icon-clicked" id="${list.oIndex}"><i class="fa-solid fa-heart"></i></div>
										</c:if>
										
									</c:forEach>
									<c:if test="${a ne 1 }">
										<div class="plus-icon plus-icon2 yes-login" id="${list.oIndex}"><i class="fa-solid fa-heart"></i></div>
									</c:if>
					          		</c:if>
		                        </div>
		                   
		                        <div class="item-box2">
		                            <div class="percent-box">
		                                <div class="percent1">
		                                    <ul>
		                                        <li>1년기준 (세전)</li>
		                                        <li><span>${list.intr_rate }</span>%</li>
		                                    </ul>
		                                </div>
		                                <div class="percent2">
		                                    <ul>
		                                        <li>최대 (세전)</li>
		                                        <li><span>${list.intr_rate2 }</span>%</li>
		                                    </ul>
		                                </div>
		                            </div>
		                            <div class="view-detail"><a href="<c:url value='/detailInstall/${list.oIndex}'/>">자세히 보기</a></div>
		                        </div>
		                    </div>
		                    </c:forEach>
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
		        </div>
	        </div>
	    </div>
		
		<!-- bottom.jsp -->
		<c:import url="/WEB-INF/views/layout/footer.jsp" />
	</body>
</html>