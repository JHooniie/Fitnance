<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
	<head>
		<c:import url="/WEB-INF/views/admin/layout/admin_head.jsp" />
	</head>
	<body id="page-top">
		<!-- Page Wrapper -->
	    <div id="wrapper">
	    	<!-- 사이드바 -->
			<c:import url="/WEB-INF/views/admin/layout/admin_common.jsp" />
	        <!-- Content Wrapper -->
	        <div id="content-wrapper" class="d-flex flex-column">
	            <!-- 컨텐츠 -->
	            <div id="content">
	                <!-- top -->
	                <c:import url="/WEB-INF/views/admin/layout/admin_top.jsp" />
	                
	                <!-- 컨텐츠 시작 -->
	                <div class="container-fluid">
	                    <!-- 대시보드 타이틀 -->
	                    <div class="d-sm-flex align-items-center justify-content-between mb-4">
	                        <h1 class="h3 mb-0 text-gray-800">Dashboard</h1>
	                    </div>
	
	                    <!-- 대시보드 시작 -->
	                    <div class="row">
	
	                        <!-- 금일 가입자 수 -->
	                        <div class="col-xl-3 col-md-6 mb-4">
	                            <div class="card border-left-primary shadow h-100 py-2">
	                                <div class="card-body">
	                                    <div class="row no-gutters align-items-center">
	                                        <div class="col mr-2">
	                                            <div class="text-xs font-weight-bold text-primary text-uppercase mb-1">
	                                                가입자 수 (Daily)
                                                </div>
	                                            <div class="h5 mb-0 font-weight-bold text-gray-800">
	                                            	1
                                            	</div>
	                                        </div>
	                                        <div class="col-auto">
	                                        	<i class="fa-solid fa-user-plus fa-2x text-gray-300"></i>
	                                        </div>
	                                    </div>
	                                </div>
	                            </div>
	                        </div>
	
	                        <!-- 금월 가입자 수 -->
	                        <div class="col-xl-3 col-md-6 mb-4">
	                            <div class="card border-left-success shadow h-100 py-2">
	                                <div class="card-body">
	                                    <div class="row no-gutters align-items-center">
	                                        <div class="col mr-2">
	                                            <div class="text-xs font-weight-bold text-success text-uppercase mb-1">
	                                               	가입자 수 (Monthly)</div>
	                                            <div class="h5 mb-0 font-weight-bold text-gray-800">25</div>
	                                        </div>
	                                        <div class="col-auto">
	                                        	<i class="fa-solid fa-users fa-2x text-gray-300"></i>
	                                        </div>
	                                    </div>
	                                </div>
	                            </div>
	                        </div>
	
	                        <!-- 문의사항 수 -->
	                        <div class="col-xl-3 col-md-6 mb-4">
	                            <div class="card border-left-info shadow h-100 py-2">
	                                <div class="card-body">
	                                    <div class="row no-gutters align-items-center">
	                                        <div class="col mr-2">
	                                            <div class="text-xs font-weight-bold text-info text-uppercase mb-1">
	                                            	문의사항
	                                            </div>
	                                            <div class="row no-gutters align-items-center">
	                                                <div class="col-auto">
	                                                    <div class="h5 mb-0 mr-3 font-weight-bold text-gray-800">50%</div>
	                                                </div>
	                                                <div class="col">
	                                                    <div class="progress progress-sm mr-2">
	                                                        <div class="progress-bar bg-info" role="progressbar"
	                                                            style="width: 50%" aria-valuenow="50" aria-valuemin="0"
	                                                            aria-valuemax="100"></div>
	                                                    </div>
	                                                </div>
	                                            </div>
	                                        </div>
	                                        <div class="col-auto">
	                                            <i class="fas fa-clipboard-list fa-2x text-gray-300"></i>
	                                        </div>
	                                    </div>
	                                </div>
	                            </div>
	                        </div>
	
	                        <!-- 챗봇 요청 수 -->
	                        <div class="col-xl-3 col-md-6 mb-4">
	                            <div class="card border-left-warning shadow h-100 py-2">
	                                <div class="card-body">
	                                    <div class="row no-gutters align-items-center">
	                                        <div class="col mr-2">
	                                            <div class="text-xs font-weight-bold text-warning text-uppercase mb-1">
	                                                챗봇 요청 수</div>
	                                            <div class="h5 mb-0 font-weight-bold text-gray-800">18</div>
	                                        </div>
	                                        <div class="col-auto">
	                                            <i class="fas fa-comments fa-2x text-gray-300"></i>
	                                        </div>
	                                    </div>
	                                </div>
	                            </div>
	                        </div>
	                    </div>
	
	
	                    <div class="row">
	                        <div class="col-xl-12 col-lg-7">
	                            <div class="card shadow mb-4">
	                                <!-- Card Header - Dropdown -->
	                                <div
	                                    class="card-header py-3 d-flex flex-row align-items-center justify-content-between">
	                                    <h6 class="m-0 font-weight-bold text-primary">가입자 현황</h6>
	                                </div>
	                                <!-- Card Body -->
	                                <div class="card-body">
	                                    <div class="chart-area">
	                                        <canvas id="myAreaChart"></canvas>
	                                    </div>
	                                </div>
	                            </div>
	                        </div>	                        
	                    </div>
	
	                    <!-- Content Row -->
	                    <div class="row mb-4">
	                        <div class="col-lg-6">
	                            <div class="card shadow">
	                                <div class="card-header py-3">
	                                    <h6 class="m-0 font-weight-bold text-primary">문의사항</h6>
	                                </div>
	                                <div class="card-body">
	                                    <h4 class="small font-weight-bold">미 답변 문의사항<span
	                                            class="float-right">20%</span></h4>
	                                    <div class="progress mb-4">
	                                        <div class="progress-bar bg-danger" role="progressbar" style="width: 20%"
	                                            aria-valuenow="20" aria-valuemin="0" aria-valuemax="100"></div>
	                                    </div>
	                                    <h4 class="small font-weight-bold">답변 완료한 문의사항<span
	                                            class="float-right">80%</span></h4>
	                                    <div class="progress mb-4">
	                                        <div class="progress-bar bg-info" role="progressbar" style="width: 80%"
	                                            aria-valuenow="80" aria-valuemin="0" aria-valuemax="100"></div>
	                                    </div>
	                                    <!-- <h4 class="small font-weight-bold">Account Setup <span
	                                            class="float-right">Complete!</span></h4>
	                                    <div class="progress">
	                                        <div class="progress-bar bg-success" role="progressbar" style="width: 100%"
	                                            aria-valuenow="100" aria-valuemin="0" aria-valuemax="100"></div>
	                                    </div> -->
	                                </div>
	                            </div>
                            </div>
	                        <div class="col-lg-6">
	                            <!-- 공지사항 -->
	                            <div class="card shadow">
	                                <div class="card-header py-3">
	                                    <h6 class="m-0 font-weight-bold text-primary">최근 공지사항</h6>
	                                </div>
	                                <div class="card-body">
	                                	<div class="table-responsive">
		                                    <table class="table table-bordered">
		                                    	<thead>
			                                        <tr>
			                                            <th width="70%">제목</th>
			                                            <th width="30%">등록일자</th>
			                                        </tr>
			                                      </thead>
			                                      <tbody>
			                                    	<c:forEach items="${noticeList}" var="notice" begin="0" end="3">
			                                    		<tr>
				                                            <td class="align-middle"><a href="<c:url value='/admin/noticeDetailView/${notice.noticeIndex}'/>" class="">${notice.noticeTitle}</a></td>
				                                            <td class="align-middle">${notice.noticeDate}</td>
				                                        </tr>
			                                    	</c:forEach>
			                                    </tbody>
		                                    </table>
	                                    </div>
	                                </div>
	                            </div>	                            
	                        </div>
	                    </div>
                    </div>
	                <!-- /.container-fluid -->
	            </div>
	            <!-- End of Main Content -->
	            
				<!-- footer -->
				<c:import url="/WEB-INF/views/admin/layout/admin_footer.jsp" />
	        </div>
	        <!-- End of Content Wrapper -->
	
	    </div>
	    <!-- End of Page Wrapper -->
	
	</body>
</html>