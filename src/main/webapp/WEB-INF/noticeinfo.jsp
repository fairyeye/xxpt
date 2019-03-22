<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%String path=request.getContextPath()+"/"; %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Home</title>
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto:400,700">
    <!-- https://fonts.google.com/specimen/Roboto -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/fontawesome.min.css">
    <!-- https://fontawesome.com/ -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/bootstrap.min.css">
    <!-- https://getbootstrap.com/ -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/templatemo-style.css">

</head>

<body id="reportsPage">

    <div class="" id="home">
        <nav class="navbar navbar-expand-xl">
            <div class="container h-100">
                <a class="navbar-brand" href="index">
                    <h1 class="tm-site-title mb-0">大学生学习平台</h1>
                </a>
                <button
                        class="navbar-toggler ml-auto mr-0"
                        type="button"
                        data-toggle="collapse"
                        data-target="#navbarSupportedContent"
                        aria-controls="navbarSupportedContent"
                        aria-expanded="false"
                        aria-label="Toggle navigation"
                >
                    <i class="fas fa-bars tm-nav-icon"></i>
                </button>

                <div class="collapse navbar-collapse" id="navbarSupportedContent">
                    <ul class="navbar-nav mx-auto h-100">
                        <li class="nav-item">
                            <a class="nav-link" href="index">
                                <i class="fas fa-tachometer-alt"></i> 主页
                                <span class="sr-only">(current)</span>
                            </a>
                        </li>
                        <li class="nav-item dropdown">
                            <a
                                    class="nav-link dropdown-toggle"
                                    href="teacher"
                                    id="navbarDropdown"
                                    role="button"
                                    data-toggle="dropdown"
                                    aria-haspopup="true"
                                    aria-expanded="false"
                            >
                                <i class="far fa-file-alt"></i>
                                <span> 教师管理 <i class="fas fa-angle-down"></i> </span>
                            </a>
                            <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                                <a class="dropdown-item" href="#">Daily Report</a>
                                <a class="dropdown-item" href="#">Weekly Report</a>
                                <a class="dropdown-item" href="#">Yearly Report</a>
                            </div>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="student">
                                <i class="fas fa-shopping-cart"></i> 学生管理
                            </a>
                        </li>

                        <li class="nav-item">
                            <a class="nav-link" href="study">
                                <i class="fas fa-cog"></i> 学习区
                            </a>
                        </li>
                        <li class="nav-item dropdown">
                            <a
                                    class="nav-link dropdown-toggle"
                                    href="info"
                                    id="navbarDropdown"
                                    role="button"
                                    data-toggle="dropdown"
                                    aria-haspopup="true"
                                    aria-expanded="false"
                            >
                                <i class="far fa-user"></i>
                                <span> 个人信息 <i class="fas fa-angle-down"></i> </span>
                            </a>
                            <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                                <a class="dropdown-item" href="#">Profile</a>
                                <a class="dropdown-item" href="#">Billing</a>
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
                                <c:if test="${sessionScope.user.uId eq  null}">
                                    <b>您好，请登录！</b></br>
                                </c:if>
                            </a>
                        </li>
                    </ul>
                </div>
            </div>
        </nav>
        <div class="container">
            <div class="row tm-content-row">
                <div class="col-sm-12 col-md-12 col-lg-6 col-xl-6 tm-block-col">
                </div>
                <div class="col-sm-12 col-md-12 col-lg-6 col-xl-6 tm-block-col">
                </div>
                <div class="col-12 tm-block-col">
                    <div class="tm-bg-primary-dark tm-block tm-block-taller tm-block-scroll">
                        <font size="14" color="white" face="verdana">学习平台开通</font></br></br>
                        <div class="table">
                            <pre style="font-size: 16px; font-family: 'Microsoft YaHei UI Light'" >
                                天青色等烟雨，而我在等你。
                                天青色等烟雨，而我在等你。
                                天青色等烟雨，而我在等你。
                                天青色等烟雨，而我在等你。
                                天青色等烟雨，而我在等你。
                                天青色等烟雨，而我在等你。
                                天青色等烟雨，而我在等你。
                                天青色等烟雨，而我在等你。
                                天青色等烟雨，而我在等你。
                                天青色等烟雨，而我在等你。
                                天青色等烟雨，而我在等你。
                                天青色等烟雨，而我在等你。
                                天青色等烟雨，而我在等你。
                            </pre>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</body>
</html>
