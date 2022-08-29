// admin_notice.js

$(document).ready(function() {
	
	var path = $(location).attr('pathname');
	if(path == '/admin/dashboard') {
		$('.nav-item').removeClass('active');
		$('#navDashboard').addClass('active');
	} else if(path == '/admin/notice') {
		$('.nav-item').removeClass('active');
		$('#navNotice').addClass('active');
	} 
});