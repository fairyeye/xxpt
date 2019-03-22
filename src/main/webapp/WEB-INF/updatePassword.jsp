<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<base href="<%=basePath %>" />
<head>
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <meta http-equiv="X-UA-Compatible" content="ie=edge" />
    <title>修改密码</title>
    <link rel="stylesheet"
          href="https://fonts.googleapis.com/css?family=Roboto:400,700" />
    <!-- https://fonts.google.com/specimen/Open+Sans -->
    <link rel="stylesheet" href="css/fontawesome.min.css" />
    <!-- https://fontawesome.com/ -->
    <link rel="stylesheet" href="css/bootstrap.min.css" />
    <!-- https://getbootstrap.com/ -->
    <link rel="stylesheet" href="css/templatemo-style.css">
    <script type="text/javascript">
        var msg="${msg}";
        if(msg.trim().length != 0) {
            alert(msg);
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
                        <form action="userUpdatePassword" method="post" class="tm-login-form">
                            <div class="form-group">
                                <label for="username">账号</label> <input name="uId" readonly="readonly"
                                                                        type="text" class="form-control validate" id="uId" value=${sessionScope.user.uId}
                                                                        required />
                            </div>
                            <div class="form-group mt-3">
                                <label for="password">密码</label> <input name="uPassword"
                                                                        type="password" class="form-control validate" id="uPassword"
                                                                        value="" required />
                            </div>
                            <div class="form-group mt-4">
                                <button type="submit"
                                        class="btn btn-primary btn-block text-uppercase">
                                    修改密码 </button>
                            </div>
                            <button type="reset" onclick="window.location.href='index'" class="mt-5 btn btn-primary btn-block text-uppercase">
                                返回主页</button>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<footer class="tm-footer row tm-mt-small">
    <div class="col-12 font-weight-light">
        <p class="text-center text-white mb-0 px-4 small">
            Copyright &copy; Company name All rights reserved.<a target="_blank"></a>
        </p>
    </div>
</footer>
<script src="js/jquery-3.3.1.min.js"></script>
<!-- https://jquery.com/download/ -->
<script src="js/bootstrap.min.js"></script>
<!-- https://getbootstrap.com/ -->
</body>
</html>