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
</head>
<body>
<nav class="navbar navbar-expand-xl">
		<div class="container h-100">
			<a class="navbar-brand" href="index">
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
					<li class="nav-item"><a class="nav-link" href="index">
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
			</div>
		</div>
		</nav>
		学习
</body>
</html>