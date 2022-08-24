<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>fit:nance admin</title>
	    <link href="<c:url value='/css/admin/bootstrap.min.css'/>" rel="stylesheet">
	    
	    <!-- Custom styles for this template -->
	    <link href="<c:url value='/css/admin/admin_login.css'/>" rel="stylesheet">
	    <link href="<c:url value='/css/admin/bootstrap_custom.css'/>" rel="stylesheet">
	</head>
	<body>
		<main class="form-signin w-100 m-auto">
		  <form>
		    <div class="box-logo">
		        <img class="mb-5 w-50" src="<c:url value='/image/lg_fitnance.png'/>" alt="fit:nance">
		    </div>    
		
		    <div class="form-floating mb-3">
		        <input type="email" class="form-control" id="floatingInput" placeholder="name@example.com">
		        <label for="floatingInput">이메일</label>
		    </div>
		    <div class="form-floating">
		      <input type="password" class="form-control" id="floatingPassword" placeholder="Password">
		      <label for="floatingPassword">비밀번호</label>
		    </div>
		
		    <div class="checkbox mb-3">
		      <label class="mt-2">
		        <input type="checkbox" value="remember-me"> 아이디 기억하기
		      </label>
		    </div>
		    <button class="w-100 btn btn-lg btn-primary" type="submit">로그인</button>
		  </form>
		</main>
	</body>
</html>