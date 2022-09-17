<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
	<head>
		<c:import url="/WEB-INF/views/admin/layout/admin_head.jsp" />
		<script src="<c:url value='/js/admin/admin_qna.js'/>"></script>
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
	                    <!-- 공지사항 타이틀 -->
	                    <div class="d-sm-flex align-items-center justify-content-between mb-4">
	                        <h1 class="h3 mb-0 text-gray-800">문의 사항</h1>
	                    </div>
	
	                    <!-- 데이터테이블 -->
	                    <div class="card shadow mb-4">
	                        <div class="card-header py-3 form-inline" style="justify-content: space-between;">
	                            <h6 class="m-0 font-weight-bold text-primary">문의 사항</h6>
	                            <div>
	                                <!-- <button type="button" id="addFAQBtn" class="btn btn-primary">등록</button> -->
	                                <button type="button" id="deleteQNABtn" class="btn btn-danger">삭제</button>
	                            </div>                            
	                        </div>
	                        <div class="card-body">
	                            <div class="table-responsive">
	                                <table class="table table-bordered align-middle" id="dataTable" width="100%" cellspacing="0">
	                                    <thead>
	                                        <tr>
	                                            <th width="1%">
	                                                <div class="form-check form-check-inline ml-3">
	                                                    <input class="form-check-input" type="checkbox" id="allCheck">                                                   
	                                                </div>
	                                            </th>
	                                            <th width="7%">No.</th>
	                                            <th width="55%">제목</th>
	                                            <th width="30%">작성자 ID</th>
	                                            <th width="7%">상세보기</th>
	                                        </tr>
	                                    </thead>                                    
	                                    <tbody>
	                                    	<c:forEach items="${qnaList}" var="qna">
	                                    		<tr>
		                                            <td class="align-middle">
		                                                <div class="form-check form-check-inline ml-3">
		                                                    <input class="form-check-input chkDelete" type="checkbox" name="chkDelete" data-qnaIndex="${qna.qIndex}">                                                   
		                                                </div>
		                                            </td>
		                                            <td class="align-middle">${qna.qIndex}</td>
		                                            <td class="align-middle">${qna.qTitle}</td>
		                                            <td class="align-middle">${qna.memId}</td>
		                                            <td class="align-middle">
		                                            	<a href="<c:url value='/admin/QNADetailView/${qna.qIndex}'/>" class="btn btn-light btn-sm">상세보기</a>
		                                            </td>
		                                        </tr>
	                                    	</c:forEach>
	                                    </tbody>
	                                </table>
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