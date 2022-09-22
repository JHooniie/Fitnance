
   $(document).ready(function(){
	
	$('.box-favoriteList-list.00').css('display','block');

	$('.box-favoriteList-tab li').on('click',function(){
		var index = $(this).index();
		$('.box-favoriteList-tab li').find('.span-favorite-tab').removeClass('active');
		$(this).find('.span-favorite-tab').addClass('active');
		$('.box-favoriteList-list').css('display','none');
 		 $('.box-favoriteList-list').eq(index).css('display','block');

		 console.log(index);
	});

	 $('.button-favorite-delete').on('click',function(){

		
	 	var memId = $(this).children('.fav-memId').val();
	 	var oIndex = $(this).children('.fav-oIndex').val();
	 	var kind = $(this).children('.fav-kind').val();

		$.ajax({
			type:"post",
			url:`/myFavoriteDelete/${memId}/${kind}/${oIndex}`,
			data:{"memId":memId,
			  	  "oIndex":oIndex,
				  "kind":kind},  
			context: this,
			success:function(result){
				confirm("정말 찜한 상품 목록에서 제거하시겠습니까?");
				$(this).parents('.box-favoriteList-cell').remove();
				reloadDivArea();
				history.go();

			},
			error:function(){
				alert("전송 실패");
			}		
		}); 	// ajax 끝
	  });

	 function reloadDivArea() {
		$('.box-favoriteList-tab').load(location.href+' .box-favoriteList-tab');
	};

});