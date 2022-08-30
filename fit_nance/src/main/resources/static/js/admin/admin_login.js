   $(document).ready(function(){

    //로그인 유효성 검사
   

	 $('#login_form').on('submit', function(event){

         event.preventDefault();
        

         $.ajax({
             type:"post",
             url:"/adminloginProc",
             data:{"memId":$('#floatingInput').val(),
             	  "memPwd":$('#floatingPassword').val()},
             dataType:"text",
             success:function(result){
                 // 성공 시 수행되는 함수 
                 // 반환되는 값을  result로 받음
                 if(result == "success") {
                     alert("로그인 성공\nIndex 페이지로 이동합니다.");
                     location.href="/";
                 } else {
                     alert("아이디 또는 비밀번호가 일치하지 않습니다.");
                 }
             },
             error:function(){
                 // 오류있을 경우 수행되는 함수
                 alert("전송 실패");
             },
             complete:function(){
 // 				alert("작업 완료")
             }			
         }); 	// ajax 끝
     }); // submit 끝 



    });
