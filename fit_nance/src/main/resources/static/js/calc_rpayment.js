/**
 * calc_rpayment.js
 */
 
 $(document).ready(function(){
	var result_lend_loan;
	var result_dly_rate;
	var result_rpay_period;
	var result_grace_peroid;
	{// 대출 금액
		// 초기화
		$('#reset_lend_loan').click(function(){
	 		$('.input_lend_loan').val("");
	 	})
		// +1억
		$('.btn_lend_100m').click(function(){
	 		result_lend_loan = Number($('.input_lend_loan').val())
	 		result_lend_loan = result_lend_loan + 100000000;
	 		$('.input_lend_loan').val(result_lend_loan);
	 		//$('.input_lend_loan').val((result_lend_loan).toLocaleString());
	 	})
	 	
	 	// +5,000만
	 	$('.btn_lend_50m').click(function(){
	 		result_lend_loan = Number($('.input_lend_loan').val())
	 		result_lend_loan = result_lend_loan + 50000000;
	 		$('.input_lend_loan').val(result_lend_loan);
	 	})
	 	
	 	// +1,000만
	 	$('.btn_lend_10m').click(function(){
	 		result_lend_loan = Number($('.input_lend_loan').val())
	 		result_lend_loan = result_lend_loan + 10000000;
	 		$('.input_lend_loan').val(result_lend_loan);
	 	})
	 	
	 	// +100만
	 	$('.btn_lend_1m').click(function(){
	 		result_lend_loan = Number($('.input_lend_loan').val())
	 		result_lend_loan = result_lend_loan + 1000000;
	 		$('.input_lend_loan').val(result_lend_loan);
	 	})
	}
 	
 	{// 연 이자율
 		// 초기화
		$('#reset_dly_rate').click(function(){
	 		$('.input_dly_rate').val("");
	 	})
		// +0.1%
		$('.btn_rate_0_1p').click(function(){
	 		result_dly_rate = Number($('.input_dly_rate').val())
	 		result_dly_rate = Math.round((result_dly_rate + 0.1)*10)/10;
	 		$('.input_dly_rate').val(result_dly_rate);
	 	})
	 	
	 	// +1%
	 	$('.btn_rate_1p').click(function(){
	 		result_dly_rate = Number($('.input_dly_rate').val())
	 		result_dly_rate = result_dly_rate + 1;
	 		$('.input_dly_rate').val(result_dly_rate);
	 	})
	 	
	 	// +2%
	 	$('.btn_rate_2p').click(function(){
	 		result_dly_rate = Number($('.input_dly_rate').val())
	 		result_dly_rate = result_dly_rate + 2;
	 		$('.input_dly_rate').val(result_dly_rate);
	 	})
	 	
	 	// +5%
	 	$('.btn_rate_5p').click(function(){
	 		result_dly_rate = Number($('.input_dly_rate').val())
	 		result_dly_rate = result_dly_rate + 5;
	 		$('.input_dly_rate').val(result_dly_rate);
	 	})
	}
	
	{// 상환기간
 		// 초기화
		$('#reset_rpay_period').click(function(){
	 		$('.input_rpay_period').val("");
	 	})
		// +1년
		$('.btn_rpay_1y').click(function(){
	 		result_rpay_period = Number($('.input_rpay_period').val())
	 		result_rpay_period = result_rpay_period + 1;
	 		$('.input_rpay_period').val(result_rpay_period);
	 	})
	 	
	 	// +2년
	 	$('.btn_rpay_2y').click(function(){
	 		result_rpay_period = Number($('.input_rpay_period').val())
	 		result_rpay_period = result_rpay_period + 2;
	 		$('.input_rpay_period').val(result_rpay_period);
	 	})
	 	
	 	// +5년
	 	$('.btn_rpay_5y').click(function(){
	 		result_rpay_period = Number($('.input_rpay_period').val())
	 		result_rpay_period = result_rpay_period + 5;
	 		$('.input_rpay_period').val(result_rpay_period);
	 	})
	 	
	 	// +10년
	 	$('.btn_rpay_10y').click(function(){
	 		result_rpay_period = Number($('.input_rpay_period').val())
	 		result_rpay_period = result_rpay_period + 10;
	 		$('.input_rpay_period').val(result_rpay_period);
	 	})
	}
	
	{// 거치기간
 		// 초기화
		$('#reset_grace_period').click(function(){
	 		$('.input_grace_period').val("");
	 	})
		// +1년
		$('.btn_grace_1y').click(function(){
	 		result_grace_peroid = Number($('.input_grace_period').val())
	 		result_grace_peroid = result_grace_peroid + 1;
	 		$('.input_grace_period').val(result_grace_peroid);
	 	})
	 	
	 	// +2년
	 	$('.btn_grace_2y').click(function(){
	 		result_grace_peroid = Number($('.input_grace_period').val())
	 		result_grace_peroid = result_grace_peroid + 2;
	 		$('.input_grace_period').val(result_grace_peroid);
	 	})
	 	
	 	// +5년
	 	$('.btn_grace_5y').click(function(){
	 		result_grace_peroid = Number($('.input_grace_period').val())
	 		result_grace_peroid = result_grace_peroid + 5;
	 		$('.input_grace_period').val(result_grace_peroid);
	 	})
	 	
	 	// +10년
	 	$('.btn_grace_10y').click(function(){
	 		result_grace_peroid = Number($('.input_grace_period').val())
	 		result_grace_peroid = result_grace_peroid + 10;
	 		$('.input_grace_period').val(result_grace_peroid);
	 	})
	}
 })
 
 function addComma(value){
    value = value.replace(/\B(?=(\d{3})+(?!\d))/g, ",");
    return value; 
 }