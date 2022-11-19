<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ include file="../header.jsp" %>

			<div class="col-md-10">
				<h3 style="text-align:center">상품등록</h3>
				<form class="form-horizontal"  name="frm" method="post" enctype="multipart/form-data">
				  <div class="form-group">
				    <label for="kind" class="col-sm-2 control-label">상품분류</label>
				    <div class="col-sm-10">
				      <select class="form-control" id="kind" name="kind">
				      	<c:forEach items="${kindList}" var="kind" varStatus="status">
				      		<option value=${status.count}>${kind}</option>
				      	</c:forEach>
				      </select>
				    </div>
				  </div>
				  <div class="form-group">
				    <label for="name" class="col-sm-2 control-label">상품명</label>
				    <div class="col-sm-10">
				      <input type="text" class="form-control" id="name" name="name" placeholder="상품명 입력">
				    </div>
				  </div>
				  
				  <div class="form-group">
				  	<div class="form-inline">
					    <label for="price1">원가</label>
					    <input type="text" class="form-control" name="price1" id="price1" placeholder="원가입력" onKeyUp='NumberFormat(this)'>
					    <label for="price2">판매가</label>
					    <input type="text" class="form-control" name="price2"  id="price2" placeholder="판매가입력" onBlur="go_ab()" onkeyup="NumberFormat(this)">
					    <label for="price3">판매이익</label>
					    <input type="text" class="form-control" name="price3"  id="price3" onkeyup="NumberFormat(this)" readonly>
				    </div>
				  </div>
					<div class="form-group">
				    <label for="content" class="col-sm-2 control-label">상세설명</label>
				    <div class="col-sm-10">
				      <textarea class="form-control" rows="10" name="content" id="summernote"></textarea>
				    </div>
				  </div>
				  <div class="form-group">
				    <label for="image" class="col-sm-2 control-label">상품이미지</label>
				    <div class="col-sm-10">
				      <input type="file" name="image" id="image">
				    </div>
				  </div>
				  <div class="form-group">
				    <div class="col-sm-offset-2 col-sm-10">
				      <button type="button" class="btn btn-default" onclick="go_save()">상품등록</button>
				      <button type="button" class="btn btn-default" onclick="go_move()">취소</button>
				    </div>
				  </div>
				</form>
			</div>
		</div>
	</div>
</body>
</html>