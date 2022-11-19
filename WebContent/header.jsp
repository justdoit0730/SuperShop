<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%-- <%@ taglib uri="http://www.springframework.org/tags/form" prefix="f" %> --%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//ko" "http://www.w3.org/TR/html4/loose.dtd">
<!--
Template: Metronic Frontend Freebie - Responsive HTML Template Based On Twitter Bootstrap 3.3.4
Version: 1.0.0
Author: KeenThemes
Website: http://www.keenthemes.com/
Contact: support@keenthemes.com
Follow: www.twitter.com/keenthemes
Like: www.facebook.com/keenthemes
Purchase Premium Metronic Admin Theme: http://themeforest.net/item/metronic-responsive-admin-dashboard-template/4021469?ref=keenthemes
-->
<!--[if IE 8]> <html lang="en" class="ie8 no-js"> <![endif]-->
<!--[if IE 9]> <html lang="en" class="ie9 no-js"> <![endif]-->
<!--[if !IE]><!-->
<html lang="ko">
<!--<![endif]-->

<!-- Head BEGIN -->
<head>
<meta charset="utf-8">




<!-- 내가 추가한 것 -->

<title>SUPER SHOP</title>

<meta content="width=device-width, initial-scale=1" name="viewport">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">

<meta content="Metronic Shop UI description" name="description">
<meta content="Metronic Shop UI keywords" name="keywords">
<meta content="keenthemes" name="author">

<meta property="og:site_name" content="-CUSTOMER VALUE-">
<meta property="og:title" content="-CUSTOMER VALUE-">
<meta property="og:description" content="-CUSTOMER VALUE-">
<meta property="og:type" content="website">
<meta property="og:image" content="-CUSTOMER VALUE-">
<!-- link to image for socio -->
<meta property="og:url" content="-CUSTOMER VALUE-">

<link rel="shortcut icon" href="favicon.ico">

<!-- Fonts START -->
<link
	href="http://fonts.googleapis.com/css?family=Open+Sans:300,400,600,700|PT+Sans+Narrow|Source+Sans+Pro:200,300,400,600,700,900&amp;subset=all"
	rel="stylesheet" type="text/css">
<link
	href="http://fonts.googleapis.com/css?family=Source+Sans+Pro:200,300,400,600,700,900&amp;subset=all"
	rel="stylesheet" type="text/css"><!--- fonts for slider on the index page -->
<!-- Fonts END -->

<!-- Global styles START -->
<link href="assets/plugins/font-awesome/css/font-awesome.min.css"
	rel="stylesheet">
<link href="assets/plugins/bootstrap/css/bootstrap.min.css"
	rel="stylesheet">
<!-- Global styles END -->

<!-- Page level plugin styles START -->
<link href="assets/pages/css/animate.css" rel="stylesheet">
<link href="assets/plugins/fancybox/source/jquery.fancybox.css"
	rel="stylesheet">
<link href="assets/plugins/owl.carousel/assets/owl.carousel.css"
	rel="stylesheet">
<!-- Page level plugin styles END -->

<!-- Theme styles START -->
<link href="assets/pages/css/components.css" rel="stylesheet">
<link href="assets/pages/css/slider.css" rel="stylesheet">
<link href="assets/pages/css/style-shop.css" rel="stylesheet"
	type="text/css">
<link href="assets/corporate/css/style.css" rel="stylesheet">
<link href="assets/corporate/css/style-responsive.css" rel="stylesheet">
<link href="assets/corporate/css/themes/red.css" rel="stylesheet"
	id="style-color">
<link href="assets/corporate/css/custom.css" rel="stylesheet">

<!-- 내가 추가한 script -->
<script src="js/jquery-3.3.1.min.js"></script>
<script src="js/bootstrap.min.js"></script>
<script src="js/summernote.min.js"></script>
<script
	src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<script src="member/member.js"></script>
<script src="mypage/mypage.js?ver=1"></script>

<link href="css/summernote.min.css" rel="stylesheet">
<link href="css/font-awesome.min.css" rel="stylesheet">

<!-- 내가 추가한 script -->
<!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
<!-- Theme styles END -->
<!-- 물품목록 -->
<link href="assets/plugins/fancybox/source/jquery.fancybox.css"
	rel="stylesheet">
<link href="assets/plugins/owl.carousel/assets/owl.carousel.css"
	rel="stylesheet">
