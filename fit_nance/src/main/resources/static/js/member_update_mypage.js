
   $(document).ready(function(){
	
    const regName = RegExp(/^[가-힣]+$/); 
    const regYear = RegExp(/^(19[0-9][0-9]|20\d{2})$/);
    const regMonth = RegExp(/^(0[0-9]|1[0-2])$/);
    const regDay = RegExp(/^(0[1-9]|[1-2][0-9]|3[0-1])$/);



    
    $('.box-update-profile-content').each(function(){
        $(this).html($(this).html().replace(/&nbsp;/gi,''));
    });

    // if($('#checkbox-checkAgree:checked')){
    //     $('#checkbox-checkAgree').prop('checked');
    // }

    $('#input-update-profile-name').change(function(){
        if(!regName.test($('#input-update-profile-name').val())){
            alert("유효하지 않은 이름입니다. 다시 입력해주세요");
            $('#input-update-profile-name').val()=="";
        }
    })

    $('#input-update-profile-birth-year').change(function(){
        if(!regYear.test($('#input-update-profile-birth-year').val())){
            alert("유효하지 않은 년도입니다. 다시 입력해주세요");
            $('#input-update-profile-birth-year').val()=="";
        }
    })
    $('#input-update-profile-birth-month').change(function(){
        if(!regMonth.test($('#input-update-profile-birth-month').val())){
            alert("유효하지 않은 년도입니다. 다시 입력해주세요");
            $('#input-update-profile-birth-month').val()=="";
        }
    })
    $('#input-update-profile-birth-day').change(function(){
        if(!regDay.test($('#input-update-profile-birth-day').val())){
            alert("유효하지 않은 년도입니다. 다시 입력해주세요");
            $('#input-update-profile-birth-day').val()=="";
        }
    })

    if($('.span-bank-btn').html() !== "선택해주세요!"){
        $('.span-bank-btn').css('color','#222');
    }
    



    $('#form-update-profile').on('submit',function(){
    
        let memId = $('#input-update-profile-Email').val();
        let memName = $('#input-update-profile-name').val();
        let memBirth = $('#input-update-profile-birth-year').val()+$('#select-update-profile-birth-month').val()+$('#select-update-profile-birth-day').val()
        let memBank = $('#input-user_bank').val();
        let memRole = $('#input-update-role').val();
        let memPwd = $('#input-update-pwd').val();
        let memGender = $('#input-update-gender').val();
        let memEmailRecd = $('#checkbox-checkAgree').val();
        let providerId = $('#input-update-provider').val();
        let certified = $('#input-update-providerId').val();
        let provider = $('#input-update-certifed').val();
        if(!regYear.test($('#input-update-profile-birth-year').val()) & !regMonth.test($('#input-update-profile-birth-month').val()) & !regDay.test($('#input-update-profile-birth-day').val())){
            alert("유효하지 않은 생년월일 입니다. 다시 입력해주세요");
            
            return false;

            }else{

                $.ajax({
                    url: "./update_memInfo",
                    type: "post",
                    traditional: true,
                    data:{"memId":memId,
                        "memName":memName,
                        "memBirth":memBirth,
                        "memBank":memBank,
                        "memRole":memRole,
                        "memPwd":memPwd,
                        "memGender":memGender,
                        "memEmailRecd":memEmailRecd,
                        "providerId":providerId,
                        "certified":certified,
                        "provider":provider},
                    dataType:"text",
                    success:function(result){
                        if(result="success"){
                            //$('#input-update-birth').val($('#input-update-profile-birth-year').val()+$('#input-update-profile-birth-month').val()+$('#input-update-profile-birth-day').val());
                            alert("수정 성공")
                        }
                    },
                    error:function(request,status,error){
                        alert("code:"+request.status+"\n"+"message:"+request.responseText+"\n"+"error:"+error);
                    }
                });
            }   
    })


     //창 켜기
    $('#btn-user_bank').click(function(event){
        event.preventDefault();
            $('#modal-signup').css('display','block');
            
    });
        
    //창 끄기
    $('.modal-bank-close').click(function(){
        $('#modal-signup').css('display','none');
    });

    $('.figure-bank').click(function(){
        $('.span-bank-btn').html($(this).children('.bank-name').val());
        $('#input-user_bank').val($(this).children('.bank-code').val());
        $('.span-bank-btn').css('color','#222');
        $('#modal-signup').css('display','none');
        $('body').css('overflow','scroll');

        console.log($('#input-user-bank').val());

    });
    
    $('#a-delete-profile-check').click(function(){
        confirm("회원탈퇴를 진행하시겠습니까?")
    });

});