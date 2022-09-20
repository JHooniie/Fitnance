<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<!DOCTYPE html>
<html>
	<head>
		<script src="<c:url value='/js/result_mortgage_loan.js' />"></script>
	</head>
	<c:set var="total_pages" value="${fn:length(hlList)/10+1 }"/>
	<c:choose>
		<c:when test="${empty hlList}">
			<form id="form_joinwawy" method="post" action="<c:url value='/list_mortgage_loan'/>">
				<div class="div_search_list">
					<div class="div_list_result">
						<span>검색 결과 ${fn:length(hlList) }개</span>
					</div>
					<div class="div_search_prdt">
						<input class="input_search_prdt" placeholder="키워드 검색">
						<i class="fa-solid fa-magnifying-glass"></i>
					</div>
                </div>
            </form>
			<div>
				<span class="no-list"><i class="fa-solid fa-circle-exclamation"></i><br>찾는 상품이 없습니다</span>
			</div>
		</c:when>
		<c:otherwise>
			<form id="form_joinwawy" method="post" action="<c:url value='/list_mortgage_loan'/>">
				<div class="div_search_list">
					<div class="div_list_result">
						<span>검색 결과 ${fn:length(hlList) }개</span>
					</div>
					<div class="div_search_prdt">
						<input class="input_search_prdt" placeholder="키워드 검색">
						<i class="fa-solid fa-magnifying-glass"></i>
					</div>
                </div>
            </form>
            <div class="div_list_prdt">
            
            <c:forEach var="pages" begin="1" end="${total_pages+1 }">
            <%-- ${pages } --%>
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
                       				<div class="btn_add_favorite">
                       					<i class="fa-solid fa-heart"></i>
                       					<input type="hidden" value="${list.oIndex }">
               						</div>
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
		</c:otherwise>
	</c:choose>
	</body>
</html>