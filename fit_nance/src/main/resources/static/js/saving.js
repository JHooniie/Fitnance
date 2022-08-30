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
                    for(var i=0;i <rsrv_type_nm.length;i++){
                        console.log(rsrv_type_nm[i]);
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
                    for(var i=0;i <join_member.length;i++){
                        console.log(join_member[i]);
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
                    for(var i=0;i <join_way.length;i++){
                        console.log(join_way[i]);
                    }
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
                    for(var i=0;i <save_trm.length;i++){
                        console.log(save_trm[i]);
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
            })
            $('.filter-reset').click(function(){
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