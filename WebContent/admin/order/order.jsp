<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ include file="../header.jsp" %>

<script>
	function go_search() {
		document.frm.action="adminorder.do";
		document.frm.submit();
	}
	
	function goOrderSave() {
		var count = 0;
		
		if(document.frm.result.length == undefined) { //배열이 아닐때
			if(document.frm.result.checked == true) {
				count++;
			}
		}
		
		for(var i=0; i<document.frm.result.length; i++) {
			if(document.frm.result[i].checked == true) {
				count++;
			}
		}
		
		if(count == 0) {
			alert("주문처리할 항목을 선택하세요");
		}else{
			document.frm.action = "adminOrderSave.do";
			document.frm.submit();
		}
		
	}
</script>
	<div class="col-md-10">
		<h3 style="text-align:center">주문리스트</h3>
		<form class="form-inline" name="frm" method="post">
		<div class="productlist">
			<div class="col-md-12" style="margin-bottom:30px;">
				
				  <div class="form-group">
				    <label for="mname">주문자이름</label>
				    <input type="text" name="mname" class="form-control" id="mname" placeholder="검색 이름 입력">
				  </div>
				  <button type="button" class="btn btn-default" onclick="go_search()">검색</button>
				
			</div>
			<div class="col-md-12">
				<div class="table-responsive">
				  <table class="table">
				    <tr>
				    	<th>주문번호(처리여부)</th>
				    	<th>주문자</th>
				    	<th>상품명</th>
				    	<th>수량</th>
				    	<th>우편번호</th>
				    	<th>배송지</th>
				    	<th>전화</th>
				    	<th>주문일</th>
				    </tr>
				    <c:choose>
				    <c:when test="${orderList eq null}">
				    	<tr>
				    		<td>주문 상품이 없습니다</td>
				    	</tr>
				    </c:when>
				    <c:otherwise>
					    <c:forEach items="${orderList}" var="orderVO">
						    <tr>
						    	<td>
						    		<c:choose>
						    			<c:when test="${orderVO.result == '1'}">
						    				<span style="color:#00f;">${orderVO.odseq}</span>
						    				(<input type="checkbox" name="result" value="${orderVO.odseq}"> 미처리)
						    			</c:when>
						    			<c:otherwise>
						    				<span style="color:#f00;">${orderVO.odseq}</span>
						    				(<input type="checkbox" checked="checked" disabled="disabled" 
						    				value="${orderVO.odseq}"> 처리완료)
						    			</c:otherwise>
						    		</c:choose>
						    	</td>
						    	<td>${orderVO.mname}</td>
						    	<td>${orderVO.pname}</td>
						    	<td>${orderVO.quantity}</td>
						    	<td>${orderVO.zipNum}</td>
						    	<td>${orderVO.address1} ${orderVO.address2}</td>
						    	<td>${orderVO.phone}</td>
						    	<td>${orderVO.indate}</td>
						    </tr>
					    </c:forEach>
					  </c:otherwise>
				    </c:choose>
				  </table>
				  <button type="button" class="btn default-btn" onClick="goOrderSave()">주문처리(입금확인)</button>
			</form>
				  <div class="col-md-12 text-center">
				  	<nav class="page">
					  <ul class="pagination">
					    <li class="disabled"><a href="#" aria-label="Previous"><span aria-hidden="true">&laquo;</span></a></li>
					    <li class="active"><a href="#">1 <span class="sr-only">(current)</span></a></li>
					    <li><a href="#">2</a></li>
					    <li><a href="#">3</a></li>
					    <li><a href="#">4</a></li>
					    <li><a href="#">5</a></li>
					    <li>
					      <a href="#" aria-label="Next">
					        <span aria-hidden="true">&raquo;</span>
					      </a>
					    </li>
					  </ul>
					</nav>
					
				  </div>
				</div>
				</div>
</div>
</body>
</html>