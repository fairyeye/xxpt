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
<jsp:include page="top.jsp"></jsp:include>

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
						<label for="phone">学院</label>
						<input id="phone" name="phone" type="tel" class="form-control validate" />
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