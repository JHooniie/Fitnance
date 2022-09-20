/**
 * 
 */
 
 $(document).ready(function(){
 	var compare=["compare"];
 	var favorite=0;
 	
 	// 페이지네이션
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
 // 우측 아이콘 클릭 시
    {
    	{//비교함
    		$('.plus-icon1').click(function(){
    			if(compare.length>=4){
    				alert("비교는 3개의 상품까지만 가능합니다");
    			}
    			else{
	    			$(this).toggleClass('plus-icon-clicked');
	    			if($(this).hasClass('plus-icon-clicked')){
	    				compare.push($(this).prop("id"));
	    				console.log(compare);
	    			}else{
	    				var index = compare.indexOf($(this).prop("id"));
	                	compare.splice(index, 1);
	                	console.log(compare);
	    			}
	    			callCompare();
    			}
    		})
    		
    		$('.yes-login').click(function(){
    			$(this).toggleClass('plus-icon-clicked');
    			if($(this).hasClass('plus-icon-clicked')){
    				favorite=($(this).prop("id"));
    				$.ajax({
			            url: "insertInstallFavorite",
			            type: "post",
			            traditional: true,
			            data:{
			            	"favorite":favorite
			        	},
			            success:function(result){
			            	//console.log("success");
			            },
			            error:function(request,status,error){
			                alert("code:"+request.status+"\n"+"message:"+request.responseText+"\n"+"error:"+error);
			            }
		        	});
    			}else{
                	favorite=($(this).prop("id"));
                	console.log(favorite);
                	$.ajax({
			            url: "deleteInstallFavorite",
			            type: "post",
			            traditional: true,
			            data:{
			            	"favorite":favorite
			        	},
			            success:function(result){
			            	//console.log("success");
			            },
			            error:function(request,status,error){
			                alert("code:"+request.status+"\n"+"message:"+request.responseText+"\n"+"error:"+error);
			            }
		        	});
    			}
    		})
    		
    		$('.no-login').click(function(){
    			alert("로그인 해주세요");
    		})
    		
    		function callCompare(){
    			$.ajax({
		            url: "callInstallCompare",
		            type: "post",
		            traditional: true,
		            data:{
		            	"compare":compare
		        	},
		            success:function(result){
		            	//console.log("success");
		            },
		            error:function(request,status,error){
		                alert("code:"+request.status+"\n"+"message:"+request.responseText+"\n"+"error:"+error);
		            }
		        });
    		}
    	}
    }
});