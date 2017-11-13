<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width-device-width", initial-scale="1">
<link rel="stylesheet" href="resources/css/bootstrap.min.css">
<link rel="stylesheet" href="resources/css/jumbotron.css">

<title>R-Cube 기술창업학회</title>
</head>
<body>
		<%
				String userID = null;
				if(session.getAttribute("id") != null){
					userID = (String) session.getAttribute("id");
				}
		%>
		<nav class="navbar navbar-inverse navbar-fixed-top">
		<div class="container">
				<div class="navbar-header">
						<button type="button" class="navbar-toggle collapsed"
						data-toggle="collapse" data-target="#bs-example-navbar-collapse-1"
						aria-expanded="false">
								<span class="icon-bar"></span>
								<span class="icon-bar"></span>
								<span class="icon-bar"></span>
						</button>
						<a class="navbar-brand" href="home">R-Cube</a>
				</div>
				<div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
						<ul class="nav navbar-nav">
								<li><a href="home">HOME</a></li>
								<li><a href="intro">학회소개</a></li>
								<li><a href="list?pageNumber=1">자유게시판</a></li>
						</ul>
						<ul class="nav navbar-nav navbar-right">
								<li class="dropdown">
										<a href="#" class="dropdown-toggle"
										data-toggle="dropdown" role="button" aria-haspopup="true"
										aria-expanded="false">접속하기<span class="caret"></span></a>
										<ul class="dropdown-menu">
												<li><a href="login">로그인</a></li>
												<li><a href="join">회원가입</a></li>
										</ul>
								</li>
						</ul>

				</div>
				</div>
		</nav>
		<div class="container">
				<div class="col-lg-4"></div>
				<div class="col-lg-4">
						<div class="jumbotron2" style="padding-top: 20dp;">
								<form method="post" action="loginAction">
										<h3 style="text-alien: center;">로그인</h3>
										<div class="form-group">
												<input type="text" class="form-control" placeholder="아이디" name="userEmail" maxlength="20">
										</div>
										<div class="form-group">
												<input type="password" class="form-control" placeholder="비밀번호" name="userPassword" maxlength="20">
										</div>
										<input type="submit" class="btn btn-primary form-control" value="로그인">
								</form>
				</div>
		</div>
    		<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
		<script src="resources/js/bootstrap.min.js"></script>

</body>
</html>
