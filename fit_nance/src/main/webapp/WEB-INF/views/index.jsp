<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
	<head>
		<c:import url="/WEB-INF/views/layout/head.jsp" />
	</head>
	<body>
		<c:import url="/WEB-INF/views/layout/top.jsp" />
		<h3>2조 진행 상황</h3><br><br>
		
		<br><br><br>
		<h3>- 허준성</h3>
		<br>
		<a href="<c:url value='/insertCharterLoanBaseList'/>">charterloan - baseList 데이터 넣기</a><br>
		<a href="<c:url value='/insertCharterLoanOptList'/>">charterloan - optionList 데이터 넣기</a>
		
		<br><br><br>
		<a href="<c:url value='/insertHomeLoanBaseList'/>">homeloan - baseList 데이터 넣기</a><br>
		<a href="<c:url value='/insertHomeLoanOptList'/>">homeloan - optionList 데이터 넣기</a>
		
		<br><br><br>
		<a href="<c:url value='/insertPersonalLoanBaseList'/>">personalloan - baseList 데이터 넣기</a><br>
		<a href="<c:url value='/insertPersonalLoanOptList'/>">personalloan - optionList 데이터 넣기</a>
		<br><br><br>
		<c:import url="/WEB-INF/views/layout/footer.jsp" />
	</body>
</html>