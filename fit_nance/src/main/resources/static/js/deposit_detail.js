/**
 * 
 */
 

 function input_num(obj) {
    obj.value = comma(uncomma(obj.value)); 
    
    calcu();
 
 	
 }

 function comma(str) {
     str = String(str);
     return str.replace(/(\d)(?=(?:\d{3})+(?!\d))/g, '$1,');
 }

 function uncomma(str) {
     str = String(str);
     return str.replace(/[^\d]+/g, '');
 }
 
  function calcu(){
  	var prices=[]; 
    var price='';
 	var period =$('#period').val();
 	var interest_rate =$('#interest-rate').val();
 	
 	prices=$('#price').val().split(',');
 		for(var i = 0; i <prices.length;i++){
 			price+=prices[i];
 		}
 	
 	var total=parseInt(price)+Math.floor(parseInt(price)*parseInt(period)*0.01*0.846*parseFloat(interest_rate));
 	
 	$('.total-span').empty();
 	$('.total-span').append(total.toLocaleString('ko-KR'));
  };
 