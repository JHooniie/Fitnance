
   $(document).ready(function(){

    //로그인 유효성 검사
    var getCheck = RegExp(/^(?=.*[A-Za-z])(?=.*\d)(?=.*[@$!%*#?&])[A-Za-z\d@$!%*#?&]{8,}$/);


    $('#form-passwordCheck').on('submit', function(event){
       if($('#user_pw').val() == ""){
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
            return true;
        }
    })



    //이메일 유효성 검사
   
        
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
    })


	$('#').on('submit', function(event){

        event.preventDefault();
        

        $.ajax({
            type:"post",
            url:"/user/pre_update_mypage",
            data:{"memId" : $('#user_id').val(),
            		"memPwd":$('#user_pw').val()},
            dataType:"text",
            success:function(result){
                // 성공 시 수행되는 함수 
                // 반환되는 값을  result로 받음
                if(result == "success") {
                    alert("본인확인 성공\n수정 페이지로 이동합니다.");
                    location.href="/update-mypage";
                } else {
                    alert("비밀번호가 일치하지 않습니다.");
                }
            },
            error:function(){
                // 오류있을 경우 수행되는 함수
                alert("전송 실패");
            },
            complete:function(){
// 				alert("작업 완료")
            }			
        }); 	// ajax 끝
    }); // submit 끝 



    });
