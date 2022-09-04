/**
 * list_mortgage_loan.js 
 */
 
 $(document).ready(function(){
	$('.input_prdt_cd').val("");
	
	var arr_join_way=["join_way"];
	var arr_mrtg_type=["mrtg_type"];
	var arr_rpay_type=["rpay_type"];
	var arr_lend_type=["lend_type"];
	
	var index_result_list = Number($('.index_result_list').val());
	
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
                	url: "filter_mortgage_loan",
                	type: "post",
                	traditional: true,
                	data: {
                			arr_join_way: arr_join_way,
                			arr_mrtg_type: arr_mrtg_type,
                			arr_rpay_type: arr_rpay_type,
                			arr_lend_type: arr_lend_type
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
                	url: "filter_mortgage_loan",
                	type: "post",
                	traditional: true,
                	data: {
                			arr_join_way: arr_join_way,
                			arr_mrtg_type: arr_mrtg_type,
                			arr_rpay_type: arr_rpay_type,
                			arr_lend_type: arr_lend_type
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
                	url: "filter_mortgage_loan",
                	type: "post",
                	traditional: true,
                	data: {
                			arr_join_way: arr_join_way,
                			arr_mrtg_type: arr_mrtg_type,
                			arr_rpay_type: arr_rpay_type,
                			arr_lend_type: arr_lend_type
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
                	url: "filter_mortgage_loan",
                	type: "post",
                	traditional: true,
                	data: {
                			arr_join_way: arr_join_way,
                			arr_mrtg_type: arr_mrtg_type,
                			arr_rpay_type: arr_rpay_type,
                			arr_lend_type: arr_lend_type
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

        {// 담보유형
            // 아파트
            $('.btn_mrtg_type1, .btn_mrtg_type1_clicked').click(function(){
                $(this).toggleClass('btn_mrtg_type1 btn_mrtg_type1_clicked');  
                if($(this).attr('class') == 'btn_mrtg_type1_clicked'){
                	arr_mrtg_type.push("아파트");
                } else{
                	var index = arr_mrtg_type.indexOf("아파트");
                	arr_mrtg_type.splice(index, 1);
                }
                $.ajax({
                	url: "filter_mortgage_loan",
                	type: "post",
                	traditional: true,
                	data: {
                			arr_join_way: arr_join_way,
                			arr_mrtg_type: arr_mrtg_type,
                			arr_rpay_type: arr_rpay_type,
                			arr_lend_type: arr_lend_type
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
            // 아파트 외
            $('.btn_mrtg_type2, .btn_mrtg_type2_clicked').click(function(){
                $(this).toggleClass('btn_mrtg_type2 btn_mrtg_type2_clicked');  
                if($(this).attr('class') == 'btn_mrtg_type2_clicked'){
                	arr_mrtg_type.push("아파트 외");
                } else{
                	var index = arr_mrtg_type.indexOf("아파트 외");
                	arr_mrtg_type.splice(index, 1);
                }
                $.ajax({
                	url: "filter_mortgage_loan",
                	type: "post",
                	traditional: true,
                	data: {
                			arr_join_way: arr_join_way,
                			arr_mrtg_type: arr_mrtg_type,
                			arr_rpay_type: arr_rpay_type,
                			arr_lend_type: arr_lend_type
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

        {// 대출상환유형
            // 원리금분할상환
            $('.btn_rpay_type1, .btn_rpay_type1_clicked').click(function(){
                $(this).toggleClass('btn_rpay_type1 btn_rpay_type1_clicked');  
                if($(this).attr('class') == 'btn_rpay_type1_clicked'){
                	arr_rpay_type.push("원리금분할상환");
                } else{
                	var index = arr_rpay_type.indexOf("원리금분할상환");
                	arr_rpay_type.splice(index, 1);
                }
                $.ajax({
                	url: "filter_mortgage_loan",
                	type: "post",
                	traditional: true,
                	data: {
                			arr_join_way: arr_join_way,
                			arr_mrtg_type: arr_mrtg_type,
                			arr_rpay_type: arr_rpay_type,
                			arr_lend_type: arr_lend_type
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
            // 원금분할상환
            $('.btn_rpay_type2, .btn_rpay_type2_clicked').click(function(){
                $(this).toggleClass('btn_rpay_type2 btn_rpay_type2_clicked');  
                if($(this).attr('class') == 'btn_rpay_type2_clicked'){
                	arr_rpay_type.push("원금분할상환");
                } else{
                	var index = arr_rpay_type.indexOf("원금분할상환");
                	arr_rpay_type.splice(index, 1);
                }
                $.ajax({
                	url: "filter_mortgage_loan",
                	type: "post",
                	traditional: true,
                	data: {
                			arr_join_way: arr_join_way,
                			arr_mrtg_type: arr_mrtg_type,
                			arr_rpay_type: arr_rpay_type,
                			arr_lend_type: arr_lend_type
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
            // 만기일시상환
            $('.btn_rpay_type3, .btn_rpay_type3_clicked').click(function(){
                $(this).toggleClass('btn_rpay_type3 btn_rpay_type3_clicked');  
                if($(this).attr('class') == 'btn_rpay_type3_clicked'){
                	arr_rpay_type.push("만기일시상환");
                } else{
                	var index = arr_rpay_type.indexOf("만기일시상환");
                	arr_rpay_type.splice(index, 1);
                }
                $.ajax({
                	url: "filter_mortgage_loan",
                	type: "post",
                	traditional: true,
                	data: {
                			arr_join_way: arr_join_way,
                			arr_mrtg_type: arr_mrtg_type,
                			arr_rpay_type: arr_rpay_type,
                			arr_lend_type: arr_lend_type
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

        {// 대출금리유형
            // 고정금리
            $('.btn_lend_type1, .btn_lend_type1_clicked').click(function(){
                $(this).toggleClass('btn_lend_type1 btn_lend_type1_clicked');  
                if($(this).attr('class') == 'btn_lend_type1_clicked'){
                	arr_lend_type.push("고정금리");
                } else{
                	var index = arr_lend_type.indexOf("고정금리");
                	arr_lend_type.splice(index, 1);
                }
                $.ajax({
                	url: "filter_mortgage_loan",
                	type: "post",
                	traditional: true,
                	data: {
                			arr_join_way: arr_join_way,
                			arr_mrtg_type: arr_mrtg_type,
                			arr_rpay_type: arr_rpay_type,
                			arr_lend_type: arr_lend_type
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
            // 변동금리
            $('.btn_lend_type2, .btn_lend_type2_clicked').click(function(){
                $(this).toggleClass('btn_lend_type2 btn_lend_type2_clicked');  
                if($(this).attr('class') == 'btn_lend_type2_clicked'){
                	arr_lend_type.push("변동금리");
                } else{
                	var index = arr_lend_type.indexOf("변동금리");
                	arr_lend_type.splice(index, 1);
                }
                $.ajax({
                	url: "filter_mortgage_loan",
                	type: "post",
                	traditional: true,
                	data: {
                			arr_join_way: arr_join_way,
                			arr_mrtg_type: arr_mrtg_type,
                			arr_rpay_type: arr_rpay_type,
                			arr_lend_type: arr_lend_type
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
        
        {// 필터 초기화
	    	$('.btn_reset_filter').click(function(){
	       		arr_join_way.splice(1, arr_join_way.length);
	       		arr_mrtg_type.splice(1, arr_mrtg_type.length);
	       		arr_rpay_type.splice(1, arr_rpay_type.length);
	       		arr_lend_type.splice(1, arr_lend_type.length);
	       		
	       		$('.btn_prdt_joinway1_clicked').addClass('btn_prdt_joinway1');
	            $('.btn_prdt_joinway1_clicked').removeClass('btn_prdt_joinway1_clicked');
	            $('.btn_prdt_joinway2_clicked').addClass('btn_prdt_joinway2');
	            $('.btn_prdt_joinway2_clicked').removeClass('btn_prdt_joinway2_clicked');
	            $('.btn_prdt_joinway3_clicked').addClass('btn_prdt_joinway3');
	            $('.btn_prdt_joinway3_clicked').removeClass('btn_prdt_joinway3_clicked');
	            $('.btn_prdt_joinway4_clicked').addClass('btn_prdt_joinway4');
	            $('.btn_prdt_joinway4_clicked').removeClass('btn_prdt_joinway4_clicked');
	       		
	       		$('.btn_mrtg_type1_clicked').addClass('btn_mrtg_type1');
                $('.btn_mrtg_type1_clicked').removeClass('btn_mrtg_type1_clicked');
                $('.btn_mrtg_type2_clicked').addClass('btn_mrtg_type2');
                $('.btn_mrtg_type2_clicked').removeClass('btn_mrtg_type2_clicked');
                
                $('.btn_rpay_type1_clicked').addClass('btn_rpay_type1');
                $('.btn_rpay_type1_clicked').removeClass('btn_rpay_type1_clicked');
                $('.btn_rpay_type2_clicked').addClass('btn_rpay_type2');
                $('.btn_rpay_type2_clicked').removeClass('btn_rpay_type2_clicked');
                $('.btn_rpay_type3_clicked').addClass('btn_rpay_type3');
                $('.btn_rpay_type3_clicked').removeClass('btn_rpay_type3_clicked');
                
                $('.btn_lend_type1_clicked').addClass('btn_lend_type1');
                $('.btn_lend_type1_clicked').removeClass('btn_lend_type1_clicked');
                $('.btn_lend_type2_clicked').addClass('btn_lend_type2');
                $('.btn_lend_type2_clicked').removeClass('btn_lend_type2_clicked');
                
	       		$.ajax({
                	url: "filter_mortgage_loan",
                	type: "post",
                	traditional: true,
                	data: {
                			arr_join_way: arr_join_way,
                			arr_mrtg_type: arr_mrtg_type,
                			arr_rpay_type: arr_rpay_type,
                			arr_lend_type: arr_lend_type
                	},
                	success: function(result){
                		$('#result_filter').html(result);
                		$('#first_list_prdt').hide();
	                },
	                error:function(request,status,error){
                        console.log("code:"+request.status+"\n"+"message:"+request.responseText+"\n"+"error:"+error);
                    }
                });
	       	});
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
    }
	
	// 자세히 보기 버튼 클릭 시
	$('.btn_prdt_info').click(function(){
		$('.input_prdt_cd').val($(this).find('.prdt_cd').text());
		var input_prdt_cd = $('.input_prdt_cd').val();
	});
    
});  
   

 