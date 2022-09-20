<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<sec:authorize access="isAuthenticated()">
    <sec:authentication property="principal" var="principal" />
</sec:authorize>

<c:set var="memImg" value="${principal.memImg }"/>

<!DOCTYPE html>
<html>
	<head>
	</head>
	<body>
       <div class="box-update-profileImg">
           <form id="form-upload-profileImg" name="form_update_profileImg" method="post" action="<c:url value='/profileImg_Upload'/>" enctype="multipart/form-data">
               <div class="box-profileImg-overlay"></div>
               <input type="file" id="input-upload-profileImg" name="input-upload-profileImg">
               <label id="label-upload-profileImg" for="input-upload-profileImg"></label>
               <input type="submit" id="submit-upload-profileImg" value="변경을 원하시면 클릭하세요!">
               <div class="box-update-profileImg-img-center">
               	<img src="<c:url value='/images/upload/${savedFileName}'/>">
               </div>
           </form>
       </div>
	</body>
	<script src="../js/profileImg.js"></script>
</html>