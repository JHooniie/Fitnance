<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>



<!DOCTYPE html>
<html>
	<head>
		
	</head>
	<body>

<h3>파일 업로드</h3>
		<form id="fileUploadForm" method="post" action="<c:url value='/fileUpload'/>" enctype="multipart/form-data">
			파일 : <input type="file" id="uploadFile" name="uploadFile">
			<input type="submit" value="업로드">
		</form>
		
		${originalFileName }


            
	</body>

</html>