/**
 * calc_rpayment.js
 */
 
 $(document).ready(function(){
	var result_lend_loan;		// 대출 금액
	var result_dly_rate;		// 연 이자율
	var result_rpay_period;		// 상환기간
	var result_grace_peroid;	// 거치기간
	
	{// 대출 금액 input 값 입력 시 3자리수 콤마 추가
		$(".input_lend_loan").on("keyup", function(){
    		$(this).val($(this).val().replace(/\,/g, '').replace(/(\d)(?=(?:\d{3})+(?!\d))/g, '$1,'));
 		});
	}
	
	{// 대출 금액
		// 초기화
		$('#reset_lend_loan').click(function(){
	 		$('.input_lend_loan').val("");
	 	});
	 	
		// +1억
		$('.btn_lend_100m').click(function(){
	 		result_lend_loan = Number($('.input_lend_loan').val().replace(/[^\d]+/g, ""));
	 		result_lend_loan = result_lend_loan + 100000000;
	 		$('.input_lend_loan').val((result_lend_loan).toLocaleString());
	 	});
	 	
	 	// +5,000만
	 	$('.btn_lend_50m').click(function(){
	 		result_lend_loan = Number($('.input_lend_loan').val().replace(/[^\d]+/g, ""));
	 		result_lend_loan = result_lend_loan + 50000000;
	 		$('.input_lend_loan').val((result_lend_loan).toLocaleString());
	 	});
	 	
	 	// +1,000만
	 	$('.btn_lend_10m').click(function(){
	 		result_lend_loan = Number($('.input_lend_loan').val().replace(/[^\d]+/g, ""));
	 		result_lend_loan = result_lend_loan + 10000000;
	 		$('.input_lend_loan').val((result_lend_loan).toLocaleString());
	 	});
	 	
	 	// +100만
	 	$('.btn_lend_1m').click(function(){
	 		result_lend_loan = Number($('.input_lend_loan').val().replace(/[^\d]+/g, ""));
	 		result_lend_loan = result_lend_loan + 1000000;
	 		$('.input_lend_loan').val((result_lend_loan).toLocaleString());
	 	});
	}
 	
 	{// 연 이자율
 		// 초기화
		$('#reset_dly_rate').click(function(){
	 		$('.input_dly_rate').val("");
	 	});
	 	
		// +0.1%
		$('.btn_rate_0_1p').click(function(){
	 		result_dly_rate = Number($('.input_dly_rate').val());
	 		result_dly_rate = Math.round((result_dly_rate + 0.1)*10)/10;
	 		$('.input_dly_rate').val(result_dly_rate);
	 	});
	 	
	 	// +1%
	 	$('.btn_rate_1p').click(function(){
	 		result_dly_rate = Number($('.input_dly_rate').val());
	 		result_dly_rate = result_dly_rate + 1;
	 		$('.input_dly_rate').val(result_dly_rate);
	 	});
	 	
	 	// +2%
	 	$('.btn_rate_2p').click(function(){
	 		result_dly_rate = Number($('.input_dly_rate').val());
	 		result_dly_rate = result_dly_rate + 2;
	 		$('.input_dly_rate').val(result_dly_rate);
	 	});
	 	
	 	// +5%
	 	$('.btn_rate_5p').click(function(){
	 		result_dly_rate = Number($('.input_dly_rate').val());
	 		result_dly_rate = result_dly_rate + 5;
	 		$('.input_dly_rate').val(result_dly_rate);
	 	});
	}
	
	{// 상환기간
 		// 초기화
		$('#reset_rpay_period').click(function(){
	 		$('.input_rpay_period').val("");
	 	});
		// +1년
		$('.btn_rpay_1y').click(function(){
	 		result_rpay_period = Number($('.input_rpay_period').val());
	 		result_rpay_period = result_rpay_period + 1;
	 		$('.input_rpay_period').val(result_rpay_period);
	 	});
	 	
	 	// +2년
	 	$('.btn_rpay_2y').click(function(){
	 		result_rpay_period = Number($('.input_rpay_period').val());
	 		result_rpay_period = result_rpay_period + 2;
	 		$('.input_rpay_period').val(result_rpay_period);
	 	});
	 	
	 	// +5년
	 	$('.btn_rpay_5y').click(function(){
	 		result_rpay_period = Number($('.input_rpay_period').val());
	 		result_rpay_period = result_rpay_period + 5;
	 		$('.input_rpay_period').val(result_rpay_period);
	 	});
	 	
	 	// +10년
	 	$('.btn_rpay_10y').click(function(){
	 		result_rpay_period = Number($('.input_rpay_period').val());
	 		result_rpay_period = result_rpay_period + 10;
	 		$('.input_rpay_period').val(result_rpay_period);
	 	});
	}
	
	{// 거치기간
 		// 초기화
		$('#reset_grace_period').click(function(){
	 		$('.input_grace_period').val("");
	 	});
	 	
		// +1년
		$('.btn_grace_1y').click(function(){
	 		result_grace_peroid = Number($('.input_grace_period').val());
	 		result_grace_peroid = result_grace_peroid + 1;
	 		$('.input_grace_period').val(result_grace_peroid);
	 	});
	 	
	 	// +2년
	 	$('.btn_grace_2y').click(function(){
	 		result_grace_peroid = Number($('.input_grace_period').val());
	 		result_grace_peroid = result_grace_peroid + 2;
	 		$('.input_grace_period').val(result_grace_peroid);
	 	});
	 	
	 	// +5년
	 	$('.btn_grace_5y').click(function(){
	 		result_grace_peroid = Number($('.input_grace_period').val());
	 		result_grace_peroid = result_grace_peroid + 5;
	 		$('.input_grace_period').val(result_grace_peroid);
	 	});
	 	
	 	// +10년
	 	$('.btn_grace_10y').click(function(){
	 		result_grace_peroid = Number($('.input_grace_period').val());
	 		result_grace_peroid = result_grace_peroid + 10;
	 		$('.input_grace_period').val(result_grace_peroid);
	 	});
	}
	
	{// 계산하기
		$('.btn_calc').click(function(){
			
			if($('.input_lend_loan').val() == ""){
				alert("대출 금액을 입력해주세요");
				return false;
			} else if($('.input_dly_rate').val() == ""){
				alert("연 이자율을 입력해주세요");
				return false;
			} else if($('.input_rpay_period').val() == ""){
				alert("상환기간을 입력해주세요");
				return false;
			}
			
			// 대출 금액 *
			var calc_lend_loan = Number($('.input_lend_loan').val().replace(/[^\d]+/g, ""));
			// 연 이자율
			var calc_dly_rate_year = Number($('.input_dly_rate').val());
			// 상환기간
			var calc_rpay_period = Number($('.input_rpay_period').val());
			
			$('.c1').val(calc_lend_loan);
			$('.c2').val(calc_dly_rate_year);
			$('.c3').val(calc_rpay_period);
			var first_rate_month;
			var first_lend_month;
			
			
			$.ajax({
            	url: "calc_rpay",
            	type: "post",
            	data: {
            			calc_lend_loan: calc_lend_loan,
            			calc_dly_rate_year: calc_dly_rate_year,
            			calc_rpay_period: calc_rpay_period
            	},
            	success: function(result){
            		// 계산 결과
					$('.calc_rpay_option').text($('.select_rpay_type').val());
					$('.calc_lend_loan').text($('.input_lend_loan').val());
					$('.calc_rpay_period').text($('.input_rpay_period').val());
					$('.calc_dly_rate').text($('.input_dly_rate').val());
            		$('.calc_rpay_result').text(((result[0].rpay).toLocaleString()).replace( /(\d)(?=(?:\d{3})+(?!\d))/g, '$1,' ));
            		console.log(result);
            		$('#table .data').remove();
            		var idx;
            		var total_dly = 0;
            		if(calc_rpay_period<6){
            			idx = calc_rpay_period * 2;
            		} else {
            			idx = 12;
            		}
            		
            		var rs_rpay_rate = ((result[0].rpay_rate).toLocaleString()).replace( /(\d)(?=(?:\d{3})+(?!\d))/g, '$1,' );
        			var rs_rpay_month = ((result[0].rpay_month).toLocaleString()).replace( /(\d)(?=(?:\d{3})+(?!\d))/g, '$1,' );
        			var rs_rpay = ((result[0].rpay).toLocaleString()).replace( /(\d)(?=(?:\d{3})+(?!\d))/g, '$1,' );
            		
            		$('#table').append("<tr class="+"data"+"><td class="+"index"+">"+result[0].index+"</td><td>"+rs_rpay_rate+"원</td><td>"+rs_rpay_month+"원</td><td>"+rs_rpay+"원</td></tr>");
            		for(var i=idx-1; i<result.length; i+=idx){
            			rs_rpay_rate = ((result[i].rpay_rate).toLocaleString()).replace( /(\d)(?=(?:\d{3})+(?!\d))/g, '$1,' );
            			rs_rpay_month = ((result[i].rpay_month).toLocaleString()).replace( /(\d)(?=(?:\d{3})+(?!\d))/g, '$1,' );
            			rs_rpay = ((result[i].rpay).toLocaleString()).replace( /(\d)(?=(?:\d{3})+(?!\d))/g, '$1,' );
            			$('#table').append("<tr class="+"data"+"><td class="+"index"+">"+result[i].index+"</td><td>"+rs_rpay_rate+"원</td><td>"+rs_rpay_month+"원</td><td>"+rs_rpay+"원</td></tr>");
            			//$('#table').append("<tr class="+"data"+"><td class="+"index"+">"+result[i].index+"</td><td>"+result[i].rpay_rate+"원</td><td>"+result[i].rpay_month+"원</td><td>"+result[i].rpay+"원</td></tr>");
            		}
            		result.forEach(function(el, index){
            			console.log(Number(el.rpay_rate));
						total_dly += el.rpay_rate;
            		});
            		$('.total_rpay_rate').text(((total_dly).toLocaleString()).replace( /(\d)(?=(?:\d{3})+(?!\d))/g, '$1,' ));
                },
                error:function(request,status,error){
                    console.log("code:"+request.status+"\n"+"message:"+request.responseText+"\n"+"error:"+error);
                }
            });
			
			// 원리금분할상환
			if($('.select_rpay_type').val() == "원리금분할상환"){
			
			}
			// 원금분할상환
			else if($('.select_rpay_type').val() == "원금분할상환"){
			
			}
			// 만기일시상환
			else {
			
			}
			
			
		});
	}
 });