 /**
 * list_credit_loan.js
 */
 
$(document).ready(function(){
	$('.input_prdt_cd').val("");
	
	var arr_prdt_compare=["prdt_compare"];
	var prdt_cd = null;
	var kind = null;
	var action = null;
	
    // 각 상품 우측 버튼 클릭 시
    {
        // 비교하기
        $('.btn_add_compare, .btn_add_compare_clicked').click(function(){
            $(this).toggleClass('btn_add_compare btn_add_compare_clicked');
             var prdt_index = $(this).find('input').val();
            if(arr_prdt_compare.length < 4){
            	if($(this).hasClass('btn_add_compare_clicked')){
	            	arr_prdt_compare.push(prdt_index);
	            }else{
	            	var index = arr_prdt_compare.indexOf(prdt_index);
	            	arr_prdt_compare.splice(index, 1);
	            }
            } else {
            	alert("상품비교는 최대 3개까지 가능합니다");
            	return false;
            }
            console.log(arr_prdt_compare);
        })
        // 즐겨찾기
        $('.btn_add_favorite, .btn_add_favorite_clicked').click(function(){
            $(this).toggleClass('btn_add_favorite btn_add_favorite_clicked');
            prdt_cd = $(this).find('input').val();
            kind = "개인신용대출";
            action = "add";
            if($(this).hasClass('btn_add_favorite_clicked')){
            	action = "add";
            } else{
            	action = "delete";
            }
            favoriteAjax();
        })
    }
	
	// 자세히 보기 버튼 클릭 시
	$('.btn_prdt_info').click(function(){
		$('.input_prdt_cd').val($(this).find('.prdt_cd').text());
		var input_prdt_cd = $('.input_prdt_cd').val();
	})
    
    function favoriteAjax(){
    	$.ajax({
    		url: "favorite_HomeLoan",
    		type: "post",
    		//traditional: true,
    		data:{
    				//arr_HomaLoan_favorite: arr_HomaLoan_favorite 
    				prdt_cd: prdt_cd,
    				kind: kind,
    				action: "add"
    		},
    		success: function(result){
    			if(result == "success"){
    				alert("상품이 즐겨찾기에 추가되었습니다");
    			} else if(result == "exist"){
    				if(confirm("이미 즐겨찾기된 상품입니다\n삭제하시겠습니까?")){
    					favoriteDelete();
    				};
    			}
    		},
    		error:function(request,status,error){
                console.log("code:"+request.status+"\n"+"message:"+request.responseText+"\n"+"error:"+error);
            }
        });
    }
    
    function favoriteDelete(){
    	$.ajax({
    		url: "favorite_HomeLoan",
    		type: "post",
    		data:{
    				prdt_cd: prdt_cd,
    				kind: kind,
    				action: "delete"
    		},
    		success: function(result){
				alert("즐겨찾기 상품이 제외되었습니다");
    		},
    		error:function(request,status,error){
                console.log("code:"+request.status+"\n"+"message:"+request.responseText+"\n"+"error:"+error);
            }
        });
    }
});  
   

 

 