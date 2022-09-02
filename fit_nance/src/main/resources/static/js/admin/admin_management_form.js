
$(document).ready(function(){
	
    $('#updateRoleBtn').on('click',function(){
    

		var answer = confirm("선택된 회원정보를 변경하시겠습니까?");
			
			if(answer){

				// 전송하고 결과 받고, 포워딩
				// 결과가 1이면 notice로 포워딩
				$.ajax({
					type: "post",
		 			url: "/admin/updateMemberRole",
		 			data: {"memRole": $('#memRole').val(),
		 					"memId": $('#memId').val()},
					success: function(result){
						// 성공 시 수행되는 함수 : 반환되는 값을 result로 받음
						if(result == "success"){
							alert("권한 변경 성공");
							location.href="redirect:/";
						}else{
							alert("수정 실패");
						}				
					},
					error: function(){
						// 오류 있을 경우 수행되는 함수
						alert("전송 실패");
					}
				});
			}
		
	});
	
	});
    