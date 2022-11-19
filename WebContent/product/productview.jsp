<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ include file="../header.jsp"%>


<div class="container">

	<section class="category">
		<div class="container">
			<div class="row">
				<div class="col-md-3">
					<h2>CATEGORY</h2>
					<div class="panel-group" id="accordion" role="tablist"
						aria-multiselectable="true">
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
									<a href="main.do">HOME</a>
								</h4>
							</div>
						</div>
					</div>
				</div>
				<div class="col-md-9">
					<form method="post" name="formm">
						<input type="hidden" name="pseq" value="${pvo.pseq}">
						<div class="product-details">
							<div class="col-md-5" style="padding-bottom: 20px;">
								<img
									src="${pageContext.request.contextPath}/product_images/${pvo.image}"
									alt="" style="width: 100%">
							</div>
							<div class="col-md-7 details">
								<h2>${pvo.name}</h2>
								<p>
									판매가&nbsp;&nbsp; <span class="${pvo.price2}"></span> <span
										style="color: #f00; font-size: 22px;"><fmt:formatNumber
											value="${pvo.price2}" /></span>&nbsp;&nbsp;5% DOWN
								</p>

								<p>국내·해외배송 국내배송</p>
								<p>배송방법 택배</p>
								<p>배송비 240¥ (2500¥ 이상 구매 시 무료)</p>
								<div class="">
									<button class="minus" type="button">-</button>
									<input type="text" name="quantity" value="1" class="quantity">
									<button class="plus" type="button">+</button>
								</div>
								<div class="total"></div>
								<button type="button" class="btn btn-default"
									onclick="go_cart()">장바구니담기</button>
								<!-- <button type="button" class="btn btn-default" onclick="go_order()">구매하기</button> -->
							</div>
						</div>
					</form>
					<div class="category-tab">
						<div class="col-md-12">
							<div role="tabpanel">
								<!-- Nav tabs -->
								<ul class="nav nav-tabs" role="tablist">
									<li role="presentation" class="active"><a href="#details"
										aria-controls="details" role="tab" data-toggle="tab">상품상세설명</a></li>
									<li role="presentation"><a href="#review"
										aria-controls="review" role="tab" data-toggle="tab">제품후기</a></li>
									<li role="presentation"><a href="#qna" aria-controls="qna"
										role="tab" data-toggle="tab">질문답변</a></li>
								</ul>

								<!-- Tab panes -->
								<div class="tab-content">
									<div role="tabpanel" class="tab-pane active" id="details">
										${pvo.content}</div>
									<div role="tabpanel" class="tab-pane" id="review">
										<!-- 리뷰 별점 시작 -->
										<form modelAttribute="review" action="${ reviewsPath }"	method="post">
											<c:forEach var="error" items="${ fieldErrors }">
												<div class="alert alert-warning">
													<strong>${ error.getField() }</strong>: ${ error.getDefaultMessage() }
												</div>
											</c:forEach>
											<textarea path="text" Class="form-control" rows="5"></textarea> 
											<!-- 평점 선택창 -->
											<label path="rating">평점: </label>
											<select path="rating">
												<options items="${ ratingOptions }" ></options>
											</select>
											<hidden path="bookId" ></hidden>
											<hidden path="userId" ></hidden>
											<button class="btn btn-block btn-primary" type="submit">리뷰
												등록</button>
										</form>

										<!-- 리뷰 별점 종료 -->

									</div>
									<div role="tabpanel" class="tab-pane" id="qna">
										<div class="col-md-3">
											<div class="thumbnail">
												<img src="images/home/gallery3.jpg" alt="">
												<div class="caption">
													<h3>GOOD TENT</h3>
													<p>
														<a href="#" class="btn btn-default" role="button"><i
															class="fa fa-shopping-cart"></i> ADD CART</a>
													</p>
												</div>
											</div>
										</div>
										<div class="col-md-3">
											<div class="thumbnail">
												<img src="images/home/gallery2.jpg" alt="">
												<div class="caption">
													<h3>GOOD TENT</h3>
													<p>
														<a href="#" class="btn btn-default" role="button"><i
															class="fa fa-shopping-cart"></i> ADD CART</a>
													</p>
												</div>
											</div>
										</div>
										<div class="col-md-3">
											<div class="thumbnail">
												<img src="images/home/gallery4.jpg" alt="">
												<div class="caption">
													<h3>GOOD TENT</h3>
													<p>
														<a href="#" class="btn btn-default" role="button"><i
															class="fa fa-shopping-cart"></i> ADD CART</a>
													</p>
												</div>
											</div>
										</div>
										<div class="col-md-3">
											<div class="thumbnail">
												<img src="images/home/gallery1.jpg" alt="">
												<div class="caption">
													<h3>GOOD TENT</h3>
													<p>
														<a href="#" class="btn btn-default" role="button"><i
															class="fa fa-shopping-cart"></i> ADD CART</a>
													</p>
												</div>
											</div>
										</div>
									</div>

								</div>

							</div>
						</div>
					</div>
				</div>
				<!-- 9 end -->

			</div>
		</div>

	</section>
</div>

<%@ include file="../footer.jsp"%>