// cal_tax.js

$(document).ready(function(){

    $('.btn-submit').click(function(){
        // 각 인풋 값 가져오기
        // 사용자에게 콤마 편의 제공으로 값을 계산하기 위해 다시 콤마를 제거해주는 작업 필요
        var payVal = $('#payVal').val().replace(/[^\d]+/g, "");
        var creditCardVal = $('#creditCardVal').val().replace(/[^\d]+/g, "");
        var cashVal = $('#cashVal').val().replace(/[^\d]+/g, "");
        var checkCardVal = $('#checkCardVal').val().replace(/[^\d]+/g, "");

        if($.isNumeric(payVal) == false){
            alert("급여액을 입력해주세요");
            return false;
        }else if($.isNumeric(creditCardVal) == false){
            alert("신용카드 사용 금액을 입력해주세요");
            return false;
        }else if($.isNumeric(cashVal) == false){
            alert("현금영수증 사용 금액을 입력해주세요");
            return false;
        }else if($.isNumeric(checkCardVal) == false){
            alert("체크카드 사용 금액을 입력해주세요");
            return false;
        }

        // 소득 공제
        var creditCardDeductVal = 0;
        var cashDeductVal = 0;
        var maxDeductVal = 330;
        
        // 신용카드 공제 액 계산
        if(creditCardVal > (payVal*0.25)){
            creditCardDeductVal = creditCardVal - (payVal*0.25);
            creditCardDeductVal *= 0.38;
        }else{
            creditCardDeductVal = 0;
        }

        // 체크카드/현금 공제액 계산
        cashDeductVal = parseInt(cashVal) + parseInt(checkCardVal);
        cashDeductVal *= 0.49;

        // 만약 현금 공제액 + 신용 공제액이 최대 공제액보다 크고 신용카드 공제액과 현금 공제액이 0이 아니라면
        if(cashDeductVal + creditCardDeductVal > maxDeductVal && creditCardDeductVal != 0 && cashDeductVal != 0){
            cashDeductVal = (maxDeductVal - creditCardDeductVal);
        }else if(cashDeductVal == 0){
            cashDeductVal = 0;
        }

        var resultVal = maxDeductVal - (creditCardDeductVal+cashDeductVal);

        if(creditCardDeductVal + cashDeductVal < maxDeductVal){
            resultVal = 1;
        }else if(cashDeductVal == 0){
            resultVal = 1;
        }

        if(resultVal == 0){
            $('.text-result-01').text("소득공제 한도를 모두 채우셨습니다.");
            $('.text-result-03').text("16.5%");
            $('.text-result-04').text("544,500원");            
        }else{
            $('.text-result-01').html('현재 아낄 수 있는 예상 세금은 <span class="text-result text-result-02">268,950</span>원 입니다.<br> 소득공제를 위해서는 앞으로 <b>체크카드와 현금</b>을 쓰시는 것이 좋습니다.<br>다만 교통카드나 재래시장은 40% 공제가 되니 신용카드를 쓰셔도 괜찮습니다.');
            $('.text-result-03').text("16.5%");
            $('.text-result-04').text("268,950원");
        }
    });
    
    // 인풋 클릭 시 초기화
    $('.input-cal>input').focus(function(){
        $(this).closest('input').val("");
    });

    // 인풋 입력 시 콤마 삽입
    $(".input-cal>input").on("keyup", function(){
        $(this).val($(this).val().replace(/\,/g, '').replace(/(\d)(?=(?:\d{3})+(?!\d))/g, '$1,'));
    });

});