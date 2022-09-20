 /**
 * list_mortgage_loan.js
 */
 
 $(document).ready(function(){
	$('.input_prdt_cd').val("");
	
	var arr_join_way=["join_way"];
	var arr_mrtg_type=["mrtg_type"];
	var arr_rpay_type=["rpay_type"];
	var arr_lend_type=["lend_type"];
	
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
            kind = "주택담보대출";
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
        	url: "compare_HomeLoan",
        	type: "post",
        	traditional: true,
        	data: {
        			"comp" : comp
        	},
        	success: function(result){
        		location.href='/view_compare_homeLoan';
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
    
    //$('.page_num').click(function(){
    	//callAjax();
   // });
   /* 
    //test
    function callAjax(){
    	$.ajax({
        	url: "filter_2", //"filterMortgageLoan_page=1",
        	type: "post",
        	traditional: true,
     
        	success: function(result){
        		//console(result);
        		arr_join_way=["join_way"];
				arr_mrtg_type=["mrtg_type"];
				arr_rpay_type=["rpay_type"];
				arr_lend_type=["lend_type"];
        		$.each(result,function(index, value) { 
                	//alert(index); //index가 끝날 떄 까지
                	//console.log(value);
                	if(value == "영업점" || value=="인터넷"|| value=="스마트폰"|| value=="모집인"){
                		arr_join_way.push(value);
                	} else if(value=="아파트"||value=="아파트 외"){
                		arr_mrtg_type.push(value);
                	}else if(value=="원리금분할상환"||value=="원금분할상환"||value=="만기일시상환"){
                		arr_rpay_type.push(value);
                	}else {
                		arr_lend_type.push(value);
                	}
           		})
           		console.log(arr_join_way);
           		console.log(arr_mrtg_type);
           		console.log(arr_rpay_type);
           		console.log(arr_lend_type);
           		//postAjax();
           		//$('#result').html(result);
            },
            error:function(request,status,error){
                console.log("code:"+request.status+"\n"+"message:"+request.responseText+"\n"+"error:"+error);
            }
        });
    }
    */
    var page = "1";
    $('.prdt_result_search').hide();
	$('.prdt'+page).show();
    $('.page_num').click(function(){
    	page = $(this).text();
	    $('.prdt_result_search').hide();
	    $('.prdt'+page).show();
    });
    
    
});  
   

 