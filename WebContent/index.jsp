<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file ="header.jsp" %>

	<!-- BEGIN SLIDER -->
	<div class="page-slider margin-bottom-35">
		<div id="carousel-example-generic"
			class="carousel slide carousel-slider">
			<!-- Indicators -->
			<ol class="carousel-indicators">
				<li data-target="#carousel-example-generic" data-slide-to="0"
					class="active"></li>
				<li data-target="#carousel-example-generic" data-slide-to="1"></li>
				<li data-target="#carousel-example-generic" data-slide-to="2"></li>
				<li data-target="#carousel-example-generic" data-slide-to="3"></li>
			</ol>

			<!-- Wrapper for slides -->
			<div class="carousel-inner" role="listbox">
				<!-- First slide -->
				<div class="item carousel-item-four active">
					<div class="container">
						<div class="carousel-position-four text-center">
							<h2
								class="margin-bottom-20 animate-delay carousel-title-v3 border-bottom-title text-uppercase"
								data-animation="animated fadeInDown">
								<span style="background-color: wheat;">WELLCOME</span> <br /> <span class="color-red-v2" style="background-color: wheat;">SUPER SHOP Figure
									</span><br /> 
							</h2>
							<p class="carousel-subtitle-v2"
								data-animation="animated fadeInUp"  >
								<span style="background-color: black;">Template Designed by KeenThemes<br> </span>
								<span style="background-color: black;">Web page function Created by justdoIT </span>
							</p>
						</div>
					</div>
				</div>

				<!-- Second slide -->
				<div class="item carousel-item-five">
					<div class="container">
						<div class="carousel-position-four text-center">
							<h2 class="animate-delay carousel-title-v4"
								data-animation="animated fadeInDown">Unlimted</h2>
							<p class="carousel-subtitle-v2"
								data-animation="animated fadeInDown">Layout Options</p>
							<p class="carousel-subtitle-v3 margin-bottom-30"
								data-animation="animated fadeInUp">Fully Responsive</p>
							<a class="carousel-btn" href="#"
								data-animation="animated fadeInUp">See More Details</a>
						</div>
						<img
							class="carousel-position-five animate-delay hidden-sm hidden-xs"
							src="assets/pages/img/shop-slider/slide2/price.png" alt="Price"
							data-animation="animated zoomIn">
					</div>
				</div>

				<!-- Third slide -->
				<div class="item carousel-item-six">
					<div class="container">
						<div class="carousel-position-four text-center">
							<span class="carousel-subtitle-v3 margin-bottom-15"
								data-animation="animated fadeInDown"> Full Admin &amp;
								Frontend </span>
							<p class="carousel-subtitle-v4"
								data-animation="animated fadeInDown">eCommerce UI</p>
							<p class="carousel-subtitle-v3"
								data-animation="animated fadeInDown">Is Ready For Your
								Project</p>
						</div>
					</div>
				</div>

				<!-- Fourth slide -->
				<div class="item carousel-item-seven">
					<div class="center-block">
						<div class="center-block-wrap">
							<div class="center-block-body">
								<h2 class="carousel-title-v1 margin-bottom-20"
									data-animation="animated fadeInDown">
									The most <br /> wanted bijouterie
								</h2>
								<a class="carousel-btn" href="#"
									data-animation="animated fadeInUp">But It Now!</a>
							</div>
						</div>
					</div>
				</div>
			</div>

			<!-- Controls -->
			<a class="left carousel-control carousel-control-shop"
				href="#carousel-example-generic" role="button" data-slide="prev">
				<i class="fa fa-angle-left" aria-hidden="true"></i>
			</a> <a class="right carousel-control carousel-control-shop"
				href="#carousel-example-generic" role="button" data-slide="next">
				<i class="fa fa-angle-right" aria-hidden="true"></i>
			</a>
		</div>
	</div>
	<!-- END SLIDER -->

	<div class="main">
		<div class="container">
			<!-- BEGIN SALE PRODUCT & NEW ARRIVALS -->
			<div class="row margin-bottom-40">
				<!-- BEGIN SALE PRODUCT -->
				<div class="col-md-12 sale-product">
					<h2>새 상품</h2>
					<div class="owl-carousel owl-carousel5">
						<c:forEach items="${newList }" var="list">
							<div class="product-item">
								<div class="pi-img-wrapper">
									<img src="${pageContext.request.contextPath}/product_images/${list.image} "
										class="img-responsive" alt="Berry Lace Dress">
									<div>
										<a href="${pageContext.request.contextPath}/product_images/${list.image}" class="btn btn-default fancybox-button">확대</a> 
										<a href="productdetail.do?pseq=${list.pseq}" class="btn btn-default fancybox-fast-view">상세보기</a>
									</div>
								</div>
								<h3>
									<a href="shop-item.jsp">${list.name}</a>
								</h3>
								<div class="pi-price">${list.price2}<span>¥</span></div>
								<a href="productdetail.do?pseq=${list.pseq}" class="btn btn-default add2cart">Add
									to cart</a>
								<div class="sticker sticker-new"></div>
							</div>
						</c:forEach><!-- c태그  -->
						
						
						
					</div>
				</div>
				<!-- END SALE PRODUCT -->
			</div>
			<!-- END SALE PRODUCT & NEW ARRIVALS -->

			<!-- BEGIN SIDEBAR & CONTENT -->
			<div class="row margin-bottom-40 ">
				<!-- BEGIN SIDEBAR -->
				<div class="sidebar col-md-3 col-sm-4">
					<ul class="list-group margin-bottom-25 sidebar-menu">
						<li class="list-group-item clearfix"><a
							href="productlist.do?kind=1"><i class="fa fa-angle-right"></i>
								건담</a></li>
						<li class="list-group-item clearfix dropdown"><a
							href="productlist.do?kind=2"> <i class="fa fa-angle-right"></i>
								피규어

						</a>
							<!-- <ul class="dropdown-menu">
								<li class="list-group-item dropdown clearfix"><a
									href="shop-product-list.html"><i class="fa fa-angle-right"></i>
										프라모델 </a>
									<ul class="dropdown-menu">
										<li class="list-group-item dropdown clearfix"><a
											href="shop-product-list.html"><i
												class="fa fa-angle-right"></i> Classic </a>
											<ul class="dropdown-menu">
												<li><a href="shop-product-list.html"><i
														class="fa fa-angle-right"></i> Classic 1</a></li>
												<li><a href="shop-product-list.html"><i
														class="fa fa-angle-right"></i> Classic 2</a></li>
											</ul></li>
										<li class="list-group-item dropdown clearfix"><a
											href="shop-product-list.html"><i
												class="fa fa-angle-right"></i> Sport </a>
											<ul class="dropdown-menu">
												<li><a href="shop-product-list.html"><i
														class="fa fa-angle-right"></i> Sport 1</a></li>
												<li><a href="shop-product-list.html"><i
														class="fa fa-angle-right"></i> Sport 2</a></li>
											</ul></li>
									</ul></li>
								<li><a href="shop-product-list.html"><i
										class="fa fa-angle-right"></i> Trainers</a></li>
								<li><a href="shop-product-list.html"><i
										class="fa fa-angle-right"></i> Jeans</a></li>
								<li><a href="shop-product-list.html"><i
										class="fa fa-angle-right"></i> Chinos</a></li>
								<li><a href="shop-product-list.html"><i
										class="fa fa-angle-right"></i> T-Shirts</a></li>
							</ul> --></li>
						<li class="list-group-item clearfix"><a
							href="productlist.do?kind=3"><i class="fa fa-angle-right"></i>
								프라모델</a></li>

						<li class="list-group-item clearfix"><a
							href="productlist.do?kind=4"><i class="fa fa-angle-right"></i>
								과학교재</a></li>

					</ul>
				</div>
				<!-- END SIDEBAR -->
				<!-- BEGIN CONTENT -->
				<div class="col-md-9 col-sm-8">
					<h2>할인 상품</h2>
					<div class="owl-carousel owl-carousel3">
						<div>
							<div class="product-item">
								<div class="pi-img-wrapper">
									<img src="assets/pages/img/products/k1.jpg"
										class="img-responsive" alt="Berry Lace Dress">
									<div>
										<a href="assets/pages/img/products/k1.jpg"
											class="btn btn-default fancybox-button">Zoom</a> <a
											href="#product-pop-up"
											class="btn btn-default fancybox-fast-view">View</a>
									</div>
								</div>
								<h3>
									<a href="shop-item.html">あええい</a>
								</h3>
								<div class="pi-price">2900¥</div>
								<a href="javascript:;" class="btn btn-default add2cart">Add
									to cart</a>
								<div class="sticker sticker-sale"></div>
								
							</div>
						</div>
						<div>
							<div class="product-item">
								<div class="pi-img-wrapper">
									<img src="assets/pages/img/products/k2.jpg"
										class="img-responsive" alt="Berry Lace Dress">
									<div>
										<a href="assets/pages/img/products/k2.jpg"
											class="btn btn-default fancybox-button">Zoom</a> <a
											href="#product-pop-up"
											class="btn btn-default fancybox-fast-view">View</a>
									</div>
								</div>
								<h3>
									<a href="shop-item.html">あかくぃつ</a>
								</h3>
								<div class="pi-price">3000¥</div>
								<a href="javascript:;" class="btn btn-default add2cart">Add
									to cart</a>
									<div class="sticker sticker-sale"></div>
							</div>
						</div>
						<div>
							<div class="product-item">
								<div class="pi-img-wrapper">
									<img src="assets/pages/img/products/k3.jpg"
										class="img-responsive" alt="Berry Lace Dress">
									<div>
										<a href="assets/pages/img/products/k3.jpg"
											class="btn btn-default fancybox-button">Zoom</a> <a
											href="#product-pop-up"
											class="btn btn-default fancybox-fast-view">View</a>
									</div>
								</div>
								<h3>
									<a href="shop-item.html">クィーンバタフライ</a>
								</h3>
								<div class="pi-price">1200¥</div>
								<a href="javascript:;" class="btn btn-default add2cart">Add
									to cart</a>
									<div class="sticker sticker-sale"></div>
							</div>
						</div>
						<div>
							<div class="product-item">
								<div class="pi-img-wrapper">
									<img src="assets/pages/img/products/k4.jpg"
										class="img-responsive" alt="Berry Lace Dress">
									<div>
										<a href="assets/pages/img/products/k4.jpg"
											class="btn btn-default fancybox-button">Zoom</a> <a
											href="#product-pop-up"
											class="btn btn-default fancybox-fast-view">View</a>
									</div>
								</div>
								<h3>
									<a href="shop-item.html">ビックカメラ</a>
								</h3>
								<div class="pi-price">8760¥</div>
								<a href="javascript:;" class="btn btn-default add2cart">Add
									to cart</a>
								<div class="sticker sticker-sale"></div>
							</div>
						</div>
						<div>
							<div class="product-item">
								<div class="pi-img-wrapper">
									<img src="assets/pages/img/products/k1.jpg"
										class="img-responsive" alt="Berry Lace Dress">
									<div>
										<a href="assets/pages/img/products/k1.jpg"
											class="btn btn-default fancybox-button">Zoom</a> <a
											href="#product-pop-up"
											class="btn btn-default fancybox-fast-view">View</a>
									</div>
								</div>
								<h3>
									<a href="shop-item.html">Berry Lace Dress5</a>
								</h3>
								<div class="pi-price">2460¥</div>
								<a href="javascript:;" class="btn btn-default add2cart">Add
									to cart</a>
									<div class="sticker sticker-sale"></div>
							</div>
						</div>
						<div>
							<div class="product-item">
								<div class="pi-img-wrapper">
									<img src="assets/pages/img/products/k2.jpg"
										class="img-responsive" alt="Berry Lace Dress">
									<div>
										<a href="assets/pages/img/products/k2.jpg"
											class="btn btn-default fancybox-button">Zoom</a> <a
											href="#product-pop-up"
											class="btn btn-default fancybox-fast-view">View</a>
									</div>
								</div>
								<h3>
									<a href="shop-item.html">Berry Lace Dress6</a>
								</h3>
								<div class="pi-price">7890¥</div>
								<a href="javascript:;" class="btn btn-default add2cart">Add
									to cart</a>
									<div class="sticker sticker-sale"></div>
							</div>
						</div>
					</div>
				</div>
				<!-- END CONTENT -->
			</div>
			<!-- END SIDEBAR & CONTENT -->

			<!-- BEGIN TWO PRODUCTS & PROMO -->
			<div class="row margin-bottom-35 ">
				<!-- BEGIN TWO PRODUCTS -->
				<div class="col-md-6 two-items-bottom-items">
					<h2></h2>
					<div class="owl-carousel owl-carousel2">
						<div>
							<div class="product-item">
								<div class="pi-img-wrapper">
									<img src="assets/pages/img/products/k4.jpg"
										class="img-responsive" alt="Berry Lace Dress">
									<div>
										<a href="assets/pages/img/products/k4.jpg"
											class="btn btn-default fancybox-button">Zoom</a> <a
											href="#product-pop-up"
											class="btn btn-default fancybox-fast-view">View</a>
									</div>
								</div>
								<h3>
									<a href="shop-item.html">Berry Lace Dress</a>
								</h3>
								<div class="pi-price">$29.00</div>
								<a href="javascript:;" class="btn btn-default add2cart">Add
									to cart</a>
									<div class="sticker sticker-sale"></div>
									<div class="sticker sticker-new"></div>
							</div>
						</div>
						<div>
							<div class="product-item">
								<div class="pi-img-wrapper">
									<img src="assets/pages/img/products/k5.jpg"
										class="img-responsive" alt="Berry Lace Dress">
									<div>
										<a href="assets/pages/img/products/k5.jpg"
											class="btn btn-default fancybox-button">Zoom</a> <a
											href="#product-pop-up"
											class="btn btn-default fancybox-fast-view">View</a>
									</div>
								</div>
								<h3>
									<a href="shop-item.html">クィーンバタフライ</a>
								</h3>
								<div class="pi-price">7800¥</div>
								<a href="javascript:;" class="btn btn-default add2cart">Add
									to cart</a>
									<div class="sticker sticker-sale"></div>
									<div class="sticker sticker-new"></div>
							</div>
						</div>
						<div>
							<div class="product-item">
								<div class="pi-img-wrapper">
									<img src="assets/pages/img/products/k1.jpg"
										class="img-responsive" alt="Berry Lace Dress">
									<div>
										<a href="assets/pages/img/products/k1.jpg"
											class="btn btn-default fancybox-button">Zoom</a> <a
											href="#product-pop-up"
											class="btn btn-default fancybox-fast-view">View</a>
									</div>
								</div>
								<h3>
									<a href="shop-item.html">インターネット</a>
								</h3>
								<div class="pi-price">5180¥</div>
								<a href="javascript:;" class="btn btn-default add2cart">Add
									to cart</a>
									<div class="sticker sticker-sale"></div>
									<div class="sticker sticker-new"></div>
							</div>
						</div>
						<div>
							<div class="product-item">
								<div class="pi-img-wrapper">
									<img src="assets/pages/img/products/k1.jpg"
										class="img-responsive" alt="Berry Lace Dress">
									<div>
										<a href="assets/pages/img/products/k1.jpg"
											class="btn btn-default fancybox-button">Zoom</a> <a
											href="#product-pop-up"
											class="btn btn-default fancybox-fast-view">View</a>
									</div>
								</div>
								<h3>
									<a href="shop-item.html">Berry Lace Dress</a>
								</h3>
								<div class="pi-price">$29.00</div>
								<a href="javascript:;" class="btn btn-default add2cart">Add
									to cart</a>
									<div class="sticker sticker-sale"></div>
									<div class="sticker sticker-new"></div>
							</div>
						</div>
						<div>
							<div class="product-item">
								<div class="pi-img-wrapper">
									<img src="assets/pages/img/products/k4.jpg"
										class="img-responsive" alt="Berry Lace Dress">
									<div>
										<a href="assets/pages/img/products/k4.jpg"
											class="btn btn-default fancybox-button">Zoom</a> <a
											href="#product-pop-up"
											class="btn btn-default fancybox-fast-view">View</a>
									</div>
								</div>
								<h3>
									<a href="shop-item.html">Berry Lace Dress</a>
								</h3>
								<div class="pi-price">$29.00</div>
								<a href="javascript:;" class="btn btn-default add2cart">Add
									to cart</a>
									<div class="sticker sticker-sale"></div>
									<div class="sticker sticker-new"></div>
							</div>
						</div>
						<div>
							<div class="product-item">
								<div class="pi-img-wrapper">
									<img src="assets/pages/img/products/k3.jpg"
										class="img-responsive" alt="Berry Lace Dress">
									<div>
										<a href="assets/pages/img/products/k3.jpg"
											class="btn btn-default fancybox-button">Zoom</a> <a
											href="#product-pop-up"
											class="btn btn-default fancybox-fast-view">View</a>
									</div>
								</div>
								<h3>
									<a href="shop-item.html">Berry Lace Dress</a>
								</h3>
								<div class="pi-price">$29.00</div>
								<a href="javascript:;" class="btn btn-default add2cart">Add
									to cart</a>
									<div class="sticker sticker-sale"></div>
									<div class="sticker sticker-new"></div>
							</div>
						</div>
					</div>
				</div>
				<!-- END TWO PRODUCTS -->
				<!-- BEGIN PROMO -->
				<div class="col-md-6 shop-index-carousel">
					<div class="content-slider">
						<div id="myCarousel" class="carousel slide" data-ride="carousel">
							<!-- Indicators -->
							<ol class="carousel-indicators">
								<li data-target="#myCarousel" data-slide-to="0" class="active"></li>
								<li data-target="#myCarousel" data-slide-to="1"></li>
								<li data-target="#myCarousel" data-slide-to="2"></li>
							</ol>
							<div class="carousel-inner">
								<div class="item active">
									<img src="assets/pages/img/index-sliders/slide1.jpg"
										class="img-responsive" alt="Berry Lace Dress">
								</div>
								<div class="item">
									<img src="assets/pages/img/index-sliders/slide2.jpg"
										class="img-responsive" alt="Berry Lace Dress">
								</div>
								<div class="item">
									<img src="assets/pages/img/index-sliders/slide3.jpg"
										class="img-responsive" alt="Berry Lace Dress">
								</div>
							</div>
						</div>
					</div>
				</div>
				<!-- END PROMO -->
			</div>
			<!-- END TWO PRODUCTS & PROMO -->
		</div>
	</div>

	<!-- BEGIN BRANDS -->
	<div class="brands">
		<div class="container">
			<div class="owl-carousel owl-carousel6-brands">
				<a href="shop-product-list.html"><img
					src="assets/pages/img/brands/canon.jpg" alt="canon" title="canon"></a>
				<a href="shop-product-list.html"><img
					src="assets/pages/img/brands/esprit.jpg" alt="esprit"
					title="esprit"></a> <a href="shop-product-list.html"><img
					src="assets/pages/img/brands/gap.jpg" alt="gap" title="gap"></a>
				<a href="shop-product-list.html"><img
					src="assets/pages/img/brands/next.jpg" alt="next" title="next"></a>
				<a href="shop-product-list.html"><img
					src="assets/pages/img/brands/puma.jpg" alt="puma" title="puma"></a>
				<a href="shop-product-list.html"><img
					src="assets/pages/img/brands/zara.jpg" alt="zara" title="zara"></a>
				<a href="shop-product-list.html"><img
					src="assets/pages/img/brands/canon.jpg" alt="canon" title="canon"></a>
				<a href="shop-product-list.html"><img
					src="assets/pages/img/brands/esprit.jpg" alt="esprit"
					title="esprit"></a> <a href="shop-product-list.html"><img
					src="assets/pages/img/brands/gap.jpg" alt="gap" title="gap"></a>
				<a href="shop-product-list.html"><img
					src="assets/pages/img/brands/next.jpg" alt="next" title="next"></a>
				<a href="shop-product-list.html"><img
					src="assets/pages/img/brands/puma.jpg" alt="puma" title="puma"></a>
				<a href="shop-product-list.html"><img
					src="assets/pages/img/brands/zara.jpg" alt="zara" title="zara"></a>
			</div>
		</div>
	</div>
	<!-- END BRANDS -->

	

<%@ include file ="footer.jsp" %>
</body>
<!-- END BODY -->
</html>



