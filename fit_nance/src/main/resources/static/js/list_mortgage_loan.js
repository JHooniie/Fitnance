/**
 * list_mortgage_loan.js
 */
 
 $(document).ready(function(){
	$('.input_prdt_cd').val("");
	
	$('.input_prdt_joinway1').val("F");
    // 좌측 필터 버튼 클릭 시
    {
        {// 가입방법
            // 영업점
            $('.btn_prdt_joinway1, .btn_prdt_joinway1_clicked').click(function(){
                $(this).toggleClass('btn_prdt_joinway1 btn_prdt_joinway1_clicked'); 
                if($(this).attr('class') == 'btn_prdt_joinway1_clicked'){
                	$('.input_prdt_joinway1').val('T');
                } else{
                	$('.input_prdt_joinway1').val('F');
                }
            })
            // 인터넷
            $('.btn_prdt_joinway2, .btn_prdt_joinway2_clicked').click(function(){
                $(this).toggleClass('btn_prdt_joinway2 btn_prdt_joinway2_clicked'); 
                if($(this).attr('class') == 'btn_prdt_joinway2_clicked'){
                	$('.input_prdt_joinway2').val('T');
                } else{
                	$('.input_prdt_joinway2').val('F');
                } 
            })
            // 스마트폰
            $('.btn_prdt_joinway3, .btn_prdt_joinway3_clicked').click(function(){
                $(this).toggleClass('btn_prdt_joinway3 btn_prdt_joinway3_clicked'); 
                if($(this).attr('class') == 'btn_prdt_joinway3_clicked'){
                	$('.input_prdt_joinway3').val('T');
                } else{
                	$('.input_prdt_joinway3').val('F');
                } 
            })
            // 모집인
            $('.btn_prdt_joinway4, .btn_prdt_joinway4_clicked').click(function(){
                $(this).toggleClass('btn_prdt_joinway4 btn_prdt_joinway4_clicked'); 
                if($(this).attr('class') == 'btn_prdt_joinway4_clicked'){
                	$('.input_prdt_joinway4').val('T');
                } else{
                	$('.input_prdt_joinway4').val('F');
                } 
            })
        }

        {// 담보유형
            // 아파트
            $('.btn_mrtg_type1, .btn_mrtg_type1_clicked').click(function(){
                $(this).toggleClass('btn_mrtg_type1 btn_mrtg_type1_clicked'); 
            })
            // 아파트 외
            $('.btn_mrtg_type2, .btn_mrtg_type2_clicked').click(function(){
                $(this).toggleClass('btn_mrtg_type2 btn_mrtg_type2_clicked'); 
            })
        }

        {// 대출상환유형
            // 원리금분할상환
            $('.btn_rpay_type1, .btn_rpay_type1_clicked').click(function(){
                $(this).toggleClass('btn_rpay_type1 btn_rpay_type1_clicked'); 
            })
            // 원금분할상환
            $('.btn_rpay_type2, .btn_rpay_type2_clicked').click(function(){
                $(this).toggleClass('btn_rpay_type2 btn_rpay_type2_clicked'); 
            })
            // 만기일시상환
            $('.btn_rpay_type3, .btn_rpay_type3_clicked').click(function(){
                $(this).toggleClass('btn_rpay_type3 btn_rpay_type3_clicked'); 
            })
        }

        {// 대출금리유형
            // 고정금리
            $('.btn_lend_type1, .btn_lend_type1_clicked').click(function(){
                $(this).toggleClass('btn_lend_type1 btn_lend_type1_clicked'); 
            })
            // 변동금리
            $('.btn_lend_type2, .btn_lend_type2_clicked').click(function(){
                $(this).toggleClass('btn_lend_type2 btn_lend_type2_clicked'); 
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
    }
	
	// 자세히 보기 버튼 클릭 시
	$('.btn_prdt_info').click(function(){
		$('.input_prdt_cd').val($(this).find('.prdt_cd').text());
		var input_prdt_cd = $('.input_prdt_cd').val();
		//alert(input_prdt_cd);
		/*$.ajax({
			method: 'POST',
			url: 'view_prdt_detail',
			data: input_prdt_cd,
			success: function(input_prdt_cd){}
		});*/
	});
    
});  
   

 