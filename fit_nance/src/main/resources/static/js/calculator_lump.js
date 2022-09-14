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
 		
 		var am=Math.floor(parseInt(amount_paid)/((parseInt(period)*(parseInt(period)+1)/2)*(parseFloat(interest_rate)*0.01/12)*0.846+parseInt(period)));
 		console.log(am);
 		
 		var num1=Math.floor(parseInt(amount_paid)/((parseInt(period)*(parseInt(period)+1)/2)*(parseFloat(interest_rate)*0.01/12)*0.846+parseInt(period)));
 		var num2=Math.floor(parseInt(amount_paid)/((parseInt(period)*(parseInt(period)+1)/2)*(parseFloat(interest_rate)*0.01/12)*0.905+parseInt(period)));
 		var num3=Math.floor(parseInt(amount_paid)/((parseInt(period)*(parseInt(period)+1)/2)*(parseFloat(interest_rate)*0.01/12)+parseInt(period)));
 		var total=num1+parseInt(amount_paid)*parseInt(period);
 		console.log(num1);
 		console.log(num2);
 		console.log(num3);
 		824,269
 		$('.sub-detail').empty();
 		$('.sub-detail').append('<ul><li>목표금액 <span>'+parseInt(amount_paid).toLocaleString('ko-KR')+'</span>원을 모으려면 <span>'+period+'</span> 동안 연 이율 <span>'+interest_rate+'</span>%의 <span>'+interest_rate_system+'</span>로</li>'
 			+'<li>월 <span>'+am.toLocaleString('ko-KR')+'</span>원을 저축하셔야 합니다.</li></ul>');
 			
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