<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.io.PrintWriter" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width-device-width", initial-scale="1">
<link rel="stylesheet" href="resources/css/bootstrap.css">
<title>JSP 게시판 웹 사이트</title>
</head>
<body>
		<%
				String userID = null;
				if(session.getAttribute("id") != null){
					userID = (String) session.getAttribute("id");
				}		
		%>


		<nav class="navbar navbar-default">
				<div class="navbar-header">
						<button type="button" class="navbar-toggle collapsed" 
						data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" 
						aria-expanded="false">
								<span class="icon-bar"></span>
								<span class="icon-bar"></span>
								<span class="icon-bar"></span>		
						</button>
						<a class="navbar-brand" href="main.jsp">JSP 게시판 웹 사이트</a>
				</div>
				<div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
						<ul class="nav navbar-nav">
								<li><a href="home">HOME</a></li>
								<%
								if(userID != null){
									if(userID.equals("admin@admin")){
								%>
									<li><a href = "admin">관리자페이지</a>
								<%
									}
								}
								%>
								<li><a href="intro">학회소개</a></li>
								<li class="active"><a href="list?pageNumber=1">자유게시판</a></li>
						</ul>
						<%
								if(userID == null){
						%>
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
						<%
								}else{
						%>
						<ul class="nav navbar-nav navbar-right">
								<li class="dropdown">
										<a href="#" class="dropdown-toggle"
										data-toggle="dropdown" role="button" aria-haspopup="true"
										aria-expanded="false">회원관리<span class="caret"></span></a>
										<ul class="dropdown-menu">
												<li><a href="logoutAction">로그아웃</a></li>
										</ul>
								</li>
						</ul>
						<%
								}
						%>
				</div>
		</nav>
		
		<div class="container">
				<div class="row">
				<form method="post" action="updateAction">
				<table class="table table-striped" style="text-align: center; border: 1px solid #dddddd">
						<thead>
								<tr>
										<th colspan="2" style="background-color: #eeeeee; text-align: center;">게시판 글수정</th>
								</tr>
						</thead>
						<tbody>
								<tr>
										<td><input type="text" class="form-control" placeholder="글 제목" name="bbsTitle" maxlength="50" value="${view.bbsTitle}"></td>										
								</tr>
								<tr>										
										<td><textarea class="form-control" placeholder="글 내용" name="bbsContent" maxlength="2048" style="height: 350px;">${view.bbsContent}</textarea></td>
								</tr>
						</tbody>						
				</table>
				<input type="hidden" name="bbsID" value="${view.bbsID}">
				<input type="hidden" name="bbsEmail" value="${view.userEmail}">
				<input type="submit" class="btn btn-primary pull-right" value="글수정">
				
				</form>
						
				</div>
		</div>
		
		
		<script src="https://code.jquery.com/jquery-3.1.1.min.js"></script>
		<script src="resources/js/bootstrap.js"></script>
		
</body>
</html>