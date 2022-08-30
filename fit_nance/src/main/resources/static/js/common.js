// common.js

$(document).ready(function(){

// 각 영역 진입 시 active
    var path = $(location).attr('pathname').substring(1, 5);
	if(path == 'intr') {
		$('.box-menu-top ul li').removeClass('menu-active');
		$('.li-intro').addClass('menu-active');
	} else if(path == 'prd_') {
		$('.box-menu-top ul li').removeClass('menu-active');
		$('.li-prd-info').addClass('menu-active');
	} else if(path == 'list') {
		$('.box-menu-top ul li').removeClass('menu-active');
		$('.li-prd-info').addClass('menu-active');
	} else if(path == 'calc') {
		$('.box-menu-top ul li').removeClass('menu-active');
		$('.li-cal').addClass('menu-active');
	} else if(path == 'cal_') {
		$('.box-menu-top ul li').removeClass('menu-active');
		$('.li-cal').addClass('menu-active');
	} else if(path == 'noti') {
		$('.box-menu-top ul li').removeClass('menu-active');
		$('.li-cus-service').addClass('menu-active');
		$('header').addClass('header-active');
	} else if(path == 'faq') {
		$('.box-menu-top ul li').removeClass('menu-active');
		$('.li-cus-service').addClass('menu-active');
		$('header').addClass('header-active');
	} else if(path == 'cc_i') {
		$('.box-menu-top ul li').removeClass('menu-active');
		$('.li-cus-service').addClass('menu-active');
		$('header').addClass('header-active');
	}
	
    // 상품 안내 메뉴 마우스 호버
    $(".li-prd-info").hover(function() {
        $('.box-menu-02-bottom').addClass('dp-flex');
        $('header').removeClass('header-active');
    }, function() {
        $('.box-menu-02-bottom').removeClass('dp-flex');
    });

    // 계산기 마우스 호버
    $(".li-cal").hover(function() {
        $('.box-menu-03-bottom').addClass('dp-flex');
        $('header').removeClass('header-active');
    }, function() {
        $('.box-menu-03-bottom').removeClass('dp-flex');
    });

    // 고객센터 마우스 호버
    $(".li-cus-service").hover(function() {
        $('.box-menu-04-bottom').addClass('dp-flex');
        $('header').removeClass('header-active');
    }, function() {
        $('.box-menu-04-bottom').removeClass('dp-flex');
        if(path == 'noti') {
			$('header').addClass('header-active');
		} else if(path == 'faq') {
			$('header').addClass('header-active');
		} else if(path == 'cc_i') {
			$('header').addClass('header-active');
		}
    });
    
    // top btn
    $(window).scroll(function () {
		if ($(this).scrollTop() > 200) {
			$('.box-top-btn').fadeIn(200);
		} else {
			$('.box-top-btn').fadeOut(200);
		}
	});

	// 버튼 클릭하면 원하는 위치로 이동
	$('.box-top-btn').click(function (event) {
		event.preventDefault();
		$('html, body').animate({ scrollTop: 0 }, 300);
	});
	
	// 챗봇 클릭 시
	$('.box-chatbot').click(function(){
		$('#boxChatbot').addClass('dp-block');
	});
	
	// 챗봇 외 영역 클릭 시
	$(document).mouseup(function (e){
	  var LayerPopup = $("#boxChatbot");
	  if(!LayerPopup.is(e.target) && LayerPopup.has(e.target).length == 0){
	    LayerPopup.removeClass('dp-block');
	  }
	});
});