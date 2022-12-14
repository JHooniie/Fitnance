/**
 * admin_qna.js
 */

$(document).ready(function() {
	
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
  
  	// 선택한 문의사항 삭제
	$('#deleteQNABtn').click(function(){
		// 선택 여부 확인 : 한 개라도 선택하면 true, 아무것도 없으면 false
		if($('.chkDelete:checked').length == 0){
			alert("선택된 문의사항이 없습니다.");
		}else{
			var answer = confirm("선택된 문의사항을 삭제하시겠습니까?");
			
			if(answer){
				var checkArr = new Array();
				$('.chkDelete:checked').each(function(){
					checkArr.push($(this).attr("data-qnaIndex"));
				});
				console.log(checkArr);
				// 전송하고 결과 받고, 포워딩
				// 결과가 1이면 qna로 포워딩
				$.ajax({
		 			url: "deleteQNA",
					type: "post",
        			traditional: true,
		 			data: {"checkArr":checkArr},
					success: function(result){
						// 성공 시 수행되는 함수 : 반환되는 값을 result로 받음
						if(result == 1){
							alert("문의사항이 삭제되었습니다");
							location.href="/admin/qna";
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