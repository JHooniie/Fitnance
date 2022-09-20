 /**
 * list_mortgage_loan.js
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
             var prdt_index = $(this).find('input').val();
             var index = null;
            if(arr_prdt_compare.length < 4){
            	if($(this).hasClass('btn_add_compare')){
	            	arr_prdt_compare.push(prdt_index);
            		$(this).toggleClass('btn_add_compare btn_add_compare_clicked');
	            }else{
	            	index = arr_prdt_compare.indexOf(prdt_index);
	            	arr_prdt_compare.splice(index, 1);
	            	$(this).toggleClass('btn_add_compare btn_add_compare_clicked');
	            }
	            addCompare();
            } else {
	            for(var i=0; i<arr_prdt_compare.length; i++){
	             	if(arr_prdt_compare[i] === prdt_index){
	             		index = arr_prdt_compare.indexOf(prdt_index);	
	             	}
	             }
	             if(index === null){
	             	alert("상품비교는 최대 3개까지 가능합니다");
	             	return false;
	             } else {
	             	arr_prdt_compare.splice(index, 1);
	             	$(this).toggleClass('btn_add_compare btn_add_compare_clicked');
	             }
		         addCompare();
            }
            console.log(index);
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
	});
	
	// 상품 비교하기 클릭 시
	$('.btn_prdt_compare').click(function(){
		if(comp[1] === null){
			alert("비교할 상품을 선택해주세요");
		} else {
			compareAjax();
		}
	});
	
	// 상품 비교 ajax 함수
    function compareAjax(){
    	$.ajax({
        	url: "compare_PersonalLoan",
        	type: "post",
        	traditional: true,
        	data: {
        			"comp" : comp
        	},
        	success: function(result){
        		location.href='/view_compare_personalLoan';
        		console.log("전송 완료");
            },
            error:function(request,status,error){
                console.log("code:"+request.status+"\n"+"message:"+request.responseText+"\n"+"error:"+error);
            }
        });
    }
    
    function favoriteAjax(){
    	$.ajax({
    		url: "favorite_Loan",
    		type: "post",
    		data:{
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
    		url: "favorite_Loan",
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
    
   	var comp = ['comp'];
    
    function addCompare(){
    	$('.com1').val(arr_prdt_compare[1]);
    	$('.com2').val(arr_prdt_compare[2]);
    	$('.com3').val(arr_prdt_compare[3]);
    	comp = ['comp'];
    	if($('.com1').val().length>0){
    		comp.push($('.com1').val());
    	}
    	if($('.com2').val().length>0){
    		comp.push($('.com2').val());
    	}
    	if($('.com3').val().length>0){
    		comp.push($('.com3').val());
    	}
    	console.log(comp);
    }
    
    
    // 페이징 처리
    {
	    var page = "1";
	    var page_selected = 1;
	    var max_page = $('.div_page_num>div').length;
	    $('.prdt_result_search').hide();
		$('.prdt'+page).show();
		$('.page_num'+page).css('background-color', '#1f4dff');
		$('.page_num'+page).css('color', '#ffffff');
		
		// 페이지 버튼 클릭 시
	    $('.btn_page').click(function(){
	    	page = $(this).text();
		    paging(page);
		    $(this).css('background-color', '#1f4dff');
		    $(this).css('color', '#ffffff');
	    })
	    
	    // 이전 페이지 버튼 클릭 시
	    $('.div_page_prev').click(function(){
	    	page_selected = Number(page);
	    	if(page_selected > 1){
		    	page = page_selected - 1;
			    paging(page);
			}
	    })
	    
	    // 다음 페이지 버튼 클릭 시
	    $('.div_page_next').click(function(){
		    page_selected = Number(page);
	    	if(page_selected < max_page){
		    	page = page_selected + 1;
			    paging(page);
			}
	    })
	    
	    // 페이지 이동 함수
	    function paging(page){
	    	$('.prdt_result_search').hide();
		    $('.prdt'+page).show();
		    $('.div_page_num>div').css('background-color', '#ffffff');
		    $('.div_page_num>div').css('color', '#aaaaaa');
		    $('.page_num'+page).css('background-color', '#1f4dff');
		    $('.page_num'+page).css('color', '#ffffff');
	    }
    }
});  
   

 