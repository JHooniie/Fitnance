/**
 * 
 */
 
 $(document).ready(function(){
 	var compare=["compare"];
 	var favorite=0;
 
    var join_member=["join_member"];
    var join_way=["join_way"];
    var save_trm=["save_trm"];
    
    // 페이지네이션
    {
        var page = "1";
        var page_selected = 1;
        var max_page = $('.div_page_num>div').length;
        $('.prdt_result_search').hide();
        $('.prdt'+page).show();
        $('.page_num'+page).css('background-color', '#1f4dff');
        $('.page_num'+page).css('color', '#ffffff');

        // 페이지 버튼 클릭 시
        $('.btn_page').click(function(){
            page = $(this).text();
            paging(page);
            $(this).css('background-color', '#1f4dff');
            $(this).css('color', '#ffffff');
        })

        // 이전 페이지 버튼 클릭 시
        $('.div_page_prev').click(function(){
            page_selected = Number(page);
            if(page_selected > 1){
                page = page_selected - 1;
                paging(page);
            }
        })

        // 다음 페이지 버튼 클릭 시
        $('.div_page_next').click(function(){
            page_selected = Number(page);
            if(page_selected < max_page){
                page = page_selected + 1;
                paging(page);
            }
        })

        // 페이지 이동 함수
        function paging(page){
            $('.prdt_result_search').hide();
            $('.prdt'+page).show();
            $('.div_page_num>div').css('background-color', '#ffffff');
            $('.div_page_num>div').css('color', '#aaaaaa');
            $('.page_num'+page).css('background-color', '#1f4dff');
            $('.page_num'+page).css('color', '#ffffff');
        }
    }
    
    {
    	$('.search').click(function(){
    		var search= document.getElementById('tourName').value;
    		console.log(search);
	    	$.ajax({
	            url: "searchDeposit",
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
			            url: "insertDepositFavorite",
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
			            url: "deleteDepositFavorite",
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
		            url: "callDepositCompare",
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
    
});