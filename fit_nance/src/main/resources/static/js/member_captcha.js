$(document).ready(function(){
    console.log("1");
    $('#rotate-captcha').on('click',function(){
        captchaAjax();
    });

    function captchaAjax(){
        $.ajax({
            type:"post",
            url:"api/rotate_captcha",
            async: false,
            success:function(result){
               // $('.box-captcha').html(result);
                location.reload();
                //location.href='/api/rotate_captcha';
            },
            error:function(){
                alert("전송 실패");
            }		
        }); 	// ajax 끝
    };

    
});


