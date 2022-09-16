/**
 * compare_loan.js
 */
$(document).ready(function(){
	var prdt_index;
 	// 상품 삭제하기 클릭 시
	$('.btn_delete_prdt').click(function(){
		prdt_index = $(this).find('.prdt_index').text();
		var result = confirm('해당 상품을 삭제하시겠습니까?');
		if(result)
			deleteAjax();
	});
	
	// 목록으로 돌아가기 버튼 클릭 시
	$('.btn_list_prdt').click(function(){
		location.href='/listCharterLoan';
	});
	
	// 상품 삭제 ajax 함수
    function deleteAjax(){
    	$.ajax({
        	url: "delete_CharterLoan",
        	type: "post",
        	data: {
        			prdt_index: prdt_index
        	},
        	success: function(result){
        		if(result == "not_empty"){
	        		location.href='/view_compare_chartereLoan';
	        		console.log("전송 완료");
        		} else {
        			alert("상품이 없습니다");
        			location.href='/listCharterLoan';
        		}
        		
            },
            error:function(request,status,error){
                console.log("code:"+request.status+"\n"+"message:"+request.responseText+"\n"+"error:"+error);
            }
        });
    }
}); 