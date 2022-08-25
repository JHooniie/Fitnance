
$(document).ready(function(){
    $('#summernote').summernote({
        height: 500,
        lang: "ko-KR",					// 한글 설정
        toolbar: [
		    ['style', ['bold', 'italic', 'underline','strikethrough', 'clear']],
	  	]
  	});
});