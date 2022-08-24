// prd_recom_process.js

$(document).ready(function(){
    
    // process 1 네 좋아요! 클릭 시
    $('.btn-prd-recom-01').click(function(){
        $('.box-prd-recom-01').css('display','none');
        $('.box-prd-recom-02').css('display','block');
    });

    // process 2 진입
    // 네! 버튼 클릭 시
    $('.box-pc-01 .box-pc-y').click(function(){
        $(this).addClass('box-pc-active');
        $('.box-pc-n').removeClass('box-pc-active');
        $('.box-prd-recom-02 .btn-prd-recom').removeAttr('disabled');
    });

    // 아니오 버튼 클릭 시
    $('.box-pc-01 .box-pc-n').click(function(){
        $(this).addClass('box-pc-active');
        $('.box-pc-y').removeClass('box-pc-active');
        $('.box-prd-recom-02 .btn-prd-recom').removeAttr('disabled');
    });

    // process 2 다음 클릭 시
    $('.btn-prd-recom-02').click(function(){
        if($('.box-pc-01 .box-pc-y').hasClass('box-pc-active')){
            $('.box-prd-recom-02').css('display','none');
            $('.box-prd-recom-03').css('display','block');
        }else{
            $('.box-prd-recom-02').css('display','none');
            $('.box-prd-recom-04').css('display','block');
        }
    });

    // process 3 진입
    // 예/적금 이용하고 있어요 버튼 클릭 시
    $('.box-pc-02 .box-pc-y').click(function(){
        $(this).addClass('box-pc-active');
        $('.box-pc-n').removeClass('box-pc-active');
        $('.box-prd-recom-03 .btn-prd-recom').removeAttr('disabled');
    });

    // 주식/펀드 이용하고 있어요 버튼 클릭 시
    $('.box-pc-02 .box-pc-n').click(function(){
        $(this).addClass('box-pc-active');
        $('.box-pc-y').removeClass('box-pc-active');
        $('.box-prd-recom-03 .btn-prd-recom').removeAttr('disabled');
    });

    // process 3 다음 클릭 시
    $('.btn-prd-recom-03').click(function(){
        $('.box-prd-recom-03').css('display','none');
        $('.box-prd-recom-04').css('display','block');
    });

    // process 4 진입
    // 네! 일을 하고 있어요 클릭 시
    $('.box-pc-03 .box-pc-y').click(function(){
        $(this).addClass('box-pc-active');
        $('.box-pc-n').removeClass('box-pc-active');
        $('.box-prd-recom-04 .btn-prd-recom').removeAttr('disabled');
    });

    // 아니요 일을 하고 있지 않아요 버튼 클릭 시
    $('.box-pc-03 .box-pc-n').click(function(){
        $(this).addClass('box-pc-active');
        $('.box-pc-y').removeClass('box-pc-active');
        $('.box-prd-recom-04 .btn-prd-recom').removeAttr('disabled');
    });

    // process 4 완료 클릭 시
    $('.btn-prd-recom-04').click(function(){
        $('.box-prd-recom-04').css('display','none');
        $('.box-prd-recom-05').css('display','block');
    });
    
    // process 5 확인 클릭 시
    $('.btn-prd-recom-05').click(function(){
        location.href = '/';
    });
});