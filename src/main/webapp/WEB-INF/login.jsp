<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
	%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<base href="<%=basePath %>" />
<head>
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<meta http-equiv="X-UA-Compatible" content="ie=edge" />
<title>用户登录</title>
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto:400,700" />
<link rel="stylesheet" href="css/fontawesome.min.css" />
<link rel="stylesheet" href="css/bootstrap.min.css" />
<link rel="stylesheet" href="css/templatemo-style.css">
<script type="text/javascript">
	var msg = "${sessionScope.msg}";
	sessionStorage.setItem("msg","");
	sessionStorage.removeItem("msg");
	if (msg.trim().length != 0) {
		alert(msg);
		msg = "";
	}
</script>
</head>

<body>
	<div>
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

			
		</div>
		</nav>
	</div>

	<div class="container tm-mt-big tm-mb-big">
		<div class="row">
			<div class="col-12 mx-auto tm-login-col">
				<div class="tm-bg-primary-dark tm-block tm-block-h-auto">
					<div class="row">
						<div class="col-12 text-center">
							<h2 class="tm-block-title mb-4">大学生学习平台</h2>
						</div>
					</div>
					<div class="row mt-2">
						<div class="col-12">
							<form action="userLogin" method="post" class="tm-login-form">
								<div class="form-group">
									<label for="username">账号</label> <input name="uId"
										type="text" class="form-control validate" id="uId" value=""
										required />
								</div>
								<div class="form-group mt-3">
									<label for="password">密码</label> <input name="uPassword"
										type="password" class="form-control validate" id="uPassword"
										value="" required />
								</div>
								<!-- <div class="form-group mt-4" align="center">
									<label><input name="identity"  type="radio" checked="checked" />学生&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</label>
									<label><input name="identity"  type="radio" />教师</label>
								</div> -->
								<div class="form-group mt-4">
									<button type="submit"
										class="btn btn-primary btn-block text-uppercase">
										登 &nbsp; &nbsp; &nbsp;录</button>
								</div>
								<div align="right"><a href="" style="color: #bee5eb">忘记密码？</a><a href="register" style="color: #bee5eb">没有账号？注册一个&nbsp;&nbsp;&nbsp;</a></div>
								<%--<button type="reset" onclick="window.location.href='register'" class="mt-5 btn btn-primary btn-block text-uppercase">
									</button>--%>
							</form>
                            <div style="height: 30px;"></div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<script src="js/jquery-3.3.1.min.js"></script>
	<script src="js/bootstrap.min.js"></script>
</body>
</html>