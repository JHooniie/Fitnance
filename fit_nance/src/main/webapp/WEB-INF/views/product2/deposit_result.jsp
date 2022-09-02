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
		<meta charset="UTF-8">
		<title>Insert title here</title>
	</head>
	<body>
		<div class="result-box">
                <div class="search-line">
                    <div class="box">검색 결과 ${fn:length(dpList) }개</div>
                    <div class="search-box"><input type="text" id="tourName" name="tourName" placeholder="키워드 검색"><i class="fa-solid fa-magnifying-glass"></i></div>
                </div>
                <div class="item-list">
                <c:forEach items="${dpList }" var="list">
                <c:set var="index" value="${list.oIndex}"/>
	                	<% 
	           				int index= (int)pageContext.getAttribute("index");
	           			%>
                    <div class="item-box-all">
                        <div class="item-box">
                            <div class="image-box">
                            	<img src="<c:url value='/image/bank/${list.fin_co_no}.png'/>">
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
                            <div class="plus-icon"><i class="fa-solid fa-folder-plus"></i></div>
                            <div class="plus-icon"><i class="fa-solid fa-heart"></i></div>
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
                                        <li>최소</li>
                                        <li><span>${list.save_trm }</span>개월부터</li>
                                    </ul>
                                </div>
                            </div>
                            <div class="view-detail"><a href="<c:url value='deposit_detail?index=${index }'/>">자세히 보기</a></div>
                        </div>
                    </div>
                    </c:forEach>
                    <!-- <div class="item-box-all">
                        <div class="item-box">
                            <div class="image-box"></div>
                            <div class="text-box">
                                <div class="bank-name">우리은행</div>
                                <div class="item-line">
                                    <div class="item-name">우리 SUPER정기예금<span>영업점</span><span>인터넷</span><span>스마트폰</span></spna></div>
                                </div>
                            </div>
                            <div class="plus-icon"><i class="fa-solid fa-folder-plus"></i></div>
                            <div class="plus-icon"><i class="fa-solid fa-heart"></i></div>
                        </div>
                   
                        <div class="item-box2">
                            <div class="percent-box">
                                <div class="percent1">
                                    <ul>
                                        <li>1년기준 (세전)</li>
                                        <li><span>2.4</span>%</li>
                                    </ul>
                                </div>
                                <div class="percent2">
                                    <ul>
                                        <li>최소</li>
                                        <li><span>6</span>개월부터</li>
                                    </ul>
                                </div>
                            </div>
                            <div class="view-detail">자세히 보기</div>
                        </div>
                    </div>
                    <div class="item-box-all">
                        <div class="item-box">
                            <div class="image-box"></div>
                            <div class="text-box">
                                <div class="bank-name">우리은행</div>
                                <div class="item-line">
                                    <div class="item-name">우리 SUPER정기예금<span>영업점</span><span>인터넷</span><span>스마트폰</span></spna></div>
                                </div>
                            </div>
                            <div class="plus-icon"><i class="fa-solid fa-folder-plus"></i></div>
                            <div class="plus-icon"><i class="fa-solid fa-heart"></i></div>
                        </div>
                   
                        <div class="item-box2">
                            <div class="percent-box">
                                <div class="percent1">
                                    <ul>
                                        <li>1년기준 (세전)</li>
                                        <li><span>2.4</span>%</li>
                                    </ul>
                                </div>
                                <div class="percent2">
                                    <ul>
                                        <li>최소</li>
                                        <li><span>6</span>개월부터</li>
                                    </ul>
                                </div>
                            </div>
                            <div class="view-detail">자세히 보기</div>
                        </div>
                    </div>
                    <div class="item-box-all">
                        <div class="item-box">
                            <div class="image-box"></div>
                            <div class="text-box">
                                <div class="bank-name">우리은행</div>
                                <div class="item-line">
                                    <div class="item-name">우리 SUPER정기예금<span>영업점</span><span>인터넷</span><span>스마트폰</span></spna></div>
                                </div>
                            </div>
                            <div class="plus-icon"><i class="fa-solid fa-folder-plus"></i></div>
                            <div class="plus-icon"><i class="fa-solid fa-heart"></i></div>
                        </div>
                   
                        <div class="item-box2">
                            <div class="percent-box">
                                <div class="percent1">
                                    <ul>
                                        <li>1년기준 (세전)</li>
                                        <li><span>2.4</span>%</li>
                                    </ul>
                                </div>
                                <div class="percent2">
                                    <ul>
                                        <li>최소</li>
                                        <li><span>6</span>개월부터</li>
                                    </ul>
                                </div>
                            </div>
                            <div class="view-detail">자세히 보기</div>
                        </div>
                    </div>
                    <div class="item-box-all">
                        <div class="item-box">
                            <div class="image-box"></div>
                            <div class="text-box">
                                <div class="bank-name">우리은행</div>
                                <div class="item-line">
                                    <div class="item-name">우리 SUPER정기예금<span>영업점</span><span>인터넷</span><span>스마트폰</span></spna></div>
                                </div>
                            </div>
                            <div class="plus-icon"><i class="fa-solid fa-folder-plus"></i></div>
                            <div class="plus-icon"><i class="fa-solid fa-heart"></i></div>
                        </div>
                   
                        <div class="item-box2">
                            <div class="percent-box">
                                <div class="percent1">
                                    <ul>
                                        <li>1년기준 (세전)</li>
                                        <li><span>2.4</span>%</li>
                                    </ul>
                                </div>
                                <div class="percent2">
                                    <ul>
                                        <li>최소</li>
                                        <li><span>6</span>개월부터</li>
                                    </ul>
                                </div>
                            </div>
                            <div class="view-detail">자세히 보기</div>
                        </div>
                    </div>
                    <div class="item-box-all">
                        <div class="item-box">
                            <div class="image-box"></div>
                            <div class="text-box">
                                <div class="bank-name">우리은행</div>
                                <div class="item-line">
                                    <div class="item-name">우리 SUPER정기예금<span>영업점</span><span>인터넷</span><span>스마트폰</span></spna></div>
                                </div>
                            </div>
                            <div class="plus-icon"><i class="fa-solid fa-folder-plus"></i></div>
                            <div class="plus-icon"><i class="fa-solid fa-heart"></i></div>
                        </div>
                   
                        <div class="item-box2">
                            <div class="percent-box">
                                <div class="percent1">
                                    <ul>
                                        <li>1년기준 (세전)</li>
                                        <li><span>2.4</span>%</li>
                                    </ul>
                                </div>
                                <div class="percent2">
                                    <ul>
                                        <li>최소</li>
                                        <li><span>6</span>개월부터</li>
                                    </ul>
                                </div>
                            </div>
                            <div class="view-detail">자세히 보기</div>
                        </div>
                    </div>
                    <div class="item-box-all">
                        <div class="item-box">
                            <div class="image-box"></div>
                            <div class="text-box">
                                <div class="bank-name">우리은행</div>
                                <div class="item-line">
                                    <div class="item-name">우리 SUPER정기예금<span>영업점</span><span>인터넷</span><span>스마트폰</span></spna></div>
                                </div>
                            </div>
                            <div class="plus-icon"><i class="fa-solid fa-folder-plus"></i></div>
                            <div class="plus-icon"><i class="fa-solid fa-heart"></i></div>
                        </div>
                   
                        <div class="item-box2">
                            <div class="percent-box">
                                <div class="percent1">
                                    <ul>
                                        <li>1년기준 (세전)</li>
                                        <li><span>2.4</span>%</li>
                                    </ul>
                                </div>
                                <div class="percent2">
                                    <ul>
                                        <li>최소</li>
                                        <li><span>6</span>개월부터</li>
                                    </ul>
                                </div>
                            </div>
                            <div class="view-detail">자세히 보기</div>
                        </div>
                    </div>
                    <div class="item-box-all">
                        <div class="item-box">
                            <div class="image-box"></div>
                            <div class="text-box">
                                <div class="bank-name">우리은행</div>
                                <div class="item-line">
                                    <div class="item-name">우리 SUPER정기예금<span>영업점</span><span>인터넷</span><span>스마트폰</span></spna></div>
                                </div>
                            </div>
                            <div class="plus-icon"><i class="fa-solid fa-folder-plus"></i></div>
                            <div class="plus-icon"><i class="fa-solid fa-heart"></i></div>
                        </div>
                   
                        <div class="item-box2">
                            <div class="percent-box">
                                <div class="percent1">
                                    <ul>
                                        <li>1년기준 (세전)</li>
                                        <li><span>2.4</span>%</li>
                                    </ul>
                                </div>
                                <div class="percent2">
                                    <ul>
                                        <li>최소</li>
                                        <li><span>6</span>개월부터</li>
                                    </ul>
                                </div>
                            </div>
                            <div class="view-detail">자세히 보기</div>
                        </div>
                    </div>
                    <div class="item-box-all">
                        <div class="item-box">
                            <div class="image-box"></div>
                            <div class="text-box">
                                <div class="bank-name">우리은행</div>
                                <div class="item-line">
                                    <div class="item-name">우리 SUPER정기예금<span>영업점</span><span>인터넷</span><span>스마트폰</span></spna></div>
                                </div>
                            </div>
                            <div class="plus-icon"><i class="fa-solid fa-folder-plus"></i></div>
                            <div class="plus-icon"><i class="fa-solid fa-heart"></i></div>
                        </div>
                   
                        <div class="item-box2">
                            <div class="percent-box">
                                <div class="percent1">
                                    <ul>
                                        <li>1년기준 (세전)</li>
                                        <li><span>2.4</span>%</li>
                                    </ul>
                                </div>
                                <div class="percent2">
                                    <ul>
                                        <li>최소</li>
                                        <li><span>6</span>개월부터</li>
                                    </ul>
                                </div>
                            </div>
                            <div class="view-detail">자세히 보기</div>
                        </div>
                    </div>-->
                    <div class="page-list">
                        <div class="page-icon"><i class="fa-solid fa-angle-left"></i></div>
                        <div class="page-num">
                            <div class="page-num1">1</div>
                            <div class="page-num2">2</div>
                            <div class="page-num3">3</div>
                        </div>
                        <div class="page-icon"><i class="fa-solid fa-angle-right"></i></div>
                    </div>
                </div>
            </div>
              
            
	</body>
</html>