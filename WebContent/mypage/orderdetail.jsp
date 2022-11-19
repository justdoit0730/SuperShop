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
					    <div class="panel-heading" role="tab" id="headingTwo">
					      <h4 class="panel-title">
					        <a class="collapsed" data-toggle="collapse" data-parent="#accordion" href="#collapseTwo" aria-expanded="false" aria-controls="collapseTwo">
					        <span class="badge pull-right">
					          	<i class="fa fa-plus"></i>
					          </span>
					          CAMPING CHAIR
					        </a>
					      </h4>
					    </div>
					    <div id="collapseTwo" class="panel-collapse collapse" role="tabpanel" aria-labelledby="headingTwo">
					      <div class="panel-body">
					        <div id="item">
						        <ul>
						        	<li><a href="">HIGHT CHAIR</></a></li>
						        	<li><a href="">MIDUM CHAIR</></a></li>
						        	<li><a href="">LOW CHAIR</></a></li>
						        </ul>
						    </div>
					      </div>
					    </div>
					  </div>
					  <div class="panel panel-default">
					    <div class="panel-heading" role="tab" id="headingThree">
					      <h4 class="panel-title">
					        <a class="collapsed" data-toggle="collapse" data-parent="#accordion" href="#collapseThree" aria-expanded="false" aria-controls="collapseThree">
					        <span class="badge pull-right">
					          	<i class="fa fa-plus"></i>
					          </span>
					         CAMPING CAR
					        </a>
					      </h4>
					    </div>
					    <div id="collapseThree" class="panel-collapse collapse" role="tabpanel" aria-labelledby="headingThree">
					      <div class="panel-body">
					        <div id="item">
						        <ul>
						        	<li><a href="">HIGHT CAR</></a></li>
						        	<li><a href="">MIDUM CAR</></a></li>
						        	<li><a href="">LOW CAR</></a></li>
						        </ul>
						    </div>
					      </div>
					    </div>
					  </div>
					  <div class="panel panel-default">
					    <div class="panel-heading" role="tab" id="headingThree">
					      <h4 class="panel-title">
					        <a href="#">CAMPING PRODUCT</a>
					      </h4>
					    </div>
					  </div>
					  <div class="panel panel-default">
					    <div class="panel-heading" role="tab" id="headingThree">
					      <h4 class="panel-title">
					        <a href="#">CAMPING FIRE</a>
					      </h4>
					    </div>
					  </div>
					</div>
				</div>
				<div class="col-md-9">
				<form name="formm" method="post">
					<div class="">
						<h2>Mypage : 주문상세정보</h2>
						<h3>주문자 정보</h3>
								<table class="table">
								  <tr>
								  	<th>주문일자</th>
								  	<th>주문번호</th>
								  	<th>주문자</th>
								  	<th>주문총액</th>
								  </tr>
								  <tr>
								  	<td>${orderDetail.indate}</td>
								  	<td>${orderDetail.oseq }</td>
								  	<td>${orderDetail.mname }</td>
								  	<td><fmt:formatNumber value="${totalPrice}"  type="currency"/></td>
								  </tr>
								</table>
						<h3>주문 상품 정보</h3>
								<table class="table">
								  <tr>
								  	<th>상품명</th>
								  	<th>상품별주문정보</th>
								  	<th>수량</th>
								  	<th>가격</th>
								  	<th>처리상태</th>
								  </tr>
						<c:forEach items="${orderList}" var="orderVO">
								  <tr>
								  	<td>${orderVO.pname }</td>
								  	<td>${orderVO.odseq }</td>
								  	<td>${orderVO.quantity }</td>
								  	<td><fmt:formatNumber value="${orderVO.price2 * orderVO.quantity }"/></td>
								  	<td>
								  		<c:choose>
								  			<c:when test="${orderVO.result == '1'}">진행중</c:when>
								  			<c:otherwise><span style="color:#f00;">처리완료</span></c:otherwise>
								  		</c:choose>
								  	</td>
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