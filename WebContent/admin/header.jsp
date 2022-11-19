<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>    

<c:if test="${adminId eq null}">
		<script>
				alert("아이디/패스워드 확인 하세요");
				location.href="adminlogin.do";
		</script>
</c:if>

<!DOCTYPE html>
<html lang="ko">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>SUPER SHOP ADMIN PAGE</title>

    <script src="js/jquery-3.3.1.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <script src="js/summernote.min.js"></script>
    <script src="admin/product/product.js"></script>
    <script src="js/my.js"></script>

    <link href="css/bootstrap.min.css" rel="stylesheet">
    <link href="css/summernote.min.css" rel="stylesheet">
    <link href="css/font-awesome.min.css" rel="stylesheet">
	<link href="css/common.css" rel="stylesheet">
	<link href="admin/css/admin.css" rel="stylesheet">
	
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
  </head>
  <body>

	<div class="container">
		<h2 style="margin-bottom:30px;">ADMIN MANAGEMENT</h2>
		<div class="row">
			<div class="col-md-2">
				<h3>NAVI</h3>
				<ul>
					<li><a href="admin.do">상품관리</a></li>
					<li><a href="adminorder.do">주문관리</a></li>
					<li><a href="member.do">회원관리</a></li>
					<li><a href="qna.do">질문답변</a></li>
					<li><a href="adminlogout.do">로그아웃</a></li>
				</ul>
			</div>