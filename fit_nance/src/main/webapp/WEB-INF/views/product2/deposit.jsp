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
		<link rel="stylesheet" href="<c:url value='/css/deposit.css'/>"/>
		<!-- js -->
		<!-- 삭제해야함 -->
		<meta charset="UTF-8">
		<title>Insert title here</title>
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
                    <li>예금<br>
                    관련 문구</li>
                    <li>정기예금 관련 문구 정기예금 관련 문구</li>
                </ul>
            </div>
            <div class="middle-image">
                <img src="image/img_deposit.png">
            </div>
        </div>
        <div class="middel-bottom">
            <div>
                <div class="product-compare-box">상품 비교하기</div>   
                <div class="select-box">
                    <div class="select-title">가입대상</div>
                    <div class="select-option select-option1">개인</div>
                    <div class="select-option select-option1">기업</div>

                    <div class="select-title">가입방법</div>
                    <div class="select-option select-option1">영업점</div>
                    <div class="select-option select-option1">인터넷</div>
                    <div class="select-option select-option1">스마트폰</div>

                    <div class="select-title">가입기간</div>
                    <div class="select-option select-option2">3개월</div>
                    <div class="select-option select-option2">6개월</div>
                    <div class="select-option select-option2">12개월</div>
                    <div class="select-option select-option2">24개월</div>
                    <div class="select-option select-option3">36개월 이상</div>

                    <div class="filter-reset"><i class="fa-solid fa-arrow-rotate-right"></i>  필터 초기화</div>
                    
                </div>
            </div>
            <div class="result-box">
                <div class="search-line">
                    <div class="box">검색 결과 00개</div>
                    <div class="search-box"><input type="text" id="tourName" name="tourName" value="키워드 검색"><i class="fa-solid fa-magnifying-glass"></i></div>
                </div>
                <div class="item-list">
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
        </div>
        </div>
    </div>
		
		
		<!-- bottom.jsp -->
		<c:import url="/WEB-INF/views/layout/footer.jsp" />
	</body>
</html>