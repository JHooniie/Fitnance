<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%-- <%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %> --%>
<%-- <sec:authorize access="!isAuthenticated()">
  <sec:authentication property="principal" var="principal"/>
</sec:authorize> --%>
<meta charset="UTF-8">
<title>fit:nance - 금융 상품을 한눈에 쏙</title>
<!-- favicon -->
<link rel="shortcut icon" href="<c:url value='image/lg_fitnance_initial.ico'/>">
<!-- jquery -->
<script src="https://cdn.jsdelivr.net/jquery/latest/jquery.min.js"></script>
<!-- font awesome -->
<script src="https://kit.fontawesome.com/fa5522895a.js"></script>
<!-- custom -->
<link rel="stylesheet" href="<c:url value='/css/common.css'/>">
<script src="<c:url value='/js/common.js'/>"></script>