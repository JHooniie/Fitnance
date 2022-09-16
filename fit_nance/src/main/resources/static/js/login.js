$(document).ready(function(){

    //로그인 유효성 검사
    var regEmail = /^([0-9a-zA-Z_\.-]+)@([0-9a-zA-Z_-]+)(\.[0-9a-zA-Z_-]+){1,2}$/;
    var getCheck = RegExp(/^(?=.*[A-Za-z])(?=.*\d)(?=.*[@$!%*#?&])[A-Za-z\d@$!%*#?&]{8,}$/);


    captchaAjax();

    $('#login_form').on('submit', function(event){
        if($('#user_id').val() == ""){
            alert("이메일을 작성해주세요")
            return false;
        }
        else if(!regEmail.test($('#user_id').val())){
            alert("이메일 형식에 맞게 작성해주세요")
            return false;
        }
        else if($('#user_pw').val() == ""){
            alert("비밀번호를 작성해주세요")
            return false;
        }
        else if($('#user_pw').val().length < 8 || $('#user_pw').val().length > 15){
            alert("비밀번호는 8~15자로 입력해주세요")
            return false;
        }
        else if(!getCheck.test($('#user_pw').val())){
            alert("비밀번호는 영문 대,소문자 및 숫자를 포함해 8~15자를 입력하세요.")
            return false;
        }
        else if(regEmail.test($('#user_id').val()) && getCheck.test($('#user_pw').val())){
            
            check_captchaAjax();

            return true;
        }
    })



    //이메일 유효성 검사
    $('#user_id').blur(function(){
         if(!regEmail.test($('#user_id').val())){
            if($('#user_id').val() == ""){

            }
            else{
                $(this).removeClass("processPass");  
                $(this).addClass("processStop");
                $('#login_id_process_state').addClass("processStopText");  
                $('#login_id_process_state').html("이메일 형식에 맞게 입력해주세요.")
            }
        }
        else if(regEmail.test($('#user_id').val())) {
            $(this).removeClass("processStop");
            $(this).removeClass("processPass");  
            $('#login_id_process_state').removeClass("processStopText");
            $('#login_id_process_state').html("")
        }
    });

    $('#user_id').focus(function(){
        $(this).removeClass("processStop");  
        $(this).addClass("processPass");
        $('#login_id_process_state').removeClass("processStopText");
        $('#login_id_process_state').addClass("processPassText"); 
        $('#login_id_process_state').html("")
    });
        
    //비밀번호 유효성 검사
    $('#user_pw').blur(function(){
        if(!getCheck.test($('#user_pw').val())){
            if($('#user_pw').val() == ""){

            }
            else{
                $(this).removeClass("processPass");  
                $(this).addClass("processStop");
                $('#login_pw_process_state').addClass("processStopText");  
                $('#login_pw_process_state').html("비밀번호는 영문 대,소문자 및 숫자를 포함해 8~15자를 입력하세요.")
            }
        }
        else if(getCheck.test($('#user_pw').val())) {
            $(this).removeClass("processStop");
            $(this).removeClass("processPass");  
            $('#login_pw_process_state').removeClass("processStopText");
            $('#login_pw_process_state').html("")
        }

    $('#user_pw').focus(function(){
        $(this).removeClass("processStop");  
        $(this).addClass("processPass");
        $('#login_pw_process_state').html("")
        $('#login_id_process_state').removeClass("processStopText");
        $('#login_pw_process_state').addClass("processPassText"); 
    });

    // 비밀번호 보이기
    $('.fa-eye-slash').on("click",function(){
        $('#user_pw').toggleClass('active');
        if($('#user_pw').hasClass('active')){
            $(this).attr('class',"fa-solid fa-eye")
            .prev('input').attr('type',"text");
        }else{
            $(this).attr('class',"fa-solid fa-eye-slash")
            .prev('input').attr('type','password');
        }
    });
});



    function captchaAjax(){

        $.ajax({
            type:"post",
            url:"/api/rotate_captcha",
            async: false,
            success:function(result){
                $('.box-captcha-wrap').css('display','block');
                $('.box-captcha').html(result);
            },
            error:function(){
                alert("전송 실패");
            }		
        }); 	// ajax 끝
    };

    function check_captchaAjax(){
        let captcha_value = $('#captcha_value').val();

        $.ajax({
            type:"post",
            url:"captcha",
            data:{"captcha_value":captcha_value},
            async: false,
            success:function(result){
                console.log(result);
               if(result){
                alert("인증되었습니다!");
               }else{
                alert("CAPTCHA 인증번호가 틀렸습니다. 다시 확인해주세요.")
               }
            },
            error:function(){
                alert("전송 실패");
            }		
        }); 	// ajax 끝
    };

});
