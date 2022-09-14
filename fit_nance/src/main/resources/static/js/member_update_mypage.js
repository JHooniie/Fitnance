
   $(document).ready(function(){
	
    
    $('.box-update-profile-content').each(function(){
        $(this).html($(this).html().replace(/&nbsp;/gi,''));
    });

    if($('.span-bank-btn').html() !== "선택해주세요!"){
        $('.span-bank-btn').css('color','#222');
    }
    

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
        $('#input-user-bank').val($(this).children('.bank-code').val());
        $('.span-bank-btn').css('color','#222');
        $('#modal-signup').css('display','none');
        $('body').css('overflow','scroll');

        console.log($('#input-user-bank').val());

    });
    

    $('.figure-bank').click(function(event){
        $('.span-bank-btn').html($(this).find('input').val());
        $('#input-user_bank').attr("value",$(this).find('input').val());
        $('.span-bank-btn').css('color','#222')
        $('#modal-signup').css('display','none');
        
        
    });
    
    $('#a-delete-profile-check').click(function(){
        confirm("회원탈퇴를 진행하시겠습니까?")
    });

});