<link href="assets/plugins/uniform/css/uniform.default.css"
	rel="stylesheet" type="text/css">
<link
	href="http://code.jquery.com/ui/1.10.3/themes/smoothness/jquery-ui.css"
	rel="stylesheet" type="text/css">
<!-- for slider-range -->
<link href="assets/plugins/rateit/src/rateit.css" rel="stylesheet"
	type="text/css">
<!-- 물품 목록 -->
</head>
<!-- Head END -->

<!-- Body BEGIN -->
<body class="ecommerce">
	<!-- BEGIN STYLE CUSTOMIZER -->
	<div class="color-panel hidden-sm">
		<div class="color-mode-icons icon-color"></div>
		<div class="color-mode-icons icon-color-close"></div>
		<div class="color-mode">
			<p>THEME COLOR</p>
			<ul class="inline">
				<li class="color-red current color-default" data-style="red"></li>
				<li class="color-blue" data-style="blue"></li>
				<li class="color-green" data-style="green"></li>
				<li class="color-orange" data-style="orange"></li>
				<li class="color-gray" data-style="gray"></li>
				<li class="color-turquoise" data-style="turquoise"></li>
			</ul>
		</div>
	</div>
	<!-- END BEGIN STYLE CUSTOMIZER -->

	<!-- BEGIN TOP BAR -->
	<div class="pre-header">
		<div class="container">
			<div class="row">
				<!-- BEGIN TOP BAR LEFT PART -->
				<div class="col-md-6 col-sm-6 additional-shop-info">
					<ul class="list-unstyled list-inline">
						<!-- <li><i class="fa fa-phone"></i><span>+82 </span></li> -->
						<!-- BEGIN CURRENCIES -->
						<!--   <li class="shop-currencies">
                            <a href="javascript:void(0);">€</a>
                            <a href="javascript:void(0);">£</a>
                            <a href="javascript:void(0);" class="current">$</a>
                        </li> -->
						<!-- END CURRENCIES -->
						<!-- BEGIN LANGS -->
						<!--  <li class="langs-block">
                            <a href="javascript:void(0);" class="current">English </a>
                            <div class="langs-block-others-wrapper"><div class="langs-block-others">
                              <a href="javascript:void(0);">French</a>
                              <a href="javascript:void(0);">Germany</a>
                              <a href="javascript:void(0);">Turkish</a>
                            </div></div>
                        </li> -->
						<!-- END LANGS -->
					</ul>
				</div>
				<!-- END TOP BAR LEFT PART -->
				<!-- BEGIN TOP BAR MENU -->
				<div class="col-md-6 col-sm-6 additional-nav">
					<ul class="list-unstyled list-inline pull-right">

						<c:choose>
							<c:when test="${empty loginUser}">

								<li><a href="loginform.do"><i class="fa fa-lock"></i>&nbsp;&nbsp;로그인</a></li>
								<li><a href="contract.do"><i class="fa fa-user"></i>&nbsp;&nbsp;회원가입</a></li>
							</c:when>
							<c:otherwise>
								<li><a href="logout.do"><i class="fa fa-lock"></i>&nbsp;&nbsp;로그아웃</a></li>
								<li><a href="memberModify.do"><i class="fa fa-lock"></i>&nbsp;&nbsp;정보수정</a></li>
							</c:otherwise>
						</c:choose>
						<li><a href="cartList.do"><i class="fa fa-shopping-cart"></i>&nbsp;&nbsp;장바구니</a></li>
						<li><a href="mypage.do"><i class="fa fa-shopping-cart"></i>&nbsp;&nbsp;MyPage</a></li>
					</ul>
				</div>
				<!-- END TOP BAR MENU -->
			</div>
		</div>
	</div>
	<!-- END TOP BAR -->

	<!-- BEGIN HEADER -->
	<div class="header">
		<div class="container">
			<a class="site-logo" href="main.do"><img
				src="assets/corporate/img/logos/logo-shop-red.png"
				alt="Metronic Shop UI"></a> <a href="javascript:void(0);"
				class="mobi-toggler"><i class="fa fa-bars"></i></a>

			<!-- BEGIN CART -->
			<div class="top-cart-block">
			<c:choose>
						<c:when test="${empty loginUser}">
							</c:when>
							<c:otherwise>
				
				
					<div class="top-cart-info">
						<a href="javascript:void(0);" class="top-cart-info-count">items</a>
						<a href="javascript:void(0);" class="top-cart-info-value"><fmt:formatNumber
								value="${totalPrice}" type="currency" /></a>
					</div>
					<i class="fa fa-shopping-cart"></i>

					<div class="top-cart-content-wrapper">
						<div class="top-cart-content">

							<ul class="scroller" style="height: 250px;">
								<c:forEach items="${cartList}" var="cartVO">
									<li><a href="productdetail.do?pseq=${cartVO.pseq}"> <img
											src="assets/pages/img/cart-img.jpg" alt="Rolex Classic Watch"
											width="37" height="34"></a> <strong><a
											href="shop-item.html">${cartVO.pname}</a></strong> <span
										class="cart-content-count">x ${cartVO.quantity}</span> <em>${cartVO.price2*cartVO.quantity}</em>
										<a href="javascript:void(0);" class="del-goods">&nbsp;</a></li>
								</c:forEach>
							</ul>
							<div class="text-right">
								<a href="cartList.do" class="btn btn-primary">장바구니</a>
								<!-- <a href="shop-checkout.html" class="btn btn-primary">Checkout</a> -->
							</div>

						</div>
					</div>

				
			</c:otherwise>
			</c:choose>
			</div>
			
			<!--END CART -->

			<!-- BEGIN NAVIGATION -->
			<div class="header-navigation" >
				<ul>

					<li><a href="productlist.do?kind=1">건담</a></li>
					<!-- BEGIN DROPDOWN MENU -->
					<!-- <ul class="dropdown-menu">
							<li class="dropdown-submenu"><a
								href="shop-product-list.html">Hi Tops <i
									class="fa fa-angle-right"></i></a>
								<ul class="dropdown-menu" role="menu">
									<li><a href="shop-product-list.html">Second Level Link</a></li>
									<li><a href="shop-product-list.html">Second Level Link</a></li>
									<li class="dropdown-submenu"><a class="dropdown-toggle"
										data-toggle="dropdown" data-target="#" href="javascript:;">
											Second Level Link <i class="fa fa-angle-right"></i>
									</a>
										<ul class="dropdown-menu">
											<li><a href="shop-product-list.html">Third Level
													Link</a></li>
											<li><a href="shop-product-list.html">Third Level
													Link</a></li>
											<li><a href="shop-product-list.html">Third Level
													Link</a></li>
										</ul></li>
								</ul></li>
							<li><a href="shop-product-list.html">Running Shoes</a></li>
							<li><a href="shop-product-list.html">Jackets and Coats</a></li>
						</ul> END DROPDOWN MENU</li> -->
					<li><a href="productlist.do?kind=2">피규어</a></li>
					<!-- <ul class="dropdown-menu">
							<li>
								<div class="header-navigation-content">
									<div class="row">
										<div class="col-md-4 header-navigation-col">
											<h4>Footwear</h4>
											<ul>
												<li><a href="shop-product-list.html">Astro Trainers</a></li>
												<li><a href="shop-product-list.html">Basketball
														Shoes</a></li>
												<li><a href="shop-product-list.html">Boots</a></li>
												<li><a href="shop-product-list.html">Canvas Shoes</a></li>
												<li><a href="shop-product-list.html">Football Boots</a></li>
												<li><a href="shop-product-list.html">Golf Shoes</a></li>
												<li><a href="shop-product-list.html">Hi Tops</a></li>
												<li><a href="shop-product-list.html">Indoor and
														Court Trainers</a></li>
											</ul>
										</div>
										<div class="col-md-4 header-navigation-col">
											<h4>Clothing</h4>
											<ul>
												<li><a href="shop-product-list.html">Base Layer</a></li>
												<li><a href="shop-product-list.html">Character</a></li>
												<li><a href="shop-product-list.html">Chinos</a></li>
												<li><a href="shop-product-list.html">Combats</a></li>
												<li><a href="shop-product-list.html">Cricket
														Clothing</a></li>
												<li><a href="shop-product-list.html">Fleeces</a></li>
												<li><a href="shop-product-list.html">Gilets</a></li>
												<li><a href="shop-product-list.html">Golf Tops</a></li>
											</ul>
										</div>
										<div class="col-md-4 header-navigation-col">
											<h4>Accessories</h4>
											<ul>
												<li><a href="shop-product-list.html">Belts</a></li>
												<li><a href="shop-product-list.html">Caps</a></li>
												<li><a href="shop-product-list.html">Gloves, Hats
														and Scarves</a></li>
											</ul>

											<h4>Clearance</h4>
											<ul>
												<li><a href="shop-product-list.html">Jackets</a></li>
												<li><a href="shop-product-list.html">Bottoms</a></li>
											</ul>
										</div>
										<div class="col-md-12 nav-brands">
											<ul>
												<li><a href="shop-product-list.html"><img
														title="esprit" alt="esprit"
														src="assets/pages/img/brands/esprit.jpg"></a></li>
												<li><a href="shop-product-list.html"><img
														title="gap" alt="gap"
														src="assets/pages/img/brands/gap.jpg"></a></li>
												<li><a href="shop-product-list.html"><img
														title="next" alt="next"
														src="assets/pages/img/brands/next.jpg"></a></li>
												<li><a href="shop-product-list.html"><img
														title="puma" alt="puma"
														src="assets/pages/img/brands/puma.jpg"></a></li>
												<li><a href="shop-product-list.html"><img
														title="zara" alt="zara"
														src="assets/pages/img/brands/zara.jpg"></a></li>
											</ul>
										</div>
									</div>
								</div>
							</li>
						</ul -->

					<li><a href="productlist.do?kind=3">프라모델</a></li>
					<li><a href="productlist.do?kind=4">과학교재</a></li>

					<li class="dropdown dropdown100 nav-catalogue"><a
						class="dropdown-toggle" data-toggle="dropdown" data-target="#"
						href="javascript:;"> New </a>
						<ul class="dropdown-menu">
							<li>
								<div class="header-navigation-content">
									<div class="row">
										<c:forEach items="${newList }" var="list" end="3">
											<div class="col-md-3 col-sm-4 col-xs-6">
												<div class="product-item">
													<div class="pi-img-wrapper">
														<a href="productdetail.do?pseq=${list.pseq}"> <img
															src="${pageContext.request.contextPath}/product_images/${list.image}"
															class="img-responsive"></a>
													</div>
													<h3>
														<a href="shop-item.html">${list.name}</a>
													</h3>
													<div class="pi-price">${list.price2}<span>¥</span>
													</div>
													<a href="productdetail.do?pseq=${list.pseq}" class="btn btn-default add2cart">Add
														to cart</a>
												</div>
											</div>
										</c:forEach>



									</div>
								</div>
							</li>
						</ul></li>
					<!-- <li class="dropdown active"><a class="dropdown-toggle"
						data-toggle="dropdown" data-target="#" href="javascript:;">
							Pages </a>

						<ul class="dropdown-menu">

							<li class="active"><a href="shop-index-header-fix.html">Home
									Header Fixed</a></li>

							<li><a href="shop-product-list.html">Product List</a></li>
							<li><a href="shop-search-result.html">Search Result</a></li>
							<li><a href="shop-item.html">Product Page</a></li>
							<li><a href="shop-shopping-cart-null.html">Shopping Cart
									(Null Cart)</a></li>
							<li><a href="shop-shopping-cart.html">Shopping Cart</a></li>
							<li><a href="shop-checkout.html">Checkout</a></li>
							<li><a href="shop-about.html">About</a></li>
							<li><a href="shop-contacts.html">Contacts</a></li>
							<li><a href="shop-account.html">My account</a></li>
							<li><a href="shop-wishlist.html">My Wish List</a></li>
							<li><a href="shop-goods-compare.html">Product Comparison</a></li>
							<li><a href="shop-standart-forms.html">Standart Forms</a></li>
							<li><a href="shop-faq.html">FAQ</a></li>
							<li><a href="shop-privacy-policy.html">Privacy Policy</a></li>
							<li><a href="shop-terms-conditions-page.html">Terms
									&amp; Conditions</a></li>
						</ul></li> -->


					<li><a href="adminlogin.do" target="_blank">관리자 페이지</a></li>

					<!-- BEGIN TOP SEARCH -->
					<li class="menu-search"><span class="sep"></span> <i
						class="fa fa-search search-btn"></i>
						<div class="search-box">
							<form action="#">
								<div class="input-group">
									<input type="text" placeholder="Search" class="form-control">
									<span class="input-group-btn">
										<button class="btn btn-primary" type="submit">검색</button>
									</span>
								</div>
							</form>
						</div></li>
					<!-- END TOP SEARCH -->
				</ul>
			</div>
			<!-- END NAVIGATION -->
		</div>
	</div>
	<!-- Header END -->