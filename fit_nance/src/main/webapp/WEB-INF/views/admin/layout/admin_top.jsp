<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!-- 공통으로 넣을 부분 -->
<!-- 탑 -->
<nav class="navbar navbar-expand navbar-light bg-white topbar mb-4 static-top shadow">
    <ul class="navbar-nav ml-auto">        
        <div class="topbar-divider d-none d-sm-block"></div>

        <!-- 관리자 -->
        <li class="nav-item dropdown no-arrow">
            <a class="nav-link dropdown-toggle" href="<c:url value='/logout'/>" id="userDropdown" role="button"
                data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                <span class="mr-2 d-none d-lg-inline text-gray-600 small">관리자</span>

                <img class="img-profile rounded-circle" src="<c:url value='/image/lg_fitnance_initial_white.png'/>">
            </a>
            <!-- 관리자 정보 -->
            <div class="dropdown-menu dropdown-menu-right shadow animated--grow-in"
                aria-labelledby="userDropdown">
                <a class="dropdown-item" href="#" data-toggle="modal" data-target="#logoutModal">
                    <i class="fas fa-sign-out-alt fa-sm fa-fw mr-2 text-gray-400"></i>
                    Logout
                </a>
            </div>
        </li>
    </ul>
</nav>
<!-- 공통 끝 -->