/**
 * list_credit_loan.js
 */
 
 $(document).ready(function(){
	
	$('.input_prdt_cd').val("");
	
	var arr_join_way=["join_way"];
	var arr_crdt_prdt_type=["crdt_prdt_type"];
	
    // 좌측 필터 버튼 클릭 시
    {
        {// 가입방법
            // 영업점
            $('.btn_prdt_joinway1, .btn_prdt_joinway1_clicked').click(function(){
                $(this).toggleClass('btn_prdt_joinway1 btn_prdt_joinway1_clicked'); 
                if($(this).attr('class') == 'btn_prdt_joinway1_clicked'){
                	arr_join_way.push("영업점");
                } else{
                	var index = arr_join_way.indexOf("영업점");
                	arr_join_way.splice(index, 1);
                }
                $.ajax({
                	url: "filter_credit_loan",
                	type: "post",
                	traditional: true,
                	data: {
                			arr_join_way: arr_join_way,
                			arr_crdt_prdt_type: arr_crdt_prdt_type
                	},
                	success: function(result){
                		console.log(arr_join_way);
                		$('#result_filter').html(result);
                		$('#first_list_prdt').hide();
	                },
	                error:function(request,status,error){
                        console.log("code:"+request.status+"\n"+"message:"+request.responseText+"\n"+"error:"+error);
                    }
                });
            })
            // 인터넷
            $('.btn_prdt_joinway2, .btn_prdt_joinway2_clicked').click(function(){
                $(this).toggleClass('btn_prdt_joinway2 btn_prdt_joinway2_clicked'); 
                if($(this).attr('class') == 'btn_prdt_joinway2_clicked'){
                	arr_join_way.push("인터넷");
                } else{
                	var index = arr_join_way.indexOf("인터넷");
                	arr_join_way.splice(index, 1);
                }
                $.ajax({
                	url: "filter_credit_loan",
                	type: "post",
                	traditional: true,
                	data: {
                			arr_join_way: arr_join_way,
                			arr_crdt_prdt_type: arr_crdt_prdt_type
                	},
                	success: function(result){
                		$('#result_filter').html(result);
                		$('#first_list_prdt').hide();
	                },
	                error:function(request,status,error){
                        console.log("code:"+request.status+"\n"+"message:"+request.responseText+"\n"+"error:"+error);
                    }
                });
            })
            // 스마트폰
            $('.btn_prdt_joinway3, .btn_prdt_joinway3_clicked').click(function(){
                $(this).toggleClass('btn_prdt_joinway3 btn_prdt_joinway3_clicked'); 
                if($(this).attr('class') == 'btn_prdt_joinway3_clicked'){
                	arr_join_way.push("스마트폰");
                } else{
                	var index = arr_join_way.indexOf("스마트폰");
                	arr_join_way.splice(index, 1);
                }
                $.ajax({
                	url: "filter_credit_loan",
                	type: "post",
                	traditional: true,
                	data: {
                			arr_join_way: arr_join_way,
                			arr_crdt_prdt_type: arr_crdt_prdt_type
                	},
                	success: function(result){
                		$('#result_filter').html(result);
                		$('#first_list_prdt').hide();
	                },
	                error:function(request,status,error){
                        console.log("code:"+request.status+"\n"+"message:"+request.responseText+"\n"+"error:"+error);
                    }
                });
            })
            // 모집인
            $('.btn_prdt_joinway4, .btn_prdt_joinway4_clicked').click(function(){
                $(this).toggleClass('btn_prdt_joinway4 btn_prdt_joinway4_clicked'); 
                if($(this).attr('class') == 'btn_prdt_joinway4_clicked'){
                	arr_join_way.push("모집인");
                } else{
                	var index = arr_join_way.indexOf("모집인");
                	arr_join_way.splice(index, 1);
                }
                $.ajax({
                	url: "filter_credit_loan",
                	type: "post",
                	traditional: true,
                	data: {
                			arr_join_way: arr_join_way,
                			arr_crdt_prdt_type: arr_crdt_prdt_type
                	},
                	success: function(result){
                		$('#result_filter').html(result);
                		$('#first_list_prdt').hide();
	                },
	                error:function(request,status,error){
                        console.log("code:"+request.status+"\n"+"message:"+request.responseText+"\n"+"error:"+error);
                    }
                });
            })
        }

        {// 대출종류
            // 일반신용
            $('.btn_lend_type1, .btn_lend_type1_clicked').click(function(){
                $(this).toggleClass('btn_lend_type1 btn_lend_type1_clicked');  
                if($(this).attr('class') == 'btn_lend_type1_clicked'){
                	arr_crdt_prdt_type.push("일반신용");
                } else{
                	var index = arr_crdt_prdt_type.indexOf("일반신용");
                	arr_crdt_prdt_type.splice(index, 1);
                }
                $.ajax({
                	url: "filter_credit_loan",
                	type: "post",
                	traditional: true,
                	data: {
                			arr_join_way: arr_join_way,
                			arr_crdt_prdt_type: arr_crdt_prdt_type
                	},
                	success: function(result){
                		$('#result_filter').html(result);
                		$('#first_list_prdt').hide();
	                },
	                error:function(request,status,error){
                        console.log("code:"+request.status+"\n"+"message:"+request.responseText+"\n"+"error:"+error);
                    }
                });
            })
            // 마이너스한도
            $('.btn_lend_type2, .btn_lend_type2_clicked').click(function(){
                $(this).toggleClass('btn_lend_type2 btn_lend_type2_clicked');  
                if($(this).attr('class') == 'btn_lend_type2_clicked'){
                	arr_crdt_prdt_type.push("마이너스한도");
                } else{
                	var index = arr_crdt_prdt_type.indexOf("마이너스한도");
                	arr_crdt_prdt_type.splice(index, 1);
                }
                $.ajax({
                	url: "filter_credit_loan",
                	type: "post",
                	traditional: true,
                	data: {
                			arr_join_way: arr_join_way,
                			arr_crdt_prdt_type: arr_crdt_prdt_type
                	},
                	success: function(result){
                		$('#result_filter').html(result);
                		$('#first_list_prdt').hide();
	                },
	                error:function(request,status,error){
                        console.log("code:"+request.status+"\n"+"message:"+request.responseText+"\n"+"error:"+error);
                    }
                });
            })
        }
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
		// 자세히 보기
		$('.btn_prdt_info').click(function(){
			$('.input_prdt_cd').val($(this).find('.prdt_cd').text());
			var input_prdt_cd = $('.input_prdt_cd').val();
		})
    }

    
});  