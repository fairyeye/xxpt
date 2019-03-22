<%@ page language="java" contentType="text/html; charset=UTF-8"
		 pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<base href="<%=basePath %>"/>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<meta http-equiv="X-UA-Compatible" content="ie=edge">
	<title>study</title>
	<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto:400,700">
	<!-- https://fonts.google.com/specimen/Roboto -->
	<link rel="stylesheet" href="${pageContext.request.contextPath}/css/fontawesome.min.css">
	<!-- https://fontawesome.com/ -->
	<link rel="stylesheet" href="${pageContext.request.contextPath}/css/bootstrap.min.css">
	<!-- https://getbootstrap.com/ -->
	<link rel="stylesheet" href="${pageContext.request.contextPath}/css/templatemo-style.css">
	<title>Insert title here</title>
</head>
<body>
<nav class="navbar navbar-expand-xl">
	<div class="container h-100">
		<a class="navbar-brand" href="index.html">
			<h1 class="tm-site-title mb-0">大学生学习平台</h1>
		</a>
		<button class="navbar-toggler ml-auto mr-0" type="button"
				data-toggle="collapse" data-target="#navbarSupportedContent"
				aria-controls="navbarSupportedContent" aria-expanded="false"
				aria-label="Toggle navigation">
			<i class="fas fa-bars tm-nav-icon"></i>
		</button>

		<div class="collapse navbar-collapse" id="navbarSupportedContent">
			<ul class="navbar-nav mx-auto h-100">
				<li class="nav-item"><a class="nav-link" href="index.html">
					<i class="fas fa-tachometer-alt"></i> 主页 <span class="sr-only">(current)</span>
				</a></li>
				<li class="nav-item dropdown"><a
						class="nav-link dropdown-toggle" href="teacher" id="navbarDropdown"
						role="button" data-toggle="dropdown" aria-haspopup="true"
						aria-expanded="false"> <i
						class="far fa-file-alt"></i> <span> 教师管理 <i
						class="fas fa-angle-down"></i>
						</span>
				</a>
					<div class="dropdown-menu" aria-labelledby="navbarDropdown">
						<a class="dropdown-item" href="#">查询所有教师</a>
						<a class="dropdown-item" href="#">添加教师</a>
					</div></li>
				<li class="nav-item dropdown"><a
						class="nav-link dropdown-toggle" href="student" id="navbarDropdown"
						role="button" data-toggle="dropdown" aria-haspopup="true"
						aria-expanded="false"> <i
						class="far fa-file-alt"></i> <span> 学生管理 <i
						class="fas fa-angle-down"></i>
						</span>
				</a>
					<div class="dropdown-menu" aria-labelledby="navbarDropdown">
						<a class="dropdown-item" href="#">查询所有学生</a> <a
							class="dropdown-item" href="#">添加学生</a>
					</div></li>

				<li class="nav-item"><a class="nav-link" href="study">
					<i class="fas fa-cog"></i> 学习区
				</a></li>
				<li class="nav-item dropdown"><a
						class="nav-link dropdown-toggle" href="info" id="navbarDropdown"
						role="button" data-toggle="dropdown" aria-haspopup="true"
						aria-expanded="false"> <i
						class="far fa-user"></i> <span> 个人信息 <i
						class="fas fa-angle-down"></i>
						</span>
				</a>
					<div class="dropdown-menu" aria-labelledby="navbarDropdown">
						<a class="dropdown-item" href="#">查询个人信息</a> <a
							class="dropdown-item" href="#">修改信息</a>
					</div></li>
			</ul>
			<ul class="navbar-nav">
				<li class="nav-item">
					<a class="nav-link d-block" href="login">
						<c:if test="${sessionScope.user.uId eq 0}">
							<b>您好，管理员！</b></br>
						</c:if>
						<c:if test="${sessionScope.user.uLevel eq 1}">
							<b>您好，教师${sessionScope.user.uId }！</b></br>
						</c:if>
						<c:if test="${sessionScope.user.uLevel eq 2}">
							<b>您好，学生${sessionScope.user.uId }！</b></br>
						</c:if>
						<c:if test="${sessionScope.user.uId eq  null}">
							<b>您好，请登录！</b></br>
						</c:if>
					</a>
				</li>
			</ul>
			</ul>
		</div>
	</div>
</nav>

<div class="container mt-5">
	<!-- row -->
	<div class="row tm-content-row">
		<div class="tm-block-col tm-col-avatar">
			<div class="tm-bg-primary-dark tm-block tm-block-avatar">
				<h2 class="tm-block-title"> </h2>
				<div class="tm-avatar-container">
					<img src="img/admin.jpg" alt="Avatar" class="tm-avatar img-fluid mb-4" />
				</div>
			</div>
		</div>
		<div class="tm-block-col tm-col-account-settings">
			<div class="tm-bg-primary-dark tm-block tm-block-settings">
				<h2 class="tm-block-title">个人信息</h2>
				<form action="infoUpdate" class="tm-signup-form row">
					<div class="form-group col-lg-6">
						<label for="name">学号/编号</label>
						<input id="uId" name="uId" type="text" readonly="readonly" class="form-control validate" value=${sessionScope.user.uId } />
					</div>
					<div class="form-group col-lg-6">
						<label for="name">姓名</label>
						<input id="email" name="name" type="text" class="form-control validate" />
					</div>
					<div class="form-group col-lg-6">
						<label for="password">密码</label>
						<input id="password" name="password" type="password" readonly="readonly" class="form-control validate" value=${sessionScope.user.uPassword } />
					</div>
					<div class="form-group col-lg-6">
						<label for="name">性别</label>
						<input id="sex" name="sex" type="text" class="form-control validate" value=${sessionScope.user.uId } />
					</div>
					<div class="form-group col-lg-6">
						<label for="phone">学院</label>
						<input id="phone" name="phone" type="tel" class="form-control validate" />
					</div>
					<div class="form-group col-lg-6">
						<label for="name">入学年份</label>
						<input id="date" name="date" type="text" class="form-control validate" value=${sessionScope.user.uId } />
					</div>

					<div class="col-12">
						<button type="submit" class="btn btn-primary btn-block text-uppercase" >
							修改个人信息
						</button>
					</div>
					<label for="name"> &nbsp;&nbsp;</label>
					<div class="col-12">
						<button type="reset" onclick="window.location.href='updatePassword'" class="btn btn-primary btn-block text-uppercase" >
							修改密码
						</button>
					</div>
				</form>
			</div>
		</div>
	</div>
</div>
</body>
</html>