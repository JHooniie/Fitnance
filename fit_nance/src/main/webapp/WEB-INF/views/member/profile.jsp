<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>



<!DOCTYPE html>
<html>
	<head>
		<c:import url="/WEB-INF/views/layout/head.jsp" />
		<!-- custom -->
		<link rel="stylesheet" href="<c:url value='/css/member_signup.css'/>">
	</head>
	<body>
	
	<c:import url="/WEB-INF/views/layout/top.jsp" />
	<body>
<br><br><br><br><br><br><br><br><br><br><br><br>
<br><br><br><br><br><br><br><br><br><br><br><br><br><br>
<h3>파일 업로드</h3>
		<form id="fileUploadForm" name="frm" method="post" action="<c:url value='/profileImg_Upload2'/>" enctype="multipart/form-data">
			파일 : <input type="file" id="uploadFile" name="uploadFile">
				<label for="uploadFile">dfsafsd</label>
			<!-- <input type="submit" value="업로드"> -->
		</form>

		<img src="<c:url value='/images/upload/${savedFileName}'/>" >

            
	</body>
	<script src="../js/profileImg.js"></script>
</html>