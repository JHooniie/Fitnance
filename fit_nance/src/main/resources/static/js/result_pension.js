/**
 * 
 */
 
 $(document).ready(function(){
 	var compare=["compare"];
 	var favorite=0;
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
			            url: "insertPensionFavorite",
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
			            url: "deletePensionFavorite",
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
		            url: "callPensionCompare",
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