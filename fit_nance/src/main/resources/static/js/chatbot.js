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
 	
 	$('.box-chatbot').click(function(){
 		if(!($('#resultBox span').hasClass('a'))){
 			callAjax();
 		}
 	});
 	
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
		$('#chatInput').val("");
		$('#chatInput').focus();
    });// submit 끝
    
    // ajax() 부분을 별도의 함수로 분리
    function callAjax(){
    	$.ajax({
			type:"post",
			url:"chatbot",
			data: {"chatInput": $('#chatInput').val()},
			dataType: "json",
			success:function(result){
				// JSON 그대로 반환 받아서 자바스크립트에서 JSON 파싱
				var bubbles = result.bubbles;
				for(var b in bubbles){
					// 기본 답변인 경우
					if(bubbles[b].type == 'text'){
						// 받은 메세지 출력
						$('#resultBox').append("<span class='a_title'>🧚🏻‍♂️ 피티</span>");
			 			$('#resultBox').append("<pre class='a'>" + bubbles[b].data.description + "</pre>");
					}
					// 멀티링크 답변인 경우
					else if(bubbles[b].type == 'template'){
						if(bubbles[b].data.cover.type=="text"){
							$('#resultBox').append("<span class='a_title'>🧚🏻‍♂️ 피티</span>");
							$('#resultBox').append("<pre class='a'>" + bubbles[b].data.cover.data.description + "</pre>");	
						}
						// 멀티링크 contentTable
						for(var ct in bubbles[b].data.contentTable){
							var ct_data = bubbles[b].data.contentTable[ct];
							for(var ct_d in ct_data){
								$("#resultBox").append("<div class='div_btn'><a class='a_btn' href='"+ct_data[ct_d].data.data.action.data.url+"'>" + 
									ct_data[ct_d].data.title+ "</a></div>");
						    }
					    }// contentTable for문 끝
				    }// 멀티링크 답변 끝
				    // 이미지 답변인 경우
					else if(bubbles[b].type == 'carousel'){
						// 피티 말 한 번에 이미지 여러개 출력
						$('#resultBox').append("<div class='wrap_carousel'><span class='a_title'>🧚🏻‍♂️ 피티</span>");
						for(var c in bubbles[b].data.cards){
							$("#resultBox").append("<div class='div_a'><img class='a_img' src='" + bubbles[b].data.cards[c].data.cover.data.imageUrl + "'>"
													+ "<span class='a_img_title'>" + bubbles[b].data.cards[c].data.cover.title + "</span>"
													+ "<pre class='a_img_descript'>" + bubbles[b].data.cards[c].data.cover.data.description + "</pre>"
													+ "<a class='a_link_prd' href='" + bubbles[b].data.cards[c].data.contentTable[0][0].data.data.action.data.url  +"'>"
													+ bubbles[b].data.cards[c].data.contentTable[0][0].data.title + "</a></div>");
						}
				    }//carousel 끝	
				}//bubbles for문 종료
	 			
	 			// 마지막 대화 내용이 보이도록
	 			$('#resultBox').scrollTop($('#resultBox')[0].scrollHeight);
			},
			error:function(){
				// 오류있을 경우 수행되는 함수
				alert("전송 실패");
			}
		}); // ajax 끝
    }
});