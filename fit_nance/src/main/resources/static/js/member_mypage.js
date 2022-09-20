
   $(document).ready(function(){
	$('.box-favoriteList-list.00').css('display','block');

	$('.box-favoriteList-tab li').on('click',function(){
		var index = $(this).index();
		$('.box-favoriteList-tab li span').removeClass('active');
		$(this).children('.favorite-tab').addClass('active');
		$('.box-favoriteList-list').css('display','none');
 		 $('.box-favoriteList-list').eq(index).css('display','block');
	});



});