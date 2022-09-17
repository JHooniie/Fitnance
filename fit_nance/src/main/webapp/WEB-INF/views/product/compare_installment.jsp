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
		<link rel="stylesheet" href="<c:url value='/css/saving_compare.css'/>"/>
	</head>
	<body>
		<!-- top.jsp -->
		<c:import url="/WEB-INF/views/layout/top.jsp" />
		
		<div class="middle">
        <div class="middle-topbox">
            <div class="middle-text">적금 상품 비교함</div>
        </div>
    </div>
    <div class="wrap">
    <div class="tables">
    	<div class="table1">
        <table >
            <tr><td id="blank1"></td></tr>
            <th id="blank2"></th>
            <tr><td id="title">가입 은행</td></tr>
            <tr><td id="title">가입 대상</td></tr>
            <tr><td id="title">적립 유형</td></tr>
            <tr><td id="title">저축 금리 유형</td></tr>
            <tr><td id="title">가입 방법</td></tr>
            <tr><td id="title">가입 제한</td></tr>
            <tr><td id="title">만기 후 이자율</td></tr>
            <tr><td id="title">우대 조건</td></tr>
            </table>
            </div>
            <div class="table-list">
            <c:forEach items="${installList }" var="list">
        <div class="table2">
        <table>
        	<tr><td id="delete"><a href="<c:url value='/compare_install_delete/${list.oIndex }'/>">삭제하기</a></td></tr>
        	<th id="name">${list.fin_prdt_nm }</th>
        	<tr><td>${list.kor_co_nm }</td></tr>
        	<tr><td>${list.join_member }</td></tr>
        	<tr><td>${list.rsrv_type_nm }</td></tr>
        	<tr><td>${list.intr_rate_type_nm }</td></tr>
        	<tr><td>${list.join_way }</td></tr>
        	<tr><td>${list.join_deny }</td></tr>
        	<tr><td><div class="description">${list.mtrt_int }</div></td></tr>
        	<tr><td><div class="description">${list.spcl_cnd }</div></td></tr>
        	</table>
        </div>
        </c:forEach>
        </div>
        </div>
        <div class="go-to-list"><a href="<c:url value='listInstall'/>">목록으로 돌아가기</a></div>
    </div>
		
				<!-- bottom.jsp -->
		<c:import url="/WEB-INF/views/layout/footer.jsp" />
	</body>
</html>