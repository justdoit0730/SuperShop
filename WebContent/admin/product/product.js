function go_write() {
	var theForm = document.frm;
	theForm.action = "admin_product_write_form.do";
	theForm.submit();
}

function NumberFormat(won) {
	theWon = won.value;
	theWon = theWon.replace(/\D/g,''); //d: 숫자를 찾음 D:숫자가 아닌 문자를 찾음
	len = theWon.length - 3;
	while(len > 0) {
		theWon = theWon.substr(0,len) +','+theWon.substr(len);
		len -= 3;
	}
	won.value=theWon;
	return won;
}

function go_ab() { //판매가 - 원가 = 순매출을 replace해서 계산해 준다
	var theForm = document.frm;
	var a = theForm.price2.value.replace(/,/g,''); //g 발생할 모든 pattern에 대한 전역 검색
	var b = theForm.price1.value.replace(/,/g,'');
	var ab = parseInt(a) - parseInt(b);
	theForm.price3.value = ab;
}

 function go_save() {
 	var theForm = document.frm;
 	if(!theForm.kind.value) {
 		alert("상품분류 선택");
 		theForm.kind.focus();
 	}else if(!theForm.name.value) {
 		alert("상품명 입력");
 		theForm.name.focus();
 	}else{
 		theForm.encoding="multipart/form-data";
 		theForm.price1.value=removeComma(theForm.price1);
 		theForm.price2.value=removeComma(theForm.price2);
 		theForm.price3.value=removeComma(theForm.price3);
 	}
 	theForm.action = "admin_product_write.do";
 	theForm.submit();
 }


function removeComma(input) { //,을 빼고 값을 다시 넣어 준다
	return input.value.replace(/,/gi,"");
	//i : 대소문자 구분 안함
}

