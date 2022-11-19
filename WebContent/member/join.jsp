<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ include file="../header.jsp"%>

<div class="main">
	<div class="container">
		<ul class="breadcrumb">
			<li><a href="main.do">Home</a></li>
			<li><a href="">Store</a></li>
			<li class="active">Checkout</li>
		</ul>
		<!-- BEGIN SIDEBAR & CONTENT -->
		<div class="row margin-bottom-40">
			<!-- BEGIN CONTENT -->
			<div class="col-md-12 col-sm-12">
				<h1>Checkout</h1>
				<!-- BEGIN CHECKOUT PAGE -->
				<div class="panel-group checkout-page accordion scrollable"
					id="checkout-page">

					<!-- BEGIN CHECKOUT -->
					<form class="form-horizontal" id="formm" name="formm" method="post"
						action="join.do">
						<div id="checkout" class="panel panel-default">
							<div class="panel-heading">
								<h2 class="panel-title">
									<a data-toggle="collapse" data-parent="#checkout-page"
										href="#checkout-content" class="accordion-toggle"> Step
										1:회원가입 옵션 </a>
								</h2>
							</div>
							<div id="checkout-content" class="panel-collapse collapse in">
								<div class="panel-body row">
									<div class="col-md-6 col-sm-6">
										<h3>신규 고객</h3>
										<p>Checkout Options:</p>
										<div class="radio-list">
											<label> <input type="radio" name="account"
												value="register"> 계정 등록
											</label> <label> <input type="radio" name="account"
												value="guest"> 비회원 Check out
											</label>
										</div>
										<p>계정을 만들면 더 빠르게 쇼핑하고 주문 상태에 대한 최신 정보를 얻을 수 있으며 이전에 주문한
											내용을 확인할 수 있습니다.</p>
										<button class="btn btn-primary" type="submit"
											data-toggle="collapse" data-parent="#checkout-page"
											data-target="#payment-address-content">Continue</button>
									</div>
									<div class="col-md-6 col-sm-6">

										<h3>재방문 고객</h3>
										<p>환영합니다! 고객님</p>
										<div class="form-group">
											<label for="userid">ID</label> <input type="text" id="userid"
												name="userid" class="form-control">
										</div>
										<div class="form-group">
											<label for="password-login">Password</label> <input
												type="password" id="userpwd" name="userpwd"
												class="form-control">
										</div>
										<!-- <a href="javascript:;">Forgotten Password?</a> 비밀번호 잊었을 때!-->
										<div class="padding-top-20">
											<button class="btn btn-primary" type="submit">Login</button>
										</div>
										<hr>
										<!--  <div class="login-socio">
                          <p class="text-muted">or login using:</p>
                          <ul class="social-icons">
                            <li><a href="javascript:;" data-original-title="facebook" class="facebook" title="facebook"></a></li>
                            <li><a href="javascript:;" data-original-title="Twitter" class="twitter" title="Twitter"></a></li>
                            <li><a href="javascript:;" data-original-title="Google Plus" class="googleplus" title="Google Plus"></a></li>
                            <li><a href="javascript:;" data-original-title="Linkedin" class="linkedin" title="LinkedIn"></a></li>
                          </ul>
                        </div> -->

									</div>
								</div>
							</div>
						</div>
						<!-- END CHECKOUT -->

						<!-- BEGIN PAYMENT ADDRESS -->
						<div id="payment-address" class="panel panel-default">
							<div class="panel-heading">
								<h2 class="panel-title">
									<a data-toggle="collapse" data-parent="#checkout-page"
										href="#payment-address-content" class="accordion-toggle">
										Step 2: 계정 &amp; 결제 세부 정보 </a>
								</h2>
							</div>
							<div id="payment-address-content" class="panel-collapse collapse">
								<div class="panel-body row">
									<div class="col-md-6 col-sm-6">
										<h3>개인 정보</h3>
										<div class="form-group">
											<label for="name" class="control-label">성명 <span
												class="require">*</span></label> <input type="text"
												class="form-control" id="name" name="name"
												placeholder="성명 입력">
										</div>
										<div class="form-group">
											<label for="phone">전화번호 <span class="require">*</span></label>
											<input type="text" class="form-control" id="phone"
												name="phone" placeholder="전화번호 입력">
										</div>
										<div class="form-group">
											<label for="email" class="control-label"> 이메일 <span
												class="require">*</span></label> <input type="text" name="email"
												id="email" class="form-control" placeholder="이메일 입력">
										</div>

										<h3>계정 정보</h3>
										<div class="form-group">
											<label for="id" class="control-label">ID</label> <input
												type="text" name="id" id="id" class="form-control"
												placeholder="아이디 입력"> <span id="msg"></span>
										</div>
										<div class="form-group">
											<label for="pwd" class="control-label">Password <span
												class="require">*</span></label> <input type="password" id="pwd"
												name="pwd" class="form-control" placeholder="비밀번호 입력">
										</div>
										<div class="form-group">
											<label for="pwdcheck" class="control-label">Password
												확인 <span class="require">*</span>
											</label> <input type="password" id="pwdcheck" name="pwdcheck"
												class="form-control" placeholder="비밀번호 재입력">
										</div>
									</div>
									<div class="col-md-6 col-sm-6">
										<h3>결제 세부 정보</h3>
										<div class="form-group">
											<label for="zipnum" class="control-label">우편번호</label> <input
												type="text" name="zipnum" id="member_post"> <input
												type="button" value="우편번호찾기" onclick="findAddr()">
											<p></p>
											<input type="text" class="form-control" id="member_addr"
												name="address1" placeholder="주소입력"> <input
												type="text" class="form-control" name="address2"
												placeholder="나머지주소 입력">
										</div>
										<!--  <div class="form-group">
                        <label for="city">City <span class="require">*</span></label>
                        <input type="text" id="city" class="form-control">
                      </div>
                      <div class="form-group">
                        <label for="post-code">Post Code <span class="require">*</span></label>
                        <input type="text" id="post-code" class="form-control">
                      </div> -->
										<!-- <div class="form-group">
                        <label for="country">Country <span class="require">*</span></label>
                        <select class="form-control input-sm" id="country">
                          <option value=""> --- Please Select --- </option>
                          <option value="244">Aaland Islands</option>
                          <option value="1">Afghanistan</option>
                          <option value="2">Albania</option>
                        </select>
                      </div>
                      <div class="form-group">
                        <label for="region-state">Region/State <span class="require">*</span></label>
                        <select class="form-control input-sm" id="region-state">
                          <option value=""> --- Please Select --- </option><option value="3513">Aberdeen</option><option value="3514">Aberdeenshire</option><option value="3515">Anglesey</option>
                        </select>
                      </div> -->
									</div>
									<hr>
									<div class="col-md-12">

										<button class="btn btn-primary  pull-right" type="submit"
											id="button-shipping-address" data-toggle="collapse"
											data-parent="#checkout-page"
											data-target="#shipping-method-content">Continue</button>
										<div class="checkbox pull-right">
											<label> <input type="checkbox"> <a
												title="Privacy Policy" href="javascript:;">개인정보 보호정책</a> 을
												읽었으며 이에 동의합니다. &nbsp;&nbsp;&nbsp;
											</label>
										</div>
									</div>
								</div>
							</div>
						</div>
						<!-- END PAYMENT ADDRESS -->

						<!-- BEGIN SHIPPING ADDRESS -->
						<!--  <div id="shipping-address" class="panel panel-default">
                <div class="panel-heading">
                  <h2 class="panel-title">
                    <a data-toggle="collapse" data-parent="#checkout-page" href="#shipping-address-content" class="accordion-toggle">
                      Step 3: 배송정보
                    </a>
                  </h2>
                </div>
                <div id="shipping-address-content" class="panel-collapse collapse">
                  <div class="panel-body row">
                   
                    <div class="col-md-6 col-sm-6">
                     
                      <div class="form-group">
                        <label for="region-state-dd">Region/State <span class="require">*</span></label>
                        <select class="form-control input-sm" id="region-state-dd">
                          <option value=""> --- Please Select --- </option><option value="3513">Aberdeen</option><option value="3514">Aberdeenshire</option><option value="3515">Anglesey</option><option value="3516">Angus</option>
                        </select>
                      </div>
                    </div>
                    <div class="col-md-12">
                      <button class="btn btn-primary  pull-right" type="submit" id="button-shipping-address" data-toggle="collapse"
                       data-parent="#checkout-page" data-target="#shipping-method-content">Continue</button>
                    </div>
                  </div>
                </div>
              </div> -->
						<!-- END SHIPPING ADDRESS -->

						<!-- BEGIN SHIPPING METHOD -->
						<div id="shipping-method" class="panel panel-default">
							<div class="panel-heading">
								<h2 class="panel-title">
									<a data-toggle="collapse" data-parent="#checkout-page"
										href="#shipping-method-content" class="accordion-toggle">
										Step 3: 배송 정보 </a>
								</h2>
							</div>
							<div id="shipping-method-content" class="panel-collapse collapse">
								<div class="panel-body row">
									<div class="col-md-12">
										<p>주문에 사용할 기본 배송 방법을 선택하십시오.</p>
										<h4>고정 요금</h4>
										<div class="radio-list">
											<label> <input type="radio" name="FlatShippingRate"
												value="FlatShippingRate"> 고정 배송료
											</label>
										</div>
										<div class="form-group">
											<label for="delivery-comments">주문에 대한 의견 추가</label>
											<textarea id="delivery-comments" rows="8"
												class="form-control"></textarea>
										</div>
										<button class="btn btn-primary  pull-right" type="submit"
											id="button-shipping-method" data-toggle="collapse"
											data-parent="#checkout-page"
											data-target="#payment-method-content">Continue</button>
									</div>
								</div>
							</div>
						</div>
						<!-- END SHIPPING METHOD -->

						<!-- BEGIN PAYMENT METHOD -->
						<div id="payment-method" class="panel panel-default">
							<div class="panel-heading">
								<h2 class="panel-title">
									<a data-toggle="collapse" data-parent="#checkout-page"
										href="#payment-method-content" class="accordion-toggle">
										Step 4: 결제 방법 </a>
								</h2>
							</div>
							<div id="payment-method-content" class="panel-collapse collapse">
								<div class="panel-body row">
									<div class="col-md-12">
										<p>이 주문에 사용할 기본 결제 방법을 선택하세요.</p>
										<div class="radio-list">
											<label> <input type="radio" name="CashOnDelivery"
												value="CashOnDelivery"> 현금 착불
											</label>
										</div>
										<div class="form-group">
											<label for="delivery-payment-method">주문에 대한 의견 추가</label>
											<textarea id="delivery-payment-method" rows="8"
												class="form-control"></textarea>
										</div>
										<button class="btn btn-primary  pull-right" type="submit"
											id="button-payment-method" data-toggle="collapse"
											data-parent="#checkout-page" data-target="#confirm-content">Continue</button>
										<div class="checkbox pull-right">
											<label> <input type="checkbox"> <a
												title="Terms & Conditions" href="javascript:;">이용약관 </a> 을
												읽었으며 이에 동의합니다. &nbsp;&nbsp;&nbsp;
											</label>
										</div>
									</div>
								</div>
							</div>
						</div>
						<!-- END PAYMENT METHOD -->

						<!-- BEGIN CONFIRM -->
						<div id="confirm" class="panel panel-default">
							<div class="panel-heading">
								<h2 class="panel-title">
									<a data-toggle="collapse" data-parent="#checkout-page"
										href="#confirm-content" class="accordion-toggle"> Step 5:
										회원가입 하기 </a>
								</h2>
							</div>
							<div id="confirm-content" class="panel-collapse collapse">
								<div class="panel-body row">
									<div class="col-md-12 clearfix">
										<div class="table-wrapper-responsive">
											<table>
												<tr>
													<th class="checkout-image">이제 회원 가입 절차가 끝났습니다! 로그인 후 더
														많은 상품을 즐겨보십시오!</th>
													<!-- <th class="checkout-description">Description</th>
                          <th class="checkout-model">Model</th>
                          <th class="checkout-quantity">Quantity</th>
                          <th class="checkout-price">Price</th>
                          <th class="checkout-total">Total</th> -->
												</tr>
												<!-- <tr>
                          <td class="checkout-image">
                            <a href="javascript:;"><img src="assets/pages/img/products/model3.jpg" alt="Berry Lace Dress"></a>
                          </td>
                          <td class="checkout-description">
                            <h3><a href="javascript:;">Cool green dress with red bell</a></h3>
                            <p><strong>Item 1</strong> - Color: Green; Size: S</p>
                            <em>More info is here</em>
                          </td>
                          <td class="checkout-model">RES.193</td>
                          <td class="checkout-quantity">1</td>
                          <td class="checkout-price"><strong><span>$</span>47.00</strong></td>
                          <td class="checkout-total"><strong><span>$</span>47.00</strong></td>
                        </tr> -->
												<!-- <tr>
                          <td class="checkout-image">
                            <a href="javascript:;"><img src="assets/pages/img/products/model4.jpg" alt="Berry Lace Dress"></a>
                          </td>
                          <td class="checkout-description">
                            <h3><a href="javascript:;">Cool green dress with red bell</a></h3>
                            <p><strong>Item 1</strong> - Color: Green; Size: S</p>
                            <em>More info is here</em>
                          </td>
                          <td class="checkout-model">RES.193</td>
                          <td class="checkout-quantity">1</td>
                          <td class="checkout-price"><strong><span>$</span>47.00</strong></td>
                          <td class="checkout-total"><strong><span>$</span>47.00</strong></td>
                        </tr> -->
											</table>
										</div>
										<!-- <div class="checkout-total-block">
                        <ul>
                          <li>
                            <em>Sub total</em>
                            <strong class="price"><span>$</span>47.00</strong>
                          </li>
                          <li>
                            <em>Shipping cost</em>
                            <strong class="price"><span>$</span>3.00</strong>
                          </li>
                          <li>
                            <em>Eco Tax (-2.00)</em>
                            <strong class="price"><span>$</span>3.00</strong>
                          </li>
                          <li>
                            <em>VAT (17.5%)</em>
                            <strong class="price"><span>$</span>3.00</strong>
                          </li>
                          <li class="checkout-total-price">
                            <em>Total</em>
                            <strong class="price"><span>$</span>56.00</strong>
                          </li>
                        </ul>
                      </div> -->
										<div class="form-group">
											<!--    <div class="clearfix"></div> -->
											<input type="button" class="btn btn-primary pull-right"
												onclick="go_save()" value="회원가입 등록">
											<!-- <button class="btn btn-primary pull-right" type="submit" id="button-confirm"onclick="go_save()">회원가입</button> -->
											<button type="button"
												class="btn btn-default pull-right margin-right-20">
												<!-- <input type="reset" > -->
												취소
											</button>
										</div>
									</div>
								</div>
							</div>
						</div>
						<!-- END CONFIRM -->
					</form>
					<!--폼  -->
				</div>
				<!-- END CHECKOUT PAGE -->
			</div>
			<!-- END CONTENT -->
		</div>
		<!-- END SIDEBAR & CONTENT -->
	</div>
</div>


<%@ include file="../footer.jsp"%>
