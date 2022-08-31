
   $(document).ready(function(){
	
     //창 켜기
    $('#btn-user_bank').click(function(event){
        event.preventDefault();
            $('#modal-signup').css('display','block');
            
    });
        
    //창 끄기
    $('.modal-bank-close').click(function(){
        $('#modal-signup').css('display','none');
    });

    
    

    $('.figure-bank').click(function(event){
        $('.span-bank-btn').html($(this).find('input').val());
        $('#input-user_bank').attr("value",$(this).find('input').val());
        $('.span-bank-btn').css('color','#222')
        $('#modal-signup').css('display','none');
        
        
    });
});