<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ include file="header.jsp" %>

	<div class="col-md-10">
		<h3 style="text-align:center">상품목록</h3>
		<form class="form-inline" name="frm" method="post">
		<div class="productlist">
			<div class="col-md-12" style="margin-bottom:30px;">
				
				  <div class="form-group">
				    <label for="pname">상품명</label>
				    <input type="text" name="name" class="form-control" id="pname" placeholder="검생상품 입력">
				  </div>
				  <button type="submit" class="btn btn-default">검색</button>
				
			</div>
			<div class="col-md-12">
				<div class="table-responsive">
				  <table class="table">
				    <tr>
				    	<th>번호</th>
				    	<th>상품명</th>
				    	<th>이미지</th>
				    	<th>원가</th>
				    	<th>판매가</th>
				    	<th>등록일</th>
				    	<th>판매가능 여부</th>
				    </tr>
				    <c:choose>
				    <c:when test="${list eq null}">
				    	<tr>
				    		<td>등록된 상품이 없습니다</td>
				    	</tr>
				    </c:when>
				    <c:otherwise>
					    <c:forEach items="${list}" var="list">
						    <tr>
						    	<td>${list.pseq }</td>
						    	<td>${list.name}</td>
						    	<td><img src="${pageContext.request.contextPath}/product_images/${list.image}" style="width:30px;"></td>
						    	<td><fmt:formatNumber value="${list.price1}"/></td>
						    	<td><fmt:formatNumber value="${list.price2}"/></td>
						    	<td>${list.indate}</td>
						    	<td>
						    		<c:choose>
						    			<c:when test="${list.useyn == 'y'}">가능</c:when>
						    			<c:otherwise>불가능</c:otherwise>
						    		</c:choose>
						    	</td>
						    </tr>
					    </c:forEach>
					  </c:otherwise>
				    </c:choose>
				  </table>
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
					<button type="button" class="btn btn-danger pull-right btn-writer" onclick="go_write()">글쓰기</button>
				  </div>
				</div>
			</div>
		</div>
		</form>
	</div>
	</div>
</div>
</body>
</html>