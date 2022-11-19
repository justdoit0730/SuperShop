<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<%@ include file="header.jsp"%>


<!-- 왼쪽 배너 -->
<div id="layoutSidenav_content">
	<main>
	<div class="container-fluid px-4">
		<h1 class="mt-4">Admin Page</h1>
		<ol class="breadcrumb mb-4">
			<li class="breadcrumb-item active">매출현황</li>
		</ol>
		<div class="row">
			<div class="col-xl-3 col-md-6">
				<div class="card bg-primary text-white mb-4">
					<div class="card-body">Primary Card</div>
					<div
						class="card-footer d-flex align-items-center justify-content-between">
						<a class="small text-white stretched-link" href="#">View
							Details</a>
						<div class="small text-white">
							<i class="fas fa-angle-right"></i>
						</div>
					</div>
				</div>
			</div>
			<div class="col-xl-3 col-md-6">
				<div class="card bg-warning text-white mb-4">
					<div class="card-body">Warning Card</div>
					<div
						class="card-footer d-flex align-items-center justify-content-between">
						<a class="small text-white stretched-link" href="#">View
							Details</a>
						<div class="small text-white">
							<i class="fas fa-angle-right"></i>
						</div>
					</div>
				</div>
			</div>
			<div class="col-xl-3 col-md-6">
				<div class="card bg-success text-white mb-4">
					<div class="card-body">Success Card</div>
					<div
						class="card-footer d-flex align-items-center justify-content-between">
						<a class="small text-white stretched-link" href="#">View
							Details</a>
						<div class="small text-white">
							<i class="fas fa-angle-right"></i>
						</div>
					</div>
				</div>
			</div>
			<div class="col-xl-3 col-md-6">
				<div class="card bg-danger text-white mb-4">
					<div class="card-body">Danger Card</div>
					<div
						class="card-footer d-flex align-items-center justify-content-between">
						<a class="small text-white stretched-link" href="#">View
							Details</a>
						<div class="small text-white">
							<i class="fas fa-angle-right"></i>
						</div>
					</div>
				</div>
			</div>
		</div>
		<div class="row">
			<div class="col-xl-6">
				<div class="card mb-4">
					<div class="card-header">
						<i class="fas fa-chart-area me-1"></i> Area Chart Example
					</div>
					<div class="card-body">
						<canvas id="myAreaChart" width="100%" height="40"></canvas>
					</div>
				</div>
			</div>
			<div class="col-xl-6">
				<div class="card mb-4">
					<div class="card-header">
						<i class="fas fa-chart-bar me-1"></i> Bar Chart Example
					</div>
					<div class="card-body">
						<canvas id="myBarChart" width="100%" height="40"></canvas>
					</div>
				</div>
			</div>
		</div>
		<div class="card mb-4">
			<div class="card-header">
				<i class="fas fa-shopping-cart me-1"></i> 물품 현황
			</div>
			<div class="card-body">
				<table id="datatablesSimple">
					<thead>
						<tr >
							<th style="text-align: center;" >번호</th>
							<th style="text-align: center;">이미지</th>
							<th style="text-align: center;">상품명</th>
							<th style="text-align: center;">원가</th>
							<th style="text-align: center;">판매가</th>
							<th style="text-align: center;">등록일</th>
							<th style="text-align: center;">재고 유무</th>
						</tr>
					</thead>
					<tfoot>
						<tr>
							<th style="text-align: center;">번호</th>
							<th style="text-align: center;">이미지</th>
							<th style="text-align: center;">상품명</th>
							<th style="text-align: center;">원가</th>
							<th style="text-align: center;">판매가</th>
							<th style="text-align: center;">등록일</th>
							<th style="text-align: center;">재고 유무</th>
						</tr>
					</tfoot>
					<tbody>
						<c:choose>
							<c:when test="${list eq null}">
								<tr>
									<td>등록된 상품이 없습니다</td>
								</tr>
							</c:when>
							<c:otherwise>
								<c:forEach items="${list}" var="list">
									<tr>
										<td style="text-align: center;">${list.pseq }</td>
										<td style="text-align: center;"><img
											src="${pageContext.request.contextPath}/product_images/${list.image}"
											style="width: 30px;"></td>
										<td style ="hover1">${list.name}</td>
										 
										<td style="text-align: center;"><fmt:formatNumber value="${list.price1}" /></td>
										<td style="text-align: center;"><fmt:formatNumber value="${list.price2}" /></td>
										<td style="text-align: center;">${list.indate}</td>
										<td><c:choose>
												<c:when test="${list.useyn == 'y'}">사용</c:when>
												<c:otherwise>미사용</c:otherwise>
											</c:choose></td>
									</tr>
								</c:forEach>
							</c:otherwise>
						</c:choose>
						<!-- 
						<tr>
							<td>Donna Snider</td>
							<td>Customer Support</td>
							<td>New York</td>
							<td>27</td>
							<td>2011/01/25</td>
							<td>$112,000</td>
						</tr> -->
					</tbody>
				</table>
			</div>
		</div>
	</div>
	
	</main>

	<!-- 푸터 -->
<%@ include file="footer.jsp"%>
	</body>
	</html>
		