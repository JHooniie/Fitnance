
$(document).ready(function(){

    //로그인 유효성 검사
    var regEmail = /^([0-9a-zA-Z_\.-]+)@([0-9a-zA-Z_-]+)(\.[0-9a-zA-Z_-]+){1,2}$/;
    var getCheck = RegExp(/^(?=.*[A-Za-z])(?=.*\d)(?=.*[@$!%*#?&])[A-Za-z\d@$!%*#?&]{8,}$/);
    var regBirth = RegExp(/^[0-9]{8}$/);
    //임시 인증번호
    var token_no = "qwqwqw";


    //타이머 설정
    var timer = null;
    var isRunning = false;

    //이메일 유효성 검사

    $('.input-user_id').focus(function(){
        $('#input-user_id').addClass('process-focus');
    });
    $('.input-user_id').blur(function(){
        $('#input-user_id').removeClass('process-focus');
    });

    

    $('#input-user_id').change(function(){
        if(regEmail.test($('#input-user_id').val())){
            $('#input-user_id').removeClass('process-error');
            $('#input-user_id').addClass('process-pass');
            $('#text-Email-check-error').css('display','none');
            $('#text-Email-check-pass').css('display','flex');
            
            
            //인증번호 받기
            $('#text-Email-check-pass a').click(function(event){
                event.preventDefault();
                $('#input-token_no').prop('disabled',false);
                $('#input-user_id').prop('readOnly', true);
                alert("인증번호를 전송하였습니다. 이메일을 확인해주세요.");
                var display = $(".time span");
                // 유효시간 설정
                var leftSec = 180;

                // 버튼 클릭 시 시간 연장
                if (isRunning){
                    clearInterval(timer);
                    display.html("");
                    startTimer(leftSec, display);
                }else{
                    startTimer(leftSec, display);
                    $('#btn-Email-next').click(function(){
                        clearInterval(timer);
                    });
                }
                
                function startTimer(count, display) {  
                    var minutes, seconds;
                    timer = setInterval(function () {
                        minutes = parseInt(count / 60, 10);
                        seconds = parseInt(count % 60, 10);
        
                        minutes = minutes < 10 ? "0" + minutes : minutes;
                        seconds = seconds < 10 ? "0" + seconds : seconds;
        
                        display.html(minutes + ":" + seconds);
        
                        // 타이머 끝
                        if (--count < 0) {
                        clearInterval(timer);
                        alert("시간초과");
                        display.html("시간초과");
                        $("btn-Email-next").prop("disabled", true);
                        isRunning = false;
                        }
                        
                    }, 1000);
                    isRunning = true;
                    
                    }
                    
                });

                //인증번호 완료 후 다음

                $('#input-token_no').focus(function(){
                    $('#input-token_no').addClass('process-focus');
                });
                

                $('#input-token_no').change(function(){
                    if(token_no === $('#input-token_no').val()){
                        $('#text-token-check-error').css('display','none');
                        $('#input-token_no').removeClass('process-error');
                        $('#input-token_no').addClass('process-focus')
                        $('#input-token_no').prop('readOnly', true);
                        $('#btn-Email-next').prop('disabled',false);
                        
                        $('#btn-Email-next').click(function(event){
                            event.preventDefault();
                            $('.box-signup-Email').css('display','none');
                            $('.box-signup-password').css('display','block');
                        });
                    }
                    else if(token_no !== $('#input-token_no').val()){
                        $('#text-token-check-error').css('display','flex');
                        $('#input-token_no').addClass('process-error');
                    }
                });
            
        }
        else if(!regEmail.test($('#input-user_id').val())){
            $('#input-user_id').removeClass('process-pass');
            $('#input-user_id').addClass('process-error');
            $('#text-Email-check-pass').css('display','none');
            $('#text-Email-check-error').css('display','flex');
            $('#text-Email-check-error span').html('');
            $('#text-Email-check-error span').html('이메일 형식에 맞게 입력해주세요.');
        }
        
    });

    

    // 비밀번호 유효성 검사

    $('#input-user_pw').focus(function(){
        $('#input-user_pw').addClass('process-focus');
    });
    $('#input-user_pw').blur(function(){
        $('#input-user_pw').removeClass('process-focus');
    });
    

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
            $('#input-user_pw').addClass('process-focus');
            $('#text-password-check-pass').css('display','none');
            $('#text-password-check-error').css('display','none');
            $('#text-password-reCheck-pass').css('display','none');
            $('#text-password-reCheck-error').css('display','none');
            $('#input-user_pw-re').val('');
            $('#input-user_pw-re').prop('readOnly', true);
            $('#btn-password-next').prop('disabled',true);
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

    $('#input-user_pw-re').focus(function(){
        $('#input-user_pw-re').addClass('process-focus');
    });
    $('#input-user_pw-re').blur(function(){
        $('#input-user_pw-re').removeClass('process-focus');
    });

    $('#input-user_pw-re').change(function(){
        if($('#input-user_pw').val() == $('#input-user_pw-re').val()){
            $('#input-user_pw-re').removeClass('process-error');
            $('#input-user_pw-re').addClass('process-pass');
            $('#text-password-reCheck-error').css('display','none');
            $('#text-password-reCheck-pass').css('display','flex');
            $('#btn-password-next').prop('disabled',false);
            
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
            $('#btn-password-next').prop('disabled',true);
        }
        else if($('#input-user_pw').val() == $('#input-user_pw-re').val()){
            $('#input-user_pw').removeClass('process-pass');
            $('#text-password-check-pass').css('display','none');
            $('#input-user_pw-re').removeClass('process-pass');
            $('#input-user_pw-re').removeClass('process-error');
            $('#text-password-reCheck-pass').css('display','none');
            $('#text-password-reCheck-error').css('display','none');
            $('#btn-password-next').prop('disabled',false);
        }
        else if($('#input-user_pw').val() !== $('#input-user_pw-re').val()){
            $('#input-user_pw').removeClass('process-pass');
            $('#text-password-check-pass').css('display','none');
            $('#input-user_pw-re').removeClass('process-pass');
            $('#input-user_pw-re').removeClass('process-error');
            $('#text-password-reCheck-pass').css('display','none');
            $('#text-password-reCheck-error').css('display','none');
            $('#btn-password-next').prop('disabled',true);
        }
        return;
    });
    
    $('#btn-password-next').click(function(event){
        event.preventDefault();
        $('.box-signup-password').css('display','none');
        $('.box-signup-information').css('display','block');
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
    });

    $('.fa-eye-slash').on("click",function(){
        $('#input-user_pw-re').toggleClass('active');
        if($('#input-user_pw-re').hasClass('active')){
            $(this).attr('class',"fa-solid fa-eye")
            .prev('input').attr('type',"text");
        }else{
            $(this).attr('class',"fa-solid fa-eye-slash")
            .prev('input').attr('type','password');
        }
    });

    $('.fa-circle-xmark:even').on("click",function(){
        $('#input-user_pw').val("");

    });

    $('.fa-circle-xmark:odd').on("click",function(){
        $('#input-user_pw-re').val('');
        
    });


    //이름 유효성 검사
    $('#input-user_name').change(function(){
        if(!$('#input-user_name').val() == "") {
            $('#input-user_birth').prop('readOnly',false);
        }
    });

    $('#input-user_name').focus(function(){
        $('#input-user_name').addClass('process-focus');
    });
    $('#input-user_name').blur(function(){
        $('#input-user_name').removeClass('process-focus');
    });

    $('#input-user_birth').focus(function(){
        $('#input-user_birth').addClass('process-focus');
    });
    $('#input-user_birth').blur(function(){
        $('#input-user_birth').removeClass('process-focus');
    });

    //생년월일 유효성 검사
    $('#input-user_birth').change(function(){
        if(regBirth.test($('#input-user_birth').val())){
            $('#text-birth-check-error').css('display','none');
            $('#input-user_birth').removeClass('process-error');

            $('#checkbox-checkAgree').on("click",function(){
                if($('#checkbox-checkAgree').is(':checked') == true){
                    $('#btn-information-finish').prop('disabled',false);
                    $('.box-more-information-button').css('display','block');
                }
                else if($('#checkbox-checkAgree').is(':checked') == false){
                    $('#btn-information-finish').prop('disabled',true);
                    $('.box-more-information-button').css('display','none');
                }

                $('#btn-information-next').click(function(event){
                    event.preventDefault();
                    $('.box-signup-information').css('display','none');
                    $('.box-signup-more-information').css('display','block');
                });
                });
        //     $('#checkbox-checkAgree').click(function(){
        //         $('#btn-information-finish').prop('disabled',false);
        //         $('#btn-information-next').prop('disabled',false);

        //         $('#checkbox-checkAgree').click(function(){
        //             $('#btn-information-finish').prop('disabled',true);
        //             $('#btn-information-next').prop('disabled',true);
        //         });
        //     });
        // }


        }
        else if(!regBirth.test($('#input-user_birth').val())){
        $('#text-birth-check-error').css('display','flex');
        $('#input-user_birth').addClass('process-error');
        }
    });


    //은행 선택 color 지정
    $('#select-user_bank').css('color','#aaa');
    $('#select-user_bank').change(function() {
        if ($('#select-user_bank').val() != 'null') {
            $('#select-user_bank').css('color','#222');
        } 
        else if($('#select-user_bank').val() == '') {
            $('#select-user_bank').css('color','#aaa');
        }
    }); 



    //모달창
    //창 켜기
    $('#btn-user_bank').click(function(event){
        event.preventDefault();
            $('#modal-signup').css('display','block');
            $('body').css('overflow','hidden');
            
    });
        
    //창 끄기
    $('.modal-bank-close').click(function(){
        $('#modal-signup').css('display','none');
        $('body').css('overflow','scroll');
    });

    $('.figure-bank').click(function(event){
        alert($(this).find('input').val());
        $('.span-bank-btn').html($(this).find('input').val());
        $('.span-bank-btn').css('color','#222')
        $('#modal-signup').css('display','none');
        $('body').css('overflow','scroll');
        
            
    });

});
