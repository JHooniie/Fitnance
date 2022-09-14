/**
 * list_credit_loan.js
 */
 
 $(document).ready(function(){
	
	$('.input_prdt_cd').val("");
	
	var arr_join_way=["join_way"];
	var arr_crdt_prdt_type=["crdt_prdt_type_nm"];
	
	// 좌측 필터 버튼 클릭 시
    {
        {// 가입방법
            // 영업점
            $('.btn_prdt_joinway1').click(function(){
                $(this).toggleClass('btn_prdt_joinway_clicked'); 
                if($(this).hasClass('btn_prdt_joinway_clicked')){
                	arr_join_way.push("영업점");
                }else{
                	var index = arr_join_way.indexOf("영업점");
                	arr_join_way.splice(index, 1);
                }
                callAjax();
            })
            // 인터넷
            $('.btn_prdt_joinway2').click(function(){
                $(this).toggleClass('btn_prdt_joinway_clicked'); 
                if($(this).hasClass('btn_prdt_joinway_clicked')){
                	arr_join_way.push("인터넷");
                } else{
                	var index = arr_join_way.indexOf("인터넷");
                	arr_join_way.splice(index, 1);
                }
                callAjax();
            })
            // 스마트폰
            $('.btn_prdt_joinway3').click(function(){
                $(this).toggleClass('btn_prdt_joinway_clicked'); 
                if($(this).hasClass('btn_prdt_joinway_clicked')){
                	arr_join_way.push("스마트폰");
                } else{
                	var index = arr_join_way.indexOf("스마트폰");
                	arr_join_way.splice(index, 1);
                }
                callAjax();
            })
            // 모집인
            $('.btn_prdt_joinway4').click(function(){
                $(this).toggleClass('btn_prdt_joinway_clicked'); 
                if($(this).hasClass('btn_prdt_joinway_clicked')){
                	arr_join_way.push("모집인");
                } else{
                	var index = arr_join_way.indexOf("모집인");
                	arr_join_way.splice(index, 1);
                }
                callAjax();
            })
        }
        
        {// 대출 종류
            // 일반신용
            $('.btn_lend_type1').click(function(){
                $(this).toggleClass('btn_lend_type_clicked'); 
                if($(this).hasClass('btn_lend_type_clicked')){
                	arr_crdt_prdt_type.push("1");
                	console.log(arr_crdt_prdt_type);
                }else{
                	var index = arr_crdt_prdt_type.indexOf("1");
                	arr_crdt_prdt_type.splice(index, 1);
                	console.log(arr_crdt_prdt_type);
                }
                callAjax();
            })
            // 마이너스한도
            $('.btn_lend_type2').click(function(){
                $(this).toggleClass('btn_lend_type_clicked'); 
                if($(this).hasClass('btn_lend_type_clicked')){
                	arr_crdt_prdt_type.push("2");
                	console.log(arr_crdt_prdt_type);
                } else{
                	var index = arr_crdt_prdt_type.indexOf("2");
                	arr_crdt_prdt_type.splice(index, 1);
                	console.log(arr_crdt_prdt_type);
                }
                callAjax();
            })
        }
    }
    
    {// 필터 초기화
       $('.btn_reset_filter').click(function(){
        	$('.option_prdt_joinway>div').removeClass('btn_prdt_joinway_clicked');
        	$('.option_lend_type>div').removeClass('btn_lend_type_clicked'); 
        	
            arr_join_way=["join_way"];
			arr_crdt_prdt_type=["crdt_prdt_type"];
		    
            callAjax();
        });        
    
    }
    
    // Ajax 중복으로 함수로 처리
    function callAjax(){
    	$.ajax({
	    	url: "filterCreditLoan",
	    	type: "post",
	    	traditional: true,
	    	data: {
	    			arr_join_way: arr_join_way,
	    			arr_crdt_prdt_type: arr_crdt_prdt_type
	    	},
	    	success: function(result){
	    		$('#result_list_prdt').html(result);
	        },
	        error:function(request,status,error){
	            console.log("code:"+request.status+"\n"+"message:"+request.responseText+"\n"+"error:"+error);
	        }
	    });
    }
	

    // 각 상품 우측 버튼 클릭 시
    {
        // 비교하기
        $('.btn_add_compare, .btn_add_compare_clicked').click(function(){
            $(this).toggleClass('btn_add_compare btn_add_compare_clicked'); 
        })
        // 즐겨찾기
        $('.btn_add_favorite, .btn_add_favorite_clicked').click(function(){
            $(this).toggleClass('btn_add_favorite btn_add_favorite_clicked'); 
        })
    }

    
});  