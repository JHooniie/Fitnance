
   $(document).ready(function(){
	
    const regName = RegExp(/^[가-힣]+$/); 
    const regYear = RegExp(/^(19[0-9][0-9]|20\d{2})$/);
    const regMonth = RegExp(/^(0[0-9]|1[0-2])$/);
    const regDay = RegExp(/^(0[1-9]|[1-2][0-9]|3[0-1])$/);

    let profilePreview = document.querySelector(".box-update-profileImg-img-center");

    
    $('.box-update-profile-content').each(function(){
        $(this).html($(this).html().replace(/&nbsp;/gi,''));
    });

    $('#input-upload-profileImg').on('change', function(event){
        var file = event.target.files[0];
        var fileName = $('#input-upload-profileImg')[0].files[0].name;
        let memId = $('#input-update-profile-Email').val() + "_";
        


        var reader = new FileReader(); 
        reader.onload = function(e) {
    
        let src = e.target.result;

        $('#img-profileImg').remove();
					
        
        let imgTag = document.createElement('img');
        
        
        imgTag.setAttribute('src', src);
        imgTag.setAttribute('width', '200');
        imgTag.setAttribute('height', '200');
        imgTag.setAttribute('style', 'border-radius: 50px');
        imgTag.setAttribute('id', 'img-profileImg');

            //$("#img-profileImg").attr("src", e.target.result);

            profilePreview.appendChild(imgTag);
        }
        
       


        reader.readAsDataURL(file);
        console.log(fileName);
        
        
          $('#input-update-memImg').val(memId+fileName);
          
    });

    $('#submit-upload-profileImg').on('submit', function(){
        $.ajax({
            url: "/profileImg_Upload",
            type: "post",
            success:function(result){
                document.location.href='/user/update_mypage';
            },
            error:function(request,status,error){
                alert("code:"+request.status+"\n"+"message:"+request.responseText+"\n"+"error:"+error);
            }
        });
        
        
    });


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
    
    $('#checkbox-checkAgree').change(function(){
         
        var checked = $(this).prop('checked');

        if(checked){
            $('#input-update-emailRecd').val("Y");
            
        }else{
            $('#input-update-emailRecd').val("N");
        }
    });


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