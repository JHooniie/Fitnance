
$(document).ready(function(){
	
    $('#summernote').summernote({
    	fontSize: 14,
        height: 500,
        lang: "ko-KR",					// 한글 설정
        toolbar: [
        	['fontsize', ['fontsize']],
		    ['style', ['bold', 'italic', 'underline','strikethrough', 'clear']],
		    ['view', ['codeview']]
	  	],
	  	fontSizes: ['16','18','20']
  	});
});