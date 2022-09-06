/**
 * 
 */
 
 $(document).ready(function(){
 	var pnsn_recp_trm_nm=["pnsn_recp_trm_nm"];
    var mon_paym_atm_nm=["mon_paym_atm_nm"];
    var pnsn_strt_age_nm=["pnsn_strt_age_nm"];
 
    // 좌측 필터 버튼 클릭 시
    {
        {// 연금수령기간
            // 10년 확정
            $('.select-option-recp-trm1').click(function(){
            	$(this).toggleClass('select-option-clicked'); 
                if($(this).hasClass('select-option-clicked')){
                	pnsn_recp_trm_nm.push("10년 확정");
                }else{
                	var index = pnsn_recp_trm_nm.indexOf("10년 확정");
                	pnsn_recp_trm_nm.splice(index, 1);
                }
                callAjax();
            })
            // 20년 확정
            $('.select-option-recp-trm2').click(function(){
            	$(this).toggleClass('select-option-clicked'); 
                if($(this).hasClass('select-option-clicked')){
                	pnsn_recp_trm_nm.push("20년 확정");
                }else{
                	var index = pnsn_recp_trm_nm.indexOf("20년 확정");
                	pnsn_recp_trm_nm.splice(index, 1);
                }
                callAjax();
            })
        }
        
        {// 월 납입액
            // 10만원
            $('.select-option-pay_atm1').click(function(){
            	$(this).toggleClass('select-option-clicked'); 
                if($(this).hasClass('select-option-clicked')){
                	mon_paym_atm_nm.push("100,000원");
                }else{
                	var index = mon_paym_atm_nm.indexOf("100,000원");
                	mon_paym_atm_nm.splice(index, 1);
                }
                callAjax();
            });
            // 20만원
            $('.select-option-pay_atm2').click(function(){
            	$(this).toggleClass('select-option-clicked'); 
                if($(this).hasClass('select-option-clicked')){
                	mon_paym_atm_nm.push("200,000원");
                }else{
                	var index = mon_paym_atm_nm.indexOf("200,000원");
                	mon_paym_atm_nm.splice(index, 1);
                }
                callAjax();
            });
            // 30만원
            $('.select-option-pay_atm3').click(function(){
            	$(this).toggleClass('select-option-clicked'); 
                if($(this).hasClass('select-option-clicked')){
                	mon_paym_atm_nm.push("300,000원");
                }else{
                	var index = mon_paym_atm_nm.indexOf("300,000원");
                	mon_paym_atm_nm.splice(index, 1);
                }
                callAjax();
            })
        }
        
        {// 연금 개시 연령
            // 60세
            $('.select-option-strt-age1').click(function(){
            	$(this).toggleClass('select-option-clicked'); 
                if($(this).hasClass('select-option-clicked')){
                	pnsn_strt_age_nm.push("60세");
                }else{
                	var index = pnsn_strt_age_nm.indexOf("60세");
                	pnsn_strt_age_nm.splice(index, 1);
                }
                callAjax();
            });
            // 65세
            $('.select-option-strt-age2').click(function(){
            	$(this).toggleClass('select-option-clicked'); 
                if($(this).hasClass('select-option-clicked')){
                	pnsn_strt_age_nm.push("65세");
                }else{
                	var index = pnsn_strt_age_nm.indexOf("65세");
                	pnsn_strt_age_nm.splice(index, 1);
                }
                callAjax();
            });
        }
        
        {// 필터 초기화
	       $('.filter-reset').click(function(){
            	$('.select-option').removeClass('select-option-clicked');
            	$('.select-option-pay_atm').removeClass('select-option-clicked'); 
            	
                pnsn_recp_trm_nm=["pnsn_recp_trm_nm"];
			    mon_paym_atm_nm=["mon_paym_atm_nm"];
			    pnsn_strt_age_nm=["pnsn_strt_age_nm"];
			    
                callAjax();
            });
         }
         
        // Ajax 중복으로 함수로 처리
	    function callAjax(){
	    	$.ajax({
                url:"filterPension",
                type:"post",
                traditional: true,
                data:{
                	pnsn_recp_trm_nm,
                	mon_paym_atm_nm,
                	pnsn_strt_age_nm
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
            if($(this).hasClass('plus-icon-clicked')){
                $(this).removeClass('plus-icon-clicked');
            }
            else{
                $(this).addClass('plus-icon-clicked');
            }
        });

        $('.plus-icon2').click(function(){
            if($(this).hasClass('plus-icon-clicked')){
                $(this).removeClass('plus-icon-clicked');
            }
            else{
                $(this).addClass('plus-icon-clicked');
            }
        });

    }
});