/**
 * cc_inquire.js
 */
 
 $(document).ready(function(){
    $('.div_login_notice').hide();
    $('.tab_register_inquire').show();
    $('.tab_list_inquire').hide();
    $('.div_detail_inquire').hide();

    $('.nav_register_inquire span').css('color', '#222222');
    $('.nav_register_inquire').css('border-bottom', '1px solid #222222');
    $('.nav_list_inquire span').css('color', '#aaaaaa');
    $('.nav_list_inquire').css('border-bottom', '1px solid #aaaaaa');

    $('.nav_register_inquire').click(function(){
        $('.tab_register_inquire').show();
        $('.tab_list_inquire').hide();
        $('.div_detail_inquire').hide();
        $('.nav_register_inquire span').css('color', '#222222');
        $('.nav_register_inquire').css('border-bottom', '1px solid #222222');
        $('.nav_list_inquire span').css('color', '#aaaaaa');
        $('.nav_list_inquire').css('border-bottom', '1px solid #aaaaaa');
    })

    $('.nav_list_inquire').click(function(){
        $('.tab_register_inquire').hide();
        $('.tab_list_inquire').show();
        $('.div_detail_inquire').hide();
        $('.nav_register_inquire span').css('color', '#aaaaaa');
        $('.nav_register_inquire').css('border-bottom', '1px solid #aaaaaa');
        $('.nav_list_inquire span').css('color', '#222222');
        $('.nav_list_inquire').css('border-bottom', '1px solid #222222');
    })  

    $('.content_list_inquire').click(function(){
        $('.tab_list_inquire').hide();
        $('.div_detail_inquire').show();
    })

    $('.btn_list_inquire').click(function(){
        $('.tab_list_inquire').show();
        $('.div_detail_inquire').hide();
    })


    $('.select_register_type').css('color', '#aaaaaa');
    $('.select_register_type').change(function(){
        var current = $('.select_register_type').val();
        if(current != ""){
            $('.select_register_type').css('color', '#222222');
        } else{
            $('.select_register_type').css('color', '#aaaaaa');
        }
    })
}); 