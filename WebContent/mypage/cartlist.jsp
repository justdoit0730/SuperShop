<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ include file="../header.jsp"%>


<div class="container">

	<section class="category">
		<div class="container">
			<div class="row">
				<div class="col-md-3">
					<h2>CATEGORY</h2>
					<div class="panel-group" id="accordion" role="tablist" aria-multiselectable="true">
					  <div class="panel panel-default">
					    <div class="panel-heading" role="tab" id="headingOne">
					      <h4 class="panel-title">
					        <a data-toggle="collapse" data-parent="#accordion" href="#collapseOne" aria-expanded="true" aria-controls="collapseOne">
					          <span class="badge pull-right">
					          	<i class="fa fa-plus"></i>
					          </span>
					          SIDE MENU
					        </a>
					      </h4>
					    </div>
					    <div id="collapseOne" class="panel-collapse collapse in" role="tabpanel" aria-labelledby="headingOne">
					      <div class="panel-body">
					      	<div id="item">
						        <ul>
						        	<li><a href="cartList.do">장바구니내역</a></li>
						        	<li><a href="mypage.do">진행중인 주문내역</></a></li>
						        	<li><a href="orderAll.do">총주문내역</></a></li>
						        </ul>
						    </div>
					      </div>
					    </div>
					  </div>
					  
					  <!-- <div class="panel panel-default">
					    <div class="panel-heading" role="tab" id="headingThree">
					      <h4 class="panel-title">
					        <a href="#">CAMPING FIRE</a>
					      </h4>
					    </div>
					  </div> -->
					</div>
				</div>
				<div class="col-md-9">
				<form name="formm" method="post">
					<div class="">
						<h2>장바구니 목록</h2>
						<c:choose>
							<c:when test="${cartList.size() == 0}">
								<h3>장바구니가 비었습니다</h3>
							</c:when>
							<c:otherwise>
								<table class="table">
								  <tr>
								  	<th>상품명</th>
								  	<th>수량</th>
								  	<th>가격</th>
								  	<th>주문일</th>
								  	<th>삭제</th>
								  </tr>
								  <c:forEach items="${cartList}" var="cartVO">
									  <tr>
									  	<td><a href="productdetail.do?pseq=${cartVO.pseq}">${cartVO.pname}</a></td>
									  	<td>${cartVO.quantity}</td>
									  	<td>
									  	<fmt:formatNumber value="${cartVO.price2*cartVO.quantity}" type="currency"/>
									  	</td>
									  	<td>${cartVO.indate}</td>
									  	<td><input type="checkbox" name="cseq" value="${cartVO.cseq}"></td>
									  </tr>
								  </c:forEach>
								  <tr>
								  	<th colspan="2">총액</th>
								  	<th colspan="2"><fmt:formatNumber value="${totalPrice}" type="currency"/></th>
								  	<th><a href="javascript:void(0)" onclick="goCartDelete()">삭제하기</a></th>
								  </tr>
								</table>
							</c:otherwise>	
						</c:choose>
						</div>
						<div id="buttons" style="padding-bottom: 100px;" >
							<input type="button" class="btn btn-default" value="쇼핑 계속하기" onclick="location.href='main.do'"> &nbsp;
							<input type="button" class="btn btn-default" value="주문하기" onclick="goOrderInsert()">
						</div>
					</form>
				</div> <!-- 9 end -->
			
			</div>
		</div>

	</section>
</div>

<%@ include file="../footer.jsp"%>