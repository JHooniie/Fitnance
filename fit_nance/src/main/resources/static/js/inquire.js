/**
 * cc_inquire.js
 */
 
 $(document).ready(function(){

    $('.div_login_notice').hide();

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
    	} else{
    		href.location = '/inquire_list';
    	} 
   	
    })
    
}); 