<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%
	String path = request.getContextPath();
	String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
	%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<script language="JavaScript">
    var us = "${sessionScope.user.uId}";
    if (0==us.trim().length){
        alert("请登录后操作！")
        window.location.href="login";
    }
</script>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Home</title>
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto:400,700">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/fontawesome.min.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/bootstrap.min.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/templatemo-style.css">
</head>
<body>
<nav class="navbar navbar-expand-xl">
    <div class="container h-100">
        <a class="navbar-brand" href="index">
            <h1 class="tm-site-title mb-0">大学生学习平台</h1>
        </a>

        <div class="collapse navbar-collapse" id="navbarSupportedContent">
            <ul class="navbar-nav mx-auto h-100">
                <li class="nav-item">
                    <a class="nav-link" href="index">
                        <i class="fas fa-tachometer-alt"></i> 主页
                        <span class="sr-only">(current)</span>
                    </a>
                </li>
                <li class="nav-item dropdown">
                    <a class="nav-link dropdown-toggle" href="teacher" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                        <i class="far fa-file-alt"></i>
                        <span> 教师管理 <i class="fas fa-angle-down"></i> </span>
                    </a>
                    <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                        <a class="dropdown-item" href="teacher">查询教师</a>
                        <a class="dropdown-item" href="addteacher">添加教师</a>
                    </div>
                </li>
                <li class="nav-item dropdown">
                    <a class="nav-link dropdown-toggle" href="student" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                        <i class="far fa-file-alt"></i>
                        <span> 学生管理 <i class="fas fa-angle-down"></i> </span>
                    </a>
                    <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                        <a class="dropdown-item" href="student">查询学生</a>
                        <a class="dropdown-item" href="addstudent">添加学生</a>
                    </div>
                </li>

                <li class="nav-item">
                    <a class="nav-link" href="study">
                        <i class="fas fa-cog"></i> 学习区
                    </a>
                </li>
                <li class="nav-item dropdown">
                    <a class="nav-link dropdown-toggle" href="info" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                        <i class="far fa-user"></i>
                        <span> 个人信息 <i class="fas fa-angle-down"></i> </span>
                    </a>
                    <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                        <a class="dropdown-item" href="login">注销登录</a>
                        <a class="dropdown-item" href="info">个人信息</a>
                    </div>
                </li>
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
                        <c:if test="${sessionScope.user.uId eq null}">
                            <b>您好，请登录！</b></br>
                        </c:if>
                    </a>
                </li>
            </ul>
        </div>
    </div>
</nav>
</body>
<script language="JavaScript">
    function logout() {
        sessionStorage.removeItem("user");
        window.location.href="login";
    }
</script>
</html>