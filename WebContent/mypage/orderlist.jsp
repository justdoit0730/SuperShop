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
					  <div class="panel panel-default">
					    <div class="panel-heading" role="tab" id="headingThree">
					      <h4 class="panel-title">
					        <a href="productlist.do?kind=1">건담</a>
					      </h4>
					    </div>
					  </div>
					  <div class="panel panel-default">
					    <div class="panel-heading" role="tab" id="headingThree">
					      <h4 class="panel-title">
					        <a href="productlist.do?kind=2">피규어</a>
					      </h4>
					    </div>
					  </div>
					  <div class="panel panel-default">
					    <div class="panel-heading" role="tab" id="headingThree">
					      <h4 class="panel-title">
					        <a href="productlist.do?kind=3">프라모델</a>
					      </h4>
					    </div>
					  </div>
					  <div class="panel panel-default">
					    <div class="panel-heading" role="tab" id="headingThree">
					      <h4 class="panel-title">
					        <a href="productlist.do?kind=4">과학교재</a>
					      </h4>
					    </div>
					  </div>
					  <div class="panel panel-default">
					    <div class="panel-heading" role="tab" id="headingThree">
					      <h4 class="panel-title">
					        <a href="main.do">HOEM</a>
					      </h4>
					    </div>
					  </div><!-- 끝 -->
					</div>
				</div>
				<div class="col-md-9">
				<form name="formm" method="post">
					<div class="">
						<h2>주문 목록</h2>
						
								<table class="table">
								  <tr>
								  	<th>상품명</th>
								  	<th>수량</th>
								  	<th>가격</th>
								  	<th>주문일</th>
								  	<th>진행상태</th>
								  </tr>
								  <c:forEach items="${orderList}" var="orderVO">
									  <tr>
									  	<td><a href="productdetail.do?pseq=${cartVO.pseq}">${orderVO.pname}</a></td>
									  	<td>${orderVO.quantity}</td>
									  	<td>
									  	<fmt:formatNumber value="${orderVO.price2*orderVO.quantity}" type="currency"/>
									  	</td>
									  	<td>${orderVO.indate}</td>
									  	<td>처리 진행중</td>
									  </tr>
								  </c:forEach>
								  <tr>
								  	<th colspan="2">총액</th>
								  	<th colspan="2"><fmt:formatNumber value="${totalPrice}" type="currency"/></th>
								  	<th>주문 처리 완료 되었습니다</th>
								  </tr>
								</table>

						</div>
						<div id="buttons">
							<input type="button" class="btn btn-default" value="쇼핑 계속하기" onclick="location.href='main.do'"> &nbsp;
						</div>
					</form>
				</div> <!-- 9 end -->
			
			</div>
		</div>

	</section>
</div>

<%@ include file="../footer.jsp"%>