/**
 * faq.js
 */
 
$(document).ready(function(){
	{
		$('.icon').click(function(){
			
			if($(this).children().hasClass('fa-angle-down')){
				$(this).parent().next().css('display','block');
				$(this).children().removeClass('fa-angle-down').addClass('fa-angle-up');
			}
			else{
				$(this).parent().next().css('display','none');
				$(this).children().removeClass('fa-angle-up').addClass('fa-angle-down');
			}
		})
		
		$('.more-down').click(function(){
			$(this).css('display','none');
			$('.more-items').css('display','block');
			$('.more-up').css('display','block');
		})
		
		$('.more-up').click(function(){
			$('.more-down').css('display','block');
			$('.more-items').css('display','none');
			$('.more-up').css('display','none');
		})
		
		oldVal=null;
		
		$('#textbox').on("propertychange change keyup paste input", function(){
			var currentVal = $(this).val();
		    if(currentVal == oldVal) {
		        return;
		    }
		 
		    oldVal = currentVal;
		    console.log(oldVal);
		    
		    $('.a').hide();
		    
		    $.ajax({
		    	url:"faq_search",
		    	type:"post",
		    	data:{oldVal},
		    	success:function(result){
	                $('#faq-search').html(result);
	            },
	            error:function(request,status,error){
	            	alert("code:"+request.status+"\n"+"message:"+request.responseText+"\n"+"error:"+error);
	            }
		    });
		})
	}
	
});