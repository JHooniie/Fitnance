/**
 * list_credit_loan.js
 */
 
 $(document).ready(function(){

    // 좌측 필터 버튼 클릭 시
    {
        {// 가입방법
            // 영업점
            $('.btn_prdt_joinway1, .btn_prdt_joinway1_clicked').click(function(){
                $(this).toggleClass('btn_prdt_joinway1 btn_prdt_joinway1_clicked'); 
            })
            // 인터넷
            $('.btn_prdt_joinway2, .btn_prdt_joinway2_clicked').click(function(){
                $(this).toggleClass('btn_prdt_joinway2 btn_prdt_joinway2_clicked'); 
            })
            // 스마트폰
            $('.btn_prdt_joinway3, .btn_prdt_joinway3_clicked').click(function(){
                $(this).toggleClass('btn_prdt_joinway3 btn_prdt_joinway3_clicked'); 
            })
            // 모집인
            $('.btn_prdt_joinway4, .btn_prdt_joinway4_clicked').click(function(){
                $(this).toggleClass('btn_prdt_joinway4 btn_prdt_joinway4_clicked'); 
            })
        }

        {// 대출종류
            // 일반신용
            $('.btn_lend_type1, .btn_lend_type1_clicked').click(function(){
                $(this).toggleClass('btn_lend_type1 btn_lend_type1_clicked'); 
            })
            // 마이너스한도
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

    
});  