/**
 * 
 */
 
 $(document).ready(function(){
 
    var join_member=["join_member"];
    var join_way=["join_way"];
    var save_trm=["save_trm"];
    
    // 좌측 필터 버튼 클릭 시
    {
                
        {// 가입대상
            // 개인
            $('.select-option-join_member1').click(function(){
            	$(this).toggleClass('select-option-clicked'); 
                if($(this).hasClass('select-option-clicked')){
                	join_member.push("개인");
                }else{
                	var index = join_member.indexOf("개인");
                	join_member.splice(index, 1);
                }
                callAjax();
            })
            // 기업
            $('.select-option-join_member2').click(function(){
                $(this).toggleClass('select-option-clicked'); 
                if($(this).hasClass('select-option-clicked')){
                	join_member.push("기업");
                }else{
                	var index = join_member.indexOf("기업");
                	join_member.splice(index, 1);
                }
                callAjax();
            })
        }
        
        {// 가입방법
            // 영업점
            $('.select-option-join-way1').click(function(){
            	$(this).toggleClass('select-option-clicked'); 
                if($(this).hasClass('select-option-clicked')){
                	join_way.push("영업점");
                }else{
                	var index = join_way.indexOf("영업점");
                	join_way.splice(index, 1);
                }
                callAjax();
            })
            // 인터넷
            $('.select-option-join-way2').click(function(){
                $(this).toggleClass('select-option-clicked'); 
                if($(this).hasClass('select-option-clicked')){
                	join_way.push("인터넷");
                }else{
                	var index = join_way.indexOf("인터넷");
                	join_way.splice(index, 1);
                }
                callAjax();
            })
            // 스마트폰
            $('.select-option-join-way3').click(function(){
                $(this).toggleClass('select-option-clicked'); 
                if($(this).hasClass('select-option-clicked')){
                	join_way.push("스마트폰");
                }else{
                	var index = join_way.indexOf("스마트폰");
                	join_way.splice(index, 1);
                }
                callAjax();
            })
        }
        
        {// 가입기간
            // 3개월
            $('.select-option-save_trm1').click(function(){
            	$(this).toggleClass('select-option-clicked'); 
                if($(this).hasClass('select-option-clicked')){
                	save_trm.push("3");
                }else{
                	var index = save_trm.indexOf("3");
                	save_trm.splice(index, 1);
                }
                callAjax();
            })
            // 6개월
            $('.select-option-save_trm2').click(function(){
            	$(this).toggleClass('select-option-clicked'); 
                if($(this).hasClass('select-option-clicked')){
                	save_trm.push("6");
                }else{
                	var index = save_trm.indexOf("6");
                	save_trm.splice(index, 1);
                }
                callAjax();
            })   
            // 12개월
            $('.select-option-save_trm3').click(function(){
            	$(this).toggleClass('select-option-clicked'); 
                if($(this).hasClass('select-option-clicked')){
                	save_trm.push("12");
                }else{
                	var index = save_trm.indexOf("12");
                	save_trm.splice(index, 1);
                }
                callAjax();
            })   
            // 24개월
            $('.select-option-save_trm4').click(function(){
            	$(this).toggleClass('select-option-clicked'); 
                if($(this).hasClass('select-option-clicked')){
                	save_trm.push("24");
                }else{
                	var index = save_trm.indexOf("24");
                	save_trm.splice(index, 1);
                }
                callAjax();
            })   
            // 36개월 이상
            $('.select-option-save_trm5').click(function(){
            	$(this).toggleClass('select-option-clicked'); 
                if($(this).hasClass('select-option-clicked')){
                	save_trm.push("36");
                }else{
                	var index = save_trm.indexOf("36");
                	save_trm.splice(index, 1);
                }
                callAjax();
            })       
        }
        
        {// 필터 초기화
	       $('.filter-reset').click(function(){
            	$('.select-option').removeClass('select-option-clicked');
            	$('.select-option-save-trm').removeClass('select-option-clicked'); 
            	
                join_member=["join_member"];
			    join_way=["join_way"];
			    save_trm=["save_trm"];
			    
                callAjax();
            })
        }
    }
    
    // Ajax 중복으로 함수로 처리
    function callAjax(){
    	$.ajax({
            url:"filterDeposit",
            type:"post",
            traditional: true,
            data:{
            	join_member,
            	join_way,
            	save_trm
        	},
            success:function(result){
            	$('.result-box').html(result);
            },
            error:function(request,status,error){
                alert("code:"+request.status+"\n"+"message:"+request.responseText+"\n"+"error:"+error);
            }
        });
    }
    
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
});