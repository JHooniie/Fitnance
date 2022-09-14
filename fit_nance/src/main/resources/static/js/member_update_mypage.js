
   $(document).ready(function(){
	
    
    $('.box-update-profile-content').each(function(){
        $(this).html($(this).html().replace(/&nbsp;/gi,''));
    });

    if($('.span-bank-btn').html() !== "선택해주세요!"){
        $('.span-bank-btn').css('color','#222');
    }
    
    $('#form-update-profile').on('submit',function(){
        
        let memId = $('#input-update-profile-Email').val();
        let memName = $('#input-update-profile-name').val();
        let memBirth = $('#input-update-birth').val();
        let memBank = $('#input-user_bank').val();
       
        $.ajax({
            url: "./update_memInfo",
            type: "post",
            traditional: true,
            data:{"memId":memId,
                  "memName":memName,
                  "memBirth":memBirth,
                  "memBank":memBank },
            dataType:"text",
            success:function(result){
                if(result="success"){
                    alert("수정 성공")
                }
            },
            error:function(request,status,error){
                alert("code:"+request.status+"\n"+"message:"+request.responseText+"\n"+"error:"+error);
            }
        });
        
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