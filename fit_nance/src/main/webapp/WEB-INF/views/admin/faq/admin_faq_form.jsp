<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
	<head>
		<c:import url="/WEB-INF/views/admin/layout/admin_head.jsp" />
		<!--  -->
		<link rel="stylesheet" href="<c:url value='/css/admin/admin_notice_form.css'/>">
		<script src="<c:url value='/js/admin/admin_faq_form.js'/>"></script>
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
	
	                    <!-- 공지사항 등록 -->
	                    <div class="d-sm-flex align-items-center justify-content-between mb-4">
	                        <h1 class="h3 mb-0 text-gray-800">FAQ 등록</h1>
	                    </div>
	
	                    <div class="card shadow mb-4">
	                        <div class="card-body">
	                            <div class="table-responsive">
	                                <form method="post" action="<c:url value='/admin/insertFAQ'/>">
	                                    <table class="table table-bordered" width="100%" cellspacing="0">
	                                        <tr>
	                                            <th class="align-middle">제목</th>
	                                            <td>
	                                                <input type="text" name="FAQTitle" id="FAQTitle" class="form-control" placeholder="제목을 입력해주세요">
	                                            </td>
	                                        </tr>
	                                        <tr>
	                                            <th class="align-middle">내용</th>
	                                            <td>
	                                                <textarea id="summernote" name="FAQContent"></textarea>
	                                            </td>
	                                        </tr>
	                                    </table>
	                                    <div class="box-btn">
	                                        <button type="reset" class="btn btn-outline-secondary">취소하기</button>
	                                        <button type="submit" class="btn btn-primary">등록하기</button>
	                                    </div>
	                                </form>
	                            </div>
	                        </div>
	                    </div>
	                </div>
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