/** 
 * 
 */
 
 $(document).ready(function(){
	$('.btn_list_mortgage').click(function(){
		location.href='/listMortgageLoan';
	});
	
	$('.btn_list_house').click(function(){
		location.href='/listCharterLoan';
	});
	
	$('.btn_list_credit').click(function(){
		location.href='/listCreditLoan';
	});
});  
   