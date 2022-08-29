/**
 * chatbot.js
 */
 
 
 $(document).ready(function(){
	 $('#btnChatSubmit').attr('disabled', 'disabled');
	 $('#chatInput').on('input', function() {
	    if ($(this).val() !== '') {
	        $('#btnChatSubmit').removeAttr("disabled");
	    }
	    else {
	        $('#btnChatSubmit').attr('disabled', 'disabled');
	    }
	});
	
 	// ajax()를 실행하자마자 호출
 	callAjax();
	$('#chatForm').on('submit', function(){
		event.preventDefault();
		
		// 메세지 미 입력 시
		if($('#chatInput').val() == ""){
			alert("질문을 입력해주세요");
			$('#chatInput').focus();
			return false;
		}
		// 보낸 메세지 출력
		$('#resultBox').append("<span class='q'>" + $('#chatInput').val() + "</span>");
     	
		callAjax();
    });// submit 끝
    
    // ajax() 부분을 별도의 함수로 분리
    function callAjax(){
    	$.ajax({
			type:"post",
			url:"chatbot",
			data: {"chatInput": $('#chatInput').val()},
			dataType: "text",
			success:function(result){
				// 받은 메세지 출력
				$('#resultBox').append("<span class='a_title'>🧚🏻‍♂️ 피티</span>");
	 			$('#resultBox').append("<span class='a'>" + result + "</span>");
	 			
	 			// 마지막 대화 내용이 보이도록
	 			$('#resultBox').scrollTop($('#resultBox')[0].scrollHeight);
	 			
	 			$('#chatInput').val("");
				$('#chatInput').focus();
			},
			error:function(){
				// 오류있을 경우 수행되는 함수
				alert("전송 실패");
			}
		}); // ajax 끝
    }
});