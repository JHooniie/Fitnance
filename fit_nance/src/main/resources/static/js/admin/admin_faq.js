// admin_notice.js

$(document).ready(function() {
	// 등록 버튼 클릭 시 페이지 이동
	$('#addFAQBtn').click(function(){
		location.href="/admin/registFAQ"
	});
	
	$('#allCheck').click(function() {
		if($(this).is(':checked')){
			$('.chkDelete').prop('checked', true);
		}else{
			$('.chkDelete').prop('checked', false);
		}		
	});

	$('.chkDelete').click(function() {
		var total = $('.chkDelete').length;
		var checked = $('.chkDelete:checked').length;

		if(total != checked){
			$('#allCheck').prop('checked', false);
		}else{
			$('#allCheck').prop('checked', true);
		} 
	});
  
  	// 선택한 공지사항 삭제
	$('#deleteFAQBtn').click(function(){
		// 선택 여부 확인 : 한 개라도 선택하면 true, 아무것도 없으면 false
		if($('.chkDelete:checked').length == 0){
			alert("선택된 faq가 없습니다.");
		}else{
			var answer = confirm("선택된 faq를 삭제하시겠습니까?");
			
			if(answer){
				var checkArr = new Array();
				$('.chkDelete:checked').each(function(){
					checkArr.push($(this).attr("data-faqIndex"));
				});
				
				// 전송하고 결과 받고, 포워딩
				// 결과가 1이면 notice로 포워딩
				$.ajax({
					type: "post",
		 			url: "deleteFAQ",
		 			data: {"checkArr":checkArr},
					success: function(result){
						// 성공 시 수행되는 함수 : 반환되는 값을 result로 받음
						if(result == 1){
							location.href="/admin/faq";
						}else{
							alert("삭제 실패");
						}				
					},
					error: function(){
						// 오류 있을 경우 수행되는 함수
						alert("전송 실패");
					}
				});
			}
		}
	});

});