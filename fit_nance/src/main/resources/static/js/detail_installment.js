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
 	
 	var num1=Math.ceil((parseInt(price)*(parseInt(period)*(parseInt(period)+1)/2)*(parseFloat(interest_rate)*0.01/12))*0.846/10)*10;
 	var total=num1+parseInt(price)*parseInt(period);
 	
 	$('.total-span').empty();
 	$('.total-span').append(total.toLocaleString('ko-KR'));
 };
 