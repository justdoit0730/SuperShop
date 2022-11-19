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
						<h2>Mypage : ${title}</h2>
						
								<table class="table">
								  <tr>
								  	<th>주문일자</th>
								  	<th>주문번호</th>
								  	<th>상품명</th>
								  	<th>결재금액</th>
								  	<th>주문상세</th>
								  </tr>
								  <c:forEach items="${orderList}" var="orderVO">
									  <tr>
									  	<td>${orderVO.indate}</td>
									  	<td>${orderVO.oseq}</td>
									  	<td>${orderVO.pname}</td>
									  	<td><fmt:formatNumber value="${orderVO.price2}" type="currency"/></td>
									  	<td><a href="orderDetail.do?oseq=${orderVO.oseq}">조회</a></td>
									  </tr>
								  </c:forEach>
								  
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