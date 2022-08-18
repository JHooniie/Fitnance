// common.js

$(document).ready(function(){
    // 상품 안내 메뉴 마우스 호버
    $(".li-prd-info").hover(function() {
        $('.box-menu-02-bottom').addClass('dp-flex');
    }, function() {
        $('.box-menu-02-bottom').removeClass('dp-flex');
    });

    // 계산기 마우스 호버
    $(".li-cal").hover(function() {
        $('.box-menu-03-bottom').addClass('dp-flex');
    }, function() {
        $('.box-menu-03-bottom').removeClass('dp-flex');
    });

    // 고객센터 마우스 호버
    $(".li-cus-service").hover(function() {
        $('.box-menu-04-bottom').addClass('dp-flex');
    }, function() {
        $('.box-menu-04-bottom').removeClass('dp-flex');
    });
    
});