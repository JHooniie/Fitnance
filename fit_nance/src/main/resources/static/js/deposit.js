/**
 * 
 */
 
 $(document).ready(function(){
    {
        {
            var join_member=["a"];
            var join_way=["a"];
            var save_trm=["a"];
        }
        {
            $('.select-option').click(function(){
                $(this).toggleClass('select-option select-option-clicked');
                
                $('.result-box').hide();
                
                var x=($(this).parents("div")).attr('value');
                var y=$(this).attr('value');
                
     
                if(x=="join_member"){
                    var z=0;
                    for(var i=0;i <join_member.length;i++){
                        if(join_member[i]==y){
                            z=1;
                            join_member.splice(i,1);
                        }
                    }
                    if(z==0){
                        join_member.push(y);
                    }
                    
                }
                else if(x=="join_way"){
                    var z=0;
                    for(var i=0;i <join_way.length;i++){
                        if(join_way[i]==y){
                            z=1;
                            join_way.splice(i,1);
                        }
                    }
                    if(z==0){
                        join_way.push(y);
                    }
                    /*for(var i=0;i <join_way.length;i++){
                        console.log(join_way[i]);
                    }*/
                }
                else if(x=="save_trm"){
                    var z=0;
                    for(var i=0;i <save_trm.length;i++){
                        if(save_trm[i]==y){
                            z=1;
                            save_trm.splice(i,1);
                        }
                    }
                    if(z==0){
                        save_trm.push(y);
                    }
                    
                }
                $.ajax({
	                    url:"filter_deposit",
	                    type:"post",
	                    traditional: true,
	                    data:{join_member,join_way,save_trm},
	                    success:function(result){
	                    	$('#result-box-filter').html(result);
	                    },
	                    error:function(request,status,error){
	                        alert("code:"+request.status+"\n"+"message:"+request.responseText+"\n"+"error:"+error);
	                    }
	                });
                /*$.ajax({
	                    url:"filter_saving",
	                    type:"post",
	                    traditional: true,
	                    data:{rsrv_type_nm,join_member,join_way,save_trm},
	                    success:function(result){
	                    	$('.result-box-filter').html(result);
	                    },
	                    error:function(request,status,error){
	                        alert("code:"+request.status+"\n"+"message:"+request.responseText+"\n"+"error:"+error);
	                    }
	                });*/
                /*$.ajax({
	                    url:"filter_saving",
	                    type:"post",
	                    traditional: true,
	                    data:{rsrv_type_nm,join_member,join_way,save_trm},
	                    success:function(result){
	                    	$('#result-box-filter').empty();
	                    	$('#result-box-filter').append('<div class="result-box">'
			                	+'<div class="search-line">'
			                    +'<div class="box">검색 결과 '+result.length+'개</div>'
			                    +'<div class="search-box"><input type="text" id="tourName" name="tourName" value="키워드 검색"><i class="fa-solid fa-magnifying-glass"></i></div></div><div class="item-list">');
		                    for(var i=0;i<result.length;i++){
		                    	var index=result[i].oIndex;
		                    	console.log(index);
		                    	$('#result-box-filter').append('<div class="item-box-all">'
	                       	+'<div class="item-box">'
	                            +'<div class="image-box"></div>'
	                            +'<div class="text-box">'
	                                +'<div class="bank-name">'+result[i].kor_co_nm+'</div>'
	                                +'<div class="item-line">'
	                                    +'<div class="item-name">'+result[i].fin_prdt_nm);
	                                  var ab= result[i].join_way.split(",");
	                                  for(var j=0;j<ab.length;j++){
	                                  		$('#result-box-filter').append('<span>'+ab[j]+'</span>');
	                               		}
	                            $('#result-box-filter').append('</div></div></div>'
	                            +'<div class="plus-icon1"><i class="fa-solid fa-folder-plus"></i></div>'
	                            +'<div class="plus-icon2"><i class="fa-solid fa-heart"></i></div>'
	                        +'</div>'
	                   
	                        +'<div class="item-box2">'
	                            +'<div class="percent-box">'
	                                +'<div class="percent1">'
	                                    +'<ul>'
	                                        +'<li>1년기준 (세전)</li>'
	                                        +'<li><span>'+result[i].intr_rate+'</span>%</li>'
	                                        +'</ul></div>'
	                                +'<div class="percent2">'
	                                    +'<ul>'
	                                        +'<li>최대 (세전)</li>'
	                                       +'<li><span>'+result[i].intr_rate2+'</span>%</li>'
	                                        +'</ul></div></div>'
	                                       +'<div class="view-detail"><a href="<c:url value='+"'saving_detail?index="+"'/>"+'">자세히 보기</a></div></div></div>');
	                                
		                    }
		                    $('#result-box-filter').append('<div class="page-list">'
	                        +'<div class="page-icon"><i class="fa-solid fa-angle-left"></i></div>'
	                        +'<div class="page-num">'
	                            +'<div class="page-num1">1</div>'
	                            +'<div class="page-num2">2</div>'
	                            +'<div class="page-num3">3</div>'
	                        +'</div>'
	                        +'<div class="page-icon"><i class="fa-solid fa-angle-right"></i></div>'
	                    +'</div></div></div>');
	                    },
	                    error:function(request,status,error){
	                        alert("code:"+request.status+"\n"+"message:"+request.responseText+"\n"+"error:"+error);
	                    }
	                });*/
                /*var abc=[];
                new Promise((succ,fail)=>{
	                $.ajax({
	                    url:"filter_saving",
	                    type:"post",
	                    traditional: true,
	                    data:{rsrv_type_nm,join_member,join_way,save_trm},
	                    success:function(result){
	                    	succ(result);
	                    	abc=result;
	                    },
	                    error:function(request,status,error){
	                        alert("code:"+request.status+"\n"+"message:"+request.responseText+"\n"+"error:"+error);
	                    }
	                });
                }).then((arg)=>{
                    	/*console.log(rsrv_type_nm);
                    	console.log(join_member);
                    	console.log(join_way);
                    	console.log(save_trm);
                    	console.log(abc);
                    	$.ajax({
                    		url:"filter_saving2",
                    		type:"post",
                    		data: {abc:abc},
                    		success:function(result2){
                    		
                       			$('#result-box-filter').html(result2);
                       		},
                       		error:function(request,status,error){
		                        alert("code:"+request.status+"\n"+"message:"+request.responseText+"\n"+"error:"+error);
		                    }
                       	});
                    });*/
                    /*$.ajax({
	                    url:"filter_saving",
	                    type:"post",
	                    traditional: true,
	                    data:{rsrv_type_nm,join_member,join_way,save_trm},
	                    success:function(result){
	           
	                    	abc=result;
	                    },
	                    error:function(request,status,error){
	                        alert("code:"+request.status+"\n"+"message:"+request.responseText+"\n"+"error:"+error);
	                    }
	                });
	                console.log(abc);
                    	$.ajax({
                    		url:"filter_saving2",
                    		type:"post",
                    		data: abc,
                    		success:function(result2){
                    		
                       			$('#result-box-filter').html(result2);
                       		},
                       		error:function(request,status,error){
                       			console.log(result);
		                        alert("code:"+request.status+"\n"+"message:"+request.responseText+"\n"+"error:"+error);
		                    }
                       	});*/
	                
	                
                
            })
            
            $('.filter-reset').click(function(){
           
            	$('.select-option-clicked').addClass('select-option');
            	$('.select-option-clicked').removeClass('select-option-clicked');
            	
            	join_member=["a"];
            	join_way=["a"];
            	save_trm=["a"];
            	$.ajax({
	                    url:"filter_deposit",
	                    type:"post",
	                    traditional: true,
	                    data:{join_member,join_way,save_trm},
	                    success:function(result){
	                    	$('#result-box-filter').html(result);
	                    },
	                    error:function(request,status,error){
	                        alert("code:"+request.status+"\n"+"message:"+request.responseText+"\n"+"error:"+error);
	                    }
	                });
            })
        }
    
        {

            $('.plus-icon1').click(function(){
                if($(this).hasClass('plus-icon1-clicked')){
                    $(this).removeClass('plus-icon1-clicked');

                }
                else{
                    $(this).addClass('plus-icon1-clicked');
                }
            })

            $('.plus-icon2').click(function(){
                if($(this).hasClass('plus-icon2-clicked')){
                    $(this).removeClass('plus-icon2-clicked');

                }
                else{
                    $(this).addClass('plus-icon2-clicked');
                }
            })

        }
    }
});