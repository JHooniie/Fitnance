/**
 * 
 */
 
 $(document).ready(function(){
    {
        {
            var pnsn_recp_trm_nm=["a"];
            var mon_paym_atm_nm=["a"];
            var pnsn_strt_age_nm=["a"];
        }
        {
            $('.select-option').click(function(){
                $(this).toggleClass('select-option select-option-clicked');
                
                $('.result-box').hide();
                
                var x=($(this).parents("div")).attr('value');
                var y=$(this).attr('value');
                
     
                if(x=="pnsn_recp_trm_nm"){
                    var z=0;
                    for(var i=0;i <pnsn_recp_trm_nm.length;i++){
                        if(pnsn_recp_trm_nm[i]==y){
                            z=1;
                            pnsn_recp_trm_nm.splice(i,1);
                        }
                    }
                    if(z==0){
                        pnsn_recp_trm_nm.push(y);
                    }
                    
                }
                else if(x=="mon_paym_atm_nm"){
                    var z=0;
                    for(var i=0;i <mon_paym_atm_nm.length;i++){
                        if(mon_paym_atm_nm[i]==y){
                            z=1;
                            mon_paym_atm_nm.splice(i,1);
                        }
                    }
                    if(z==0){
                        mon_paym_atm_nm.push(y);
                    }
                    /*for(var i=0;i <join_way.length;i++){
                        console.log(join_way[i]);
                    }*/
                }
                else if(x=="pnsn_strt_age_nm"){
                    var z=0;
                    for(var i=0;i <pnsn_strt_age_nm.length;i++){
                        if(pnsn_strt_age_nm[i]==y){
                            z=1;
                            pnsn_strt_age_nm.splice(i,1);
                        }
                    }
                    if(z==0){
                        pnsn_strt_age_nm.push(y);
                    }
                    
                }
                $.ajax({
	                    url:"filter_pension",
	                    type:"post",
	                    traditional: true,
	                    data:{pnsn_recp_trm_nm,mon_paym_atm_nm,pnsn_strt_age_nm},
	                    success:function(result){
	                    	$('#result-box-filter').html(result);
	                    	console.log(pnsn_recp_trm_nm);
	                    	console.log(mon_paym_atm_nm);
	                    	console.log(pnsn_strt_age_nm);
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
            	
            	pnsn_recp_trm_nm=["a"];
            	mon_paym_atm_nm=["a"];
            	pnsn_strt_age_nm=["a"];
            	$.ajax({
	                    url:"filter_pension",
	                    type:"post",
	                    traditional: true,
	                    data:{pnsn_recp_trm_nm,mon_paym_atm_nm,pnsn_strt_age_nm},
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