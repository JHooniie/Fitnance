/**
 * papago.js
 */
 
$(document).ready(function(){
	// 각 영역의 path
	var path = $(location).attr('pathname');
 	$('#pathInput').val(path);
 	
 	// KOR 클릭 시
 	$('.span-lang-kor').click(function(){
 		$(location).attr("href", "http://localhost:8080" + path);
 	});
 	
 	// ENG 클릭 시
 	$('.span-lang-eng').click(function(){
 		$.ajax({
			type:"post",
			url:"papago",
			data: {"pathInput": $('#pathInput').val()},
			dataType: "text",
			success:function(result){
				console.log($('#pathInput').val());
				$('body').html(result);
				
				$('.span-lang-eng').addClass('span-lang-active');
		 		$('.span-lang-eng').removeClass('span-lang-inactive');
		 		$('.span-lang-kor').addClass('span-lang-inactive');
		 		$('.span-lang-kor').removeClass('span-lang-active');
			},
			error:function(){
				// 오류있을 경우 수행되는 함수
				alert("전송 실패");
			}
		}); // ajax 끝
 	});
 	
});