/**
 * 
 */
 
 $(document).ready(function(){
    {
        {
            $('.select-option').click(function(){
                $(this).toggleClass('select-option select-option-clicked');
            })
        }
    
        {

            $('.plus-icon1').click(function(){
                if($(this).hasClass('plus-icon1-clicked')){
                    $(this).removeClass('plus-icon1-clicked');

                }
                else{
                    $(this).addClass('plus-icon1-clicked');
                }
            })

            $('.plus-icon2').click(function(){
                if($(this).hasClass('plus-icon2-clicked')){
                    $(this).removeClass('plus-icon2-clicked');

                }
                else{
                    $(this).addClass('plus-icon2-clicked');
                }
            })

        }
    }
});