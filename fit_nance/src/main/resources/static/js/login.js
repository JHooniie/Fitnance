$(document).ready(function(){

    //로그인 유효성 검사
    var regEmail = /^([0-9a-zA-Z_\.-]+)@([0-9a-zA-Z_-]+)(\.[0-9a-zA-Z_-]+){1,2}$/;
    var getCheck = RegExp(/^(?=.*[A-Za-z])(?=.*\d)(?=.*[@$!%*#?&])[A-Za-z\d@$!%*#?&]{8,}$/);
    var regcaptcha = RegExp(/^([0-9a-zA-Z]{1,8})$/);

    $('#disabled_login').on('click', function(){
        alert("captcha 인증을 진행한 후 로그인 해주세요!");
    });

    $('#main_login').on('submit', function(event){
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
            // console.log("캡챠1");
            // if(regcaptcha.test($('#input-captcha_value').val())){
            //     console.log(regcaptcha.test($('#input-captcha_value').val()));
            //     check_captchaAjax();
            // }
            // else if(!$('#input-captcha_value').val()){
            //     console.log($('#input-captcha_value').val());

            //     alert("인증번호를 입력해주세요1")
            //     return false;
            // }
            return true;
        }
    })

        //캡챠
        $('#rotate-captcha').on('click', function(event){
            rotate_captchaAjax();
            //$("#box-captcha").load(location.href + " #box-captcha");
            console.log('1');
        });

        $('#check-captcha').on('click', function(){
            console.log('2');
            check_captchaAjax();
        });

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
            },
            error:function(){
                alert("전송 실패");
            }		
        }); 	// ajax 끝
    };

    function rotate_captchaAjax(){
        const src = "C:/springWorkspace/fitnance_images/captcha/";
        $.ajax({
            type:"post",
            url:"/api/rotate_captcha",
            async: false,
            success:function(result){
                $(".box-captcha-img img").attr("src", "images/captcha/"+result);
            },
            error:function(){
                alert("전송 실패");
            }		
        }); 	// ajax 끝
    };

    function check_captchaAjax(){
        let captcha_value = $('#input-captcha_value').val();

        $.ajax({
            type:"post",
            url:"/api/check_captcha",
            data:{"captcha_value":captcha_value},
            async: false,
            success:function(result){
                console.log(result);
               if(result){
                alert("인증되었습니다!");
                $('#disabled_login').css("display","none");
                
               }else{
                alert("틀린 인증번호입니다. 다시 입력해주세요.");
               }
            },
            error:function(request,status,error){
                alert("code:"+request.status+"\n"+"message:"+request.responseText+"\n"+"error:"+error);
                console.log("code:"+request.status+"\n"+"message:"+request.responseText+"\n"+"error:"+error);
                
            }	
        }); 	// ajax 끝
    };

    // if(error){
    //     return false;
    //     console.log("실패");
    //     alert("CAPTCHA 인증번호가 틀렸습니다. 다시 확인해주세요.")
    // }else{
    //     loginAjax();
    // }

    function loginAjax(){
        let memId = $('#user_id').val();
        let memPwd = $('#user_pw').val()

        $.ajax({
            type:"post",
            url:"login",
            data:{"memId":memId,
                  "memPwd":memPwd }
            
        }); 	// ajax 끝
    };

});
