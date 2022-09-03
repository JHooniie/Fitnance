/**
 * 
 */
 
 $(document).ready(function(){
 	
 	
 	$('.calculate').click(function(){
 	var amount_paids=[];
 	var amount_paid='';
 	var period = null;
 	var interest_rate=null;
 	var interest_rate_system=null;
 		amount_paids=$('#amount-paid').val().split(',');
 		for(var i = 0; i <amount_paids.length;i++){
 			amount_paid+=amount_paids[i];
 		}
 		period =$('#period').val();
 		interest_rate =$('#interest-rate').val();
 		interest_rate_system =$('#interest-rate-system').val();
 		
 		console.log(period);
 		console.log(amount_paid);
 		console.log(interest_rate);
 		console.log(interest_rate_system);
 		
 		console.log(parseFloat(interest_rate));
 		
 		var num1=Math.ceil((parseInt(amount_paid)*(parseInt(period)*(parseInt(period)+1)/2)*(parseFloat(interest_rate)*0.01/12))*0.846/10)*10;
 		var num2=Math.ceil((parseInt(amount_paid)*(parseInt(period)*(parseInt(period)+1)/2)*(parseFloat(interest_rate)*0.01/12))*0.905/10)*10;
 		var num3=Math.ceil((parseInt(amount_paid)*(parseInt(period)*(parseInt(period)+1)/2)*(parseFloat(interest_rate)*0.01/12))/10)*10;
 		var total=num1+parseInt(amount_paid)*parseInt(period);
 		console.log(num1);
 		console.log(num2);
 		console.log(num3);
 		
 		$('.sub-detail').empty();
 		$('.sub-detail').append('<ul><li>매월 <span>'+parseInt(amount_paid).toLocaleString('ko-KR')+'</span>원 씩 <span>'+period+'</span> 동안 연 이율 <span>'+interest_rate+'</span>%의 <span>'+interest_rate_system+'</span>로 저축하면</li>'
 			+'<li>총 <span>'+total.toLocaleString('ko-KR')+'</span>원을 저축하실 수 있습니다.</li></ul>');
 			
 		$('.num1').empty();
 		$('.num1').append(num1.toLocaleString('ko-KR'));
 		$('.num2').empty();
 		$('.num2').append(num2.toLocaleString('ko-KR'));
 		$('.num3').empty();
 		$('.num3').append(num3.toLocaleString('ko-KR'));
 	})
 });
 
 function input_num(obj) {
     obj.value = comma(uncomma(obj.value));
 }

 function comma(str) {
     str = String(str);
     return str.replace(/(\d)(?=(?:\d{3})+(?!\d))/g, '$1,');
 }

 function uncomma(str) {
     str = String(str);
     return str.replace(/[^\d]+/g, '');
 }