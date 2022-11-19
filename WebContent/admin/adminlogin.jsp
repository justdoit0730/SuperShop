<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
Cookie[] cookie = request.getCookies();
//찾은 쿠키를 저장할 배열을 생성 request를 통해 쿠키를 받아 온다
String id="";
if(cookie != null) {
	for(int i=0; i<cookie.length;i++) {
		if(cookie[i].getName().trim().equals("id")) {
			System.out.println(cookie[i].getValue());
			id=cookie[i].getValue();
		}
	}
}
%>
<!DOCTYPE html>
<html lang="ko">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>HANULSO</title>

    <script src="js/jquery-3.3.1.min.js"></script>
    <script src="js/bootstrap.min.js"></script>

    <link href="css/bootstrap.min.css" rel="stylesheet">
    <link href="css/font-awesome.min.css" rel="stylesheet">
	<link href="css/common.css" rel="stylesheet">

	
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
  </head>
  <body>
  	<div class="container">
  		<div class="col-md-6 col-md-offset-3" style="margin-top:10%;">
  		<h1 style="margin-bottom:30px;">ADMIN LOGIN</h1>
  			<div class="adminlogin">
  				<form class="form-horizontal" name="admin" method="post" action="adminloginAction.do">
				  <div class="form-group">
				    <label for="id" class="col-sm-2 control-label">아이디</label>
				    <div class="col-sm-10">
				      <input type="text" name="id" class="form-control" id="id"  value="<%=id%>" placeholder="관리자 아이디 입력">
				    </div>
				  </div>
				  <div class="form-group">
				    <label for="pwd" class="col-sm-2 control-label">Password</label>
				    <div class="col-sm-10">
				      <input type="password" name="pwd" class="form-control" id="pwd" placeholder="관리자패스워드 입력">
				    </div>
				  </div>
				  <div class="form-group">
				    <div class="col-sm-offset-2 col-sm-10">
				      <div class="checkbox">
				        <label>
				          <input type="checkbox" name="id_rem" value="<%if(id.length()>1) out.println("checked"); %>"> Remember me
				        </label>
				      </div>
				    </div>
				  </div>
				  <div class="form-group">
				    <div class="col-sm-offset-2 col-sm-10">
				      <button type="submit" class="btn btn-default">Sign in</button>
				    </div>
				  </div>
				</form>
  			</div>
  			</div>
  	</div>
  </body>
  </html>