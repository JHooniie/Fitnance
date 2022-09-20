/**
 * 
 */
 
 $(document).ready(function(){
 	var compare=["compare"];
 	var favorite=0;
 
 	var pnsn_recp_trm_nm=["pnsn_recp_trm_nm"];
    var mon_paym_atm_nm=["mon_paym_atm_nm"];
    var pnsn_strt_age_nm=["pnsn_strt_age_nm"];
 
 	{
    	$('.search').click(function(){
    		var search= document.getElementById('tourName').value;
    		console.log(search);
	    	$.ajax({
	            url: "searchPension",
	            type: "post",
	            traditional: true,
	            data:{
	            	search
	        	},
	            success:function(result){
	            	$('.result-box').html(result);
	            },
	            error:function(request,status,error){
	                alert("code:"+request.status+"\n"+"message:"+request.responseText+"\n"+"error:"+error);
	            }
	        });
    		
    	})
    }
 	
 	// 우측 아이콘 클릭 시
    {
    	{//비교함
    		$('.plus-icon1').click(function(){
    			if(compare.length>=4){
    				alert("비교는 3개의 상품까지만 가능합니다");
    			}
    			else{
	    			$(this).toggleClass('plus-icon-clicked');
	    			if($(this).hasClass('plus-icon-clicked')){
	    				compare.push($(this).prop("id"));
	    				console.log(compare);
	    			}else{
	    				var index = compare.indexOf($(this).prop("id"));
	                	compare.splice(index, 1);
	                	console.log(compare);
	    			}
	    			callCompare();
    			}
    		})
    		
    		$('.yes-login').click(function(){
    			$(this).toggleClass('plus-icon-clicked');
    			if($(this).hasClass('plus-icon-clicked')){
    				favorite=($(this).prop("id"));
    				$.ajax({
			            url: "insertPensionFavorite",
			            type: "post",
			            traditional: true,
			            data:{
			            	"favorite":favorite
			        	},
			            success:function(result){
			            	//console.log("success");
			            },
			            error:function(request,status,error){
			                alert("code:"+request.status+"\n"+"message:"+request.responseText+"\n"+"error:"+error);
			            }
		        	});
    			}else{
                	favorite=($(this).prop("id"));
                	console.log(favorite);
                	$.ajax({
			            url: "deletePensionFavorite",
			            type: "post",
			            traditional: true,
			            data:{
			            	"favorite":favorite
			        	},
			            success:function(result){
			            	//console.log("success");
			            },
			            error:function(request,status,error){
			                alert("code:"+request.status+"\n"+"message:"+request.responseText+"\n"+"error:"+error);
			            }
		        	});
    			}
    		})
    		$('.no-login').click(function(){
    			alert("로그인 해주세요");
    		})
    		
    		function callCompare(){
    			$.ajax({
		            url: "callPensionCompare",
		            type: "post",
		            traditional: true,
		            data:{
		            	"compare":compare
		        	},
		            success:function(result){
		            	//console.log("success");
		            },
		            error:function(request,status,error){
		                alert("code:"+request.status+"\n"+"message:"+request.responseText+"\n"+"error:"+error);
		            }
		        });
    		}
    	}
    }
 	
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
    
       

    }
});