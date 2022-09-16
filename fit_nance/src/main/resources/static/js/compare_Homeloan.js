/**
 * compare_loan.js
 */
$(document).ready(function(){
	var prdt_index;
 	// 상품 삭제하기 클릭 시
	$('.delete_prdt').click(function(){
		prdt_index = $(this).find('span').text();
		var result = confirm('해당 상품을 삭제하시겠습니까?');
		if(result)
			deleteAjax();
		
		//var input_prdt_cd = $('.input_prdt_cd').val();
		
	});
	
	// 목록으로 돌아가기 버튼 클릭 시
	$('.btn_list_prdt').click(function(){
		location.href='/listMortgageLoan';
	});
	
	// 상품 삭제 ajax 함수
    function deleteAjax(){
    	$.ajax({
        	url: "delete_HomeLoan",
        	type: "post",
        	data: {
        			prdt_index: prdt_index
        	},
        	success: function(result){
        		if(result == "not_empty"){
	        		location.href='/compareLoan';
	        		console.log("전송 완료");
        		} else {
        			alert("상품이 없습니다");
        			location.href='/listMortgageLoan';
        		}
        		
            },
            error:function(request,status,error){
                console.log("code:"+request.status+"\n"+"message:"+request.responseText+"\n"+"error:"+error);
            }
        });
    }
}); 