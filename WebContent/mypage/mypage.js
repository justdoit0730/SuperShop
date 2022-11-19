function go_cart() {
	if(document.formm.quantity.value == "") {
		alert("수량 입력");
		formm.quantity.focus();
	}else {
		document.formm.action="cartInsert.do";
		document.formm.submit();
	}
}

function goCartDelete() {
	
	var count = 0;
	
	if(document.formm.cseq.length == undefined) { 
		if(document.formm.cseq.checked == true) {
			count++;
		}
	}
	
	for(var i=0; i<document.formm.cseq.length; i++) {
		if(document.formm.cseq[i].checked == true) {
			count++;
		}
	}
	
	if(count == 0) {
		alert("삭제할 항목 선택");
	}else{
		document.formm.action = "cartDelete.do";
		document.formm.submit();
	}
}

function goOrderInsert() {
	document.formm.action="orderInsert.do";
	document.formm.submit();
}

















