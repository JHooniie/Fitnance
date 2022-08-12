<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Index</title>
	</head>
	<body>
		<h3>2조 진행 상황</h3><br><br>
		
		<a href="<c:url value='/insertCharterLoanBaseList'/>">charterloan - baseList 데이터 넣기</a><br>
		<a href="<c:url value='/insertCharterLoanOptList'/>">charterloan - optionList 데이터 넣기</a>
		
		<br><br><br>
		<a href="<c:url value='/insertHomeLoanBaseList'/>">homeloan - baseList 데이터 넣기</a><br>
		<a href="<c:url value='/insertHomeLoanOptList'/>">homeloan - optionList 데이터 넣기</a>
		
		<br><br><br>
		<a href="<c:url value='/insertPersonalLoanBaseList'/>">personalloan - baseList 데이터 넣기</a><br>
		<a href="<c:url value='/insertPersonalLoanOptList'/>">personalloan - optionList 데이터 넣기</a>
	</body>
</html>