/**
 * cc_inquire.js
 */
 
 $(document).ready(function(){

    //$('.div_login_notice').hide();
    $('.nav_register_inquire span').css('color', '#222222');
    $('.nav_register_inquire').css('border-bottom', '1px solid #222222');

    $('.select_register_type').css('color', '#aaaaaa');
    $('.select_register_type').change(function(){
        var current = $('.select_register_type').val();
        if(current != ""){
            $('.select_register_type').css('color', '#222222');
        } else{
            $('.select_register_type').css('color', '#aaaaaa');
        }
    })
    
    
    $('.btn_submit').click(function(){
    	event.preventDefault();	
    	var type = $('.select_register_type').val();
    	var title = $('.input_register_title').val();
    	var content = $('.textarea_register_content').val();
    	if(type == null){
    		alert("문의 유형을 선택해주세요");
    		return false;
    	} else if(title.length == 0){
    		alert("문의 제목을 입력해주세요");
    		return false;
    	} else if(content.length == 0){
    		alert("문의 내용을 입력해주세요");
    		return false;
    	}
    	
    	$.ajax({
    		type: "post",
    		url: 'inquire_register',
    		data: {"type": type,
    				"title": title,
    				"content": content
    				},
    		dataType: "text",
    		success: function(result){
    			alert("문의 사항이 등록되었습니다");
    			location.reload();
    		},
    		error: function(request, error){
    			console.log("code:"+request.status+"\nmessage:"+request.responseText+"\nerror:"+error);
    		}	
    	});
    });
    
}); 