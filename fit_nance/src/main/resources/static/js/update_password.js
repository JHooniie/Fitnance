
   $(document).ready(function(){

    //로그인 유효성 검사
    var getCheck = RegExp(/^[a-zA-Z0-9]{8,15}$/);


    // 비밀번호 유효성 검사
    $('#input-user_pw').change(function(){
        if(getCheck.test($('#input-user_pw').val())){
            $('#input-user_pw').removeClass('process-error');
            $('#input-user_pw').addClass('process-pass');
            $('#text-password-check-error').css('display','none');
            $('#text-password-check-pass').css('display','flex');
            $('#input-user_pw-re').prop('readOnly', false);

            // //비밀번호 확인 시 확인표시 제거
            // $('#input-user_pw-re').focus(function(){
            //     $('#input-user_pw').removeClass('process-pass');
            //     $('#text-password-check-pass').css('display','none');
            // });
            // //비밀번호 포커스 이동 시 확인표시 재생성
            // $('#input-user_pw').focus(function(){
            //     $('#input-user_pw').addClass('process-pass');
            //     $('#text-password-check-pass').css('display','flex');
            // });

            
        }
        else if(!getCheck.test($('#input-user_pw').val())){
            $('#input-user_pw').removeClass('process-pass');
            $('#input-user_pw').addClass('process-error');
            $('#text-password-check-pass').css('display','none');
            $('#text-password-check-error').css('display','flex');
            $('#input-user_pw-re').val('');
            $('#input-user_pw-re').prop('readOnly', true);

        }
    });

    $('#input-user_pw').focus(function(){
        if($('#input-user_pw').val() == ""){
            $('#input-user_pw').removeClass('process-pass');
            $('#input-user_pw').removeClass('process-error');
            $('#input-user_pw-re').removeClass('process-pass');
            $('#input-user_pw-re').removeClass('process-error');
            $('#text-password-check-pass').css('display','none');
            $('#text-password-check-error').css('display','none');
            $('#text-password-reCheck-pass').css('display','none');
            $('#text-password-reCheck-error').css('display','none');
            $('#input-user_pw-re').val('');
            $('#input-user_pw-re').prop('readOnly', true);
            $('#btn-update-password').prop('disabled',true);
        }
        else if(getCheck.test($('#input-user_pw').val())){
            $('#input-user_pw').removeClass('process-error');
            $('#input-user_pw').addClass('process-pass');
            $('#text-password-check-error').css('display','none');
            $('#text-password-check-pass').css('display','flex');
            $('#input-user_pw-re').prop('readOnly', false);
        }
        return;
    });

    $('#input-user_pw-re').change(function(){
        if($('#input-user_pw').val() == $('#input-user_pw-re').val()){
            $('#input-user_pw-re').removeClass('process-error');
            $('#input-user_pw-re').addClass('process-pass');
            $('#text-password-reCheck-error').css('display','none');
            $('#text-password-reCheck-pass').css('display','flex');
            $('#btn-update-password').prop('disabled',false);
            
        }
        else if($('#input-user_pw').val() != $('#input-user_pw-re').val()){
            $('#input-user_pw-re').removeClass('process-pass');
            $('#input-user_pw-re').addClass('process-error');
            $('#text-password-reCheck-pass').css('display','none');
            $('#text-password-reCheck-error').css('display','flex');
            
        }
    });

    $('#input-user_pw-re').change(function(){
        if($('#input-user_pw').val() != $('#input-user_pw-re').val()){
            $('#input-user_pw-re').removeClass('process-pass');
            $('#input-user_pw-re').addClass('process-error');
            $('#text-password-reCheck-pass').css('display','none');
            $('#text-password-reCheck-error').css('display','flex');
            
        }
    });



    $('#input-user_pw-re').focus(function(){
        if($('#input-user_pw-re').val() == ""){
            $('#input-user_pw').removeClass('process-pass');
            $('#text-password-check-pass').css('display','none');
            $('#input-user_pw-re').removeClass('process-pass');
            $('#input-user_pw-re').removeClass('process-error');
            $('#text-password-reCheck-pass').css('display','none');
            $('#text-password-reCheck-error').css('display','none');
            $('#btn-update-password').prop('disabled',true);
        }
        else if($('#input-user_pw').val() == $('#input-user_pw-re').val()){
            $('#input-user_pw').removeClass('process-pass');
            $('#text-password-check-pass').css('display','none');
            $('#input-user_pw-re').removeClass('process-pass');
            $('#input-user_pw-re').removeClass('process-error');
            $('#text-password-reCheck-pass').css('display','none');
            $('#text-password-reCheck-error').css('display','none');
            $('#btn-update-password').prop('disabled',true);
        }
        else if($('#input-user_pw').val() !== $('#input-user_pw-re').val()){
            $('#input-user_pw').removeClass('process-pass');
            $('#text-password-check-pass').css('display','none');
            $('#input-user_pw-re').removeClass('process-pass');
            $('#input-user_pw-re').removeClass('process-error');
            $('#text-password-reCheck-pass').css('display','none');
            $('#text-password-reCheck-error').css('display','none');
            $('#btn-update-password').prop('disabled',true);
        }
        return;
    });

    
        
    //비밀번호 유효성 검사
    // 비밀번호 보이기
    $('.fa-eye-slash').on("click",function(){
        $('#input-user_pw').toggleClass('active');
        if($('#input-user_pw').hasClass('active')){
            $(this).attr('class',"fa-solid fa-eye")
            .prev('input').attr('type',"text");
        }else{
            $(this).attr('class',"fa-solid fa-eye-slash")
            .prev('input').attr('type','password');
        }
    })

    $('.fa-eye-slash').on("click",function(){
        $('#input-user_pw-re').toggleClass('active');
        if($('#input-user_pw-re').hasClass('active')){
            $(this).attr('class',"fa-solid fa-eye")
            .prev('input').attr('type',"text");
        }else{
            $(this).attr('class',"fa-solid fa-eye-slash")
            .prev('input').attr('type','password');
        }
    })

    $('.fa-circle-xmark:even').on("click",function(){
        $('#input-user_pw').val("");

    })

    $('.fa-circle-xmark:odd').on("click",function(){
        $('#input-user_pw-re').val('');
        
    })
});

