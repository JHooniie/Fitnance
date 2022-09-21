/**
 * list_house_loan.js
 */
 
 $(document).ready(function(){

	$('.input_prdt_cd').val("");
	
	var arr_join_way=["join_way"];
	var arr_rpay_type=["rpay_type"];
	var arr_lend_type=["lend_type"];
	var search_word = null;
	
	var arr_prdt_compare=["prdt_compare"];
	var prdt_cd = null;
	var kind = null;
	var action = null;
	
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
    }
    
    {// 필터 초기화
       $('.btn_reset_filter').click(function(){
        	$('.option_prdt_joinway>div').removeClass('btn_prdt_joinway_clicked');
        	$('.option_rpay_type>div').removeClass('btn_rpay_type_clicked'); 
        	$('.option_lend_type>div').removeClass('btn_lend_type_clicked'); 
        	
            arr_join_way=["join_way"];
			arr_rpay_type=["rpay_type"];
			arr_lend_type=["lend_type"];
		    
            callAjax();
        });        
    
    }
    
   $('.input_search_prdt').on('keyup', function(key){
    	if(key.keyCode == 13){
    		search_word = $('.input_search_prdt').val();
    		callAjax();
    	}
    })
    
    $('.div_search_prdt>i').click(function(){
    	search_word = $('.input_search_prdt').val();
    	callAjax();
    })
   
    // Ajax 중복으로 함수로 처리
    function callAjax(){
    	$.ajax({
        	url: "filterCharterLoan",
        	type: "post",
        	traditional: true,
        	data: {
        			arr_join_way: arr_join_way,
        			arr_rpay_type: arr_rpay_type,
        			arr_lend_type: arr_lend_type,
        			search_word: search_word
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
            prdt_cd = $(this).find('input').val();
            kind = "5";
            action = "add";
            if($(this).hasClass('btn_add_favorite')){
            	action = "add";
            } else{
            	action = "delete";
            }
            
            $(this).toggleClass('btn_add_favorite btn_add_favorite_clicked');
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
        	url: "compare_CharterLoan",
        	type: "post",
        	traditional: true,
        	data: {
        			"comp" : comp
        	},
        	success: function(result){
        		location.href='/view_compare_chartereLoan';
        		console.log("전송 완료");
            },
            error:function(request,status,error){
                console.log("code:"+request.status+"\n"+"message:"+request.responseText+"\n"+"error:"+error);
            }
        });
    }
    
    // 즐겨찾기 ajax
    function favoriteAjax(){
    	$.ajax({
    		url: "favorite_Loan",
    		type: "post",
    		data:{
    				prdt_cd: prdt_cd,
    				kind: kind,
    				action: action
    		},
    		success: function(result){
    			if(result == "success"){
    				alert("상품이 즐겨찾기에 추가되었습니다");
    			} else if(result == "exist"){
    				if(confirm("이미 즐겨찾기된 상품입니다\n삭제하시겠습니까?")){
    					favoriteDelete();
    				};
    			} else{
    				alert("로그인이 필요한 서비스입니다");
    				location.href='loginForm';
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