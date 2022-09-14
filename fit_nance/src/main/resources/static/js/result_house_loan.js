 /**
 * list_house_loan.js
 */
 
 $(document).ready(function(){
	$('.input_prdt_cd').val("");
	
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
	})
    
});  