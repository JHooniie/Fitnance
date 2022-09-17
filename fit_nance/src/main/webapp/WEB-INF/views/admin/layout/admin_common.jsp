<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!-- 공통으로 넣을 부분 -->
<!-- 사이드 -->
<div class="navbar-nav bg-primary sidebar sidebar-dark accordion" id="accordionSidebar">
    <!-- 로고 -->
    <a class="sidebar-brand d-flex align-items-center justify-content-center" href="<c:url value='/'/>">
        <img class="w-75" src="<c:url value='/images/lg_fitnance_white.png'/>">
    </a>
    <!-- 구분선 -->
    <hr class="sidebar-divider my-0">

    <!-- 대시보드 -->
    <div id="navDashboard" class="nav-item">
        <a class="nav-link" href="<c:url value='/admin/dashboard'/>">
            <i class="fas fa-fw fa-tachometer-alt"></i>
            <span>Dashboard</span>
        </a>
    </div>
    <hr class="sidebar-divider">

    <!-- 회원관리 타이틀 -->
    <div class="sidebar-heading">
        Member
    </div>
    <!-- 회원관리 메뉴 -->
    <div id="navMember" class="nav-item">
        <a class="nav-link collapsed" href="<c:url value='/admin/management'/>" data-toggle="collapse" data-target="#collapseTwo"
            aria-expanded="true" aria-controls="collapseTwo">
            <i class="fa-solid fa-user-check"></i>
            <span>회원 관리</span>
        </a>
    </div>
    <hr class="sidebar-divider">

    <!-- 고객센터 관리 타이틀 -->
    <div class="sidebar-heading">
        Customer Center
    </div>

    <!-- 공지사항 -->
    <div id="navNotice" class="nav-item">
        <a class="nav-link collapsed" href="<c:url value='/admin/notice'/>" data-toggle="collapse" data-target="#collapsePages"
            aria-expanded="true" aria-controls="collapsePages">
            <i class="fa-solid fa-circle-exclamation"></i>
            <span>공지사항</span>
        </a>
    </div>

    <!-- 자주 묻는 질문 -->
    <div id="navFAQ" class="nav-item">
        <a class="nav-link collapsed" href="<c:url value='/admin/faq'/>" data-toggle="collapse" data-target="#collapsePages"
            aria-expanded="true" aria-controls="collapsePages">
            <i class="fa-solid fa-circle-question"></i>
            <span>FAQ</span>
        </a>
    </div>

    <!-- 문의사항 -->
    <div id="navQnA" class="nav-item">
        <a class="nav-link collapsed" href="<c:url value='/admin/qna'/>" data-toggle="collapse" data-target="#collapsePages"
            aria-expanded="true" aria-controls="collapsePages">
            <i class="fa-solid fa-comments"></i>
            <span>문의사항</span>
        </a>
    </div>
    <!-- Divider -->
    <hr class="sidebar-divider d-none d-md-block">


</div>
<!-- 사이드 -->
<!-- 공통으로 넣을 부분 end -->