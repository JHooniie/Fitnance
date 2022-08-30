/**
 * 
 */
 
 $(document).ready(function(){
    {
        {
            var rsrv_type_nm=["a"];
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
                
                if(x=="rsrv_type_nm"){
                    var z=0;
                    for(var i=0;i <rsrv_type_nm.length;i++){
                        if(rsrv_type_nm[i]==y){
                            z=1;
                            rsrv_type_nm.splice(i,1);
                        }
                    }
                    if(z==0){
                        rsrv_type_nm.push(y);
                    }
                }
                else if(x=="join_member"){
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
	                });
                /*$.ajax({
	                    url:"filter_saving",
	                    type:"post",
	                    traditional: true,
	                    data:{rsrv_type_nm,join_member,join_way,save_trm},
	                    success:function(result){
	                    	$('.result-box-filter').empty();
	                    	$('.result-box-filter').append('<div class="result-box">'
	                	+'<div class="search-line">'
	                    +'<div class="box">검색 결과'+result.length);
	                    },
	                    error:function(request,status,error){
	                        alert("code:"+request.status+"\n"+"message:"+request.responseText+"\n"+"error:"+error);
	                    }
	                });
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
            	event.preventDefault();
            	$('.select-option-clicked').addClass('select-option');
            	$('.select-option-clicked').removeClass('select-option-clicked');
            	rsrc_type_nm=["a"];
            	join_member=["a"];
            	join_way=["a"];
            	save_trm=["a"];
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