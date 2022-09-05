/**
 * list_mortgage_loan.js 
 */
 
 $(document).ready(function(){
	$('.input_prdt_cd').val("");
	
	var arr_join_way=["join_way"];
	var arr_mrtg_type=["mrtg_type"];
	var arr_rpay_type=["rpay_type"];
	var arr_lend_type=["lend_type"];
			
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

        {// 담보유형
            // 아파트
            $('.btn_mrtg_type1').click(function(){
                $(this).toggleClass('btn_mrtg_type_clicked');  
                if($(this).hasClass('btn_mrtg_type_clicked')){
                	arr_mrtg_type.push("아파트");
                } else{
                	var index = arr_mrtg_type.indexOf("아파트");
                	arr_mrtg_type.splice(index, 1);
                }
                callAjax();
            })
            // 아파트 외
            $('.btn_mrtg_type2').click(function(){
                $(this).toggleClass('btn_mrtg_type_clicked');  
                if($(this).hasClass('btn_mrtg_type_clicked')){
                	arr_mrtg_type.push("아파트 외");
                } else{
                	var index = arr_mrtg_type.indexOf("아파트 외");
                	arr_mrtg_type.splice(index, 1);
                }
                callAjax();
            })
        }

        {// 대출상환유형
            // 원리금분할상환
            $('.btn_rpay_type1').click(function(){
                $(this).toggleClass('btn_rpay_type_clicked');  
                if($(this).hasClass('btn_rpay_type_clicked')){
                	arr_rpay_type.push("원리금분할상환");
                } else{
                	var index = arr_rpay_type.indexOf("원리금분할상환");
                	arr_rpay_type.splice(index, 1);
                }
                callAjax();
            })
            // 원금분할상환
            $('.btn_rpay_type2').click(function(){
                $(this).toggleClass('btn_rpay_type_clicked');  
                if($(this).hasClass('btn_rpay_type_clicked')){
                	arr_rpay_type.push("원금분할상환");
                } else{
                	var index = arr_rpay_type.indexOf("원금분할상환");
                	arr_rpay_type.splice(index, 1);
                }
                callAjax();
            })
            // 만기일시상환
            $('.btn_rpay_type3').click(function(){
                $(this).toggleClass('btn_rpay_type_clicked');  
                if($(this).hasClass('btn_rpay_type_clicked')){
                	arr_rpay_type.push("만기일시상환");
                } else{
                	var index = arr_rpay_type.indexOf("만기일시상환");
                	arr_rpay_type.splice(index, 1);
                }
                callAjax();
            })
        }

        {// 대출금리유형
            // 고정금리
            $('.btn_lend_type1').click(function(){
                $(this).toggleClass('btn_lend_type_clicked');  
                if($(this).hasClass('btn_lend_type_clicked')){
                	arr_lend_type.push("고정금리");
                } else{
                	var index = arr_lend_type.indexOf("고정금리");
                	arr_lend_type.splice(index, 1);
                }
                callAjax();
            })
            // 변동금리
            $('.btn_lend_type2').click(function(){
                $(this).toggleClass('btn_lend_type_clicked');  
                if($(this).hasClass('btn_lend_type_clicked')){
                	arr_lend_type.push("변동금리");
                } else{
                	var index = arr_lend_type.indexOf("변동금리");
                	arr_lend_type.splice(index, 1);
                }
                callAjax();
            })
        }
        {// 필터 초기화
	       $('.btn_reset_filter').click(function(){
            	$('.option_prdt_joinway>div').removeClass('btn_prdt_joinway_clicked');
            	$('.option_mrtg_type>div').removeClass('btn_mrtg_type_clicked');
            	$('.option_rpay_type>div').removeClass('btn_rpay_type_clicked'); 
            	$('.option_lend_type>div').removeClass('btn_lend_type_clicked'); 
            	
                arr_join_way=["join_way"];
				arr_mrtg_type=["mrtg_type"];
				arr_rpay_type=["rpay_type"];
				arr_lend_type=["lend_type"];
			    
                callAjax();
            });
        }
    }
    
    // Ajax 중복으로 함수로 처리
    function callAjax(){
    	$.ajax({
        	url: "filterMortgageLoan",
        	type: "post",
        	traditional: true,
        	data: {
        			arr_join_way: arr_join_way,
        			arr_mrtg_type: arr_mrtg_type,
        			arr_rpay_type: arr_rpay_type,
        			arr_lend_type: arr_lend_type
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
	
	// 자세히 보기 버튼 클릭 시
	$('.btn_prdt_info').click(function(){
		$('.input_prdt_cd').val($(this).find('.prdt_cd').text());
		var input_prdt_cd = $('.input_prdt_cd').val();
	});
    
    
});  