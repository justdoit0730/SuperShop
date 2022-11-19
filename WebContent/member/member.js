function go_save() {
	if(document.formm.id.value == "") {
		alert("아이디를 입력하세요");
		document.formm.id.focus();
	}else if(formm.pwd.value == "") {
		alert("비밀번호 입력");
		formm.pwd.foucs();
	}else if(formm.pwd.value != formm.pwdcheck.value) {
		alert("비밀번호가 일치 해야 합니다");
		formm.pwd.focus();
	}else{
		formm.action="join.do";
		formm.submit();
	}
}

function findAddr(){
	new daum.Postcode({
        oncomplete: function(data) {
        	
        	console.log(data);
        	
            // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.
            // 도로명 주소의 노출 규칙에 따라 주소를 표시한다.
            // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
            var roadAddr = data.roadAddress; // 도로명 주소 변수
            var jibunAddr = data.jibunAddress; // 지번 주소 변수
            // 우편번호와 주소 정보를 해당 필드에 넣는다.
            document.getElementById('member_post').value = data.zonecode;
            if(roadAddr !== ''){
                document.getElementById("member_addr").value = roadAddr;
            } 
            else if(jibunAddr !== ''){
                document.getElementById("member_addr").value = jibunAddr;
            }
        }
    }).open();
}

//id 존재여부
$(function() {

	$("#id").blur(function() {
					//비동기식 id 존재여부 확인하기
					$.ajax({
						type:"post",
						url:"checkUserid.do",
						data:{id:$("#id").val()},
						success:function(data) {
							
							if(data != 1) {
								if($("#id").val() != "") {
									$("#msg").html("사용 가능한 아이디 입니다");
								}
							}else{
								if($("#id").val() != "") {
									$("#msg").html("사용 불가능한 아이디 입니다");
									$("#id").val("");
									$("#id").focus();
								}
							}
						}, error:function() {
							alert("통신에러");
						}
					})
				})
});