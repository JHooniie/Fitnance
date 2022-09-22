$(document).ready(function(){

    
    

    $('#index_location').on('click', function(){
        $.ajax({
			type:"post",
			url:`/logout`,
			success:function(result){
				location.href="/";

			},
			error:function(){
				alert("전송 실패");
			}		
		}); 	// ajax 끝
    });

   

});
