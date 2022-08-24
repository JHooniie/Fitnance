<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!-- 공통으로 넣을 부분 -->
<!-- 사이드 -->
<ul class="navbar-nav bg-primary sidebar sidebar-dark accordion" id="accordionSidebar">
    <!-- 로고 -->
    <a class="sidebar-brand d-flex align-items-center justify-content-center" href="#">
        <img class="w-75" src="<c:url value='/image/lg_fitnance_white.png'/>">
    </a>
    <!-- 구분선 -->
    <hr class="sidebar-divider my-0">

    <!-- 대시보드 -->
    <li class="nav-item">
        <a class="nav-link" href="#">
            <i class="fas fa-fw fa-tachometer-alt"></i>
            <span>Dashboard</span></a>
    </li>
    <hr class="sidebar-divider">

    <!-- 회원관리 타이틀 -->
    <div class="sidebar-heading">
        Member
    </div>
    <!-- 회원관리 메뉴 -->
    <li class="nav-item">
        <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#collapseTwo"
            aria-expanded="true" aria-controls="collapseTwo">
            <i class="fa-solid fa-user-check"></i>
            <span>회원 관리</span>
        </a>
        <div id="collapseTwo" class="collapse" aria-labelledby="headingTwo" data-parent="#accordionSidebar">
            <div class="bg-white py-2 collapse-inner rounded">
                <h6 class="collapse-header">Custom Components:</h6>
                <a class="collapse-item" href="buttons.html">Buttons</a>
                <a class="collapse-item" href="cards.html">Cards</a>
            </div>
        </div>
    </li>
    <hr class="sidebar-divider">

    <!-- 고객센터 관리 타이틀 -->
    <div class="sidebar-heading">
        Customer Center
    </div>

    <!-- 공지사항 -->
    <li class="nav-item active">
        <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#collapsePages"
            aria-expanded="true" aria-controls="collapsePages">
            <i class="fa-solid fa-circle-exclamation"></i>
            <span>공지사항</span>
        </a>
        <div id="collapsePages" class="collapse" aria-labelledby="headingPages" data-parent="#accordionSidebar">
        </div>
    </li>

    <!-- 자주 묻는 질문 -->
    <li class="nav-item">
        <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#collapsePages"
            aria-expanded="true" aria-controls="collapsePages">
            <i class="fa-solid fa-circle-question"></i>
            <span>FAQ</span>
        </a>
    </li>

    <!-- 문의사항 -->
    <li class="nav-item">
        <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#collapsePages"
            aria-expanded="true" aria-controls="collapsePages">
            <i class="fa-solid fa-comments"></i>
            <span>문의사항</span></a>
    </li>
    <!-- Divider -->
    <hr class="sidebar-divider d-none d-md-block">


</ul>
<!-- 사이드 -->
<!-- 공통으로 넣을 부분 end -->