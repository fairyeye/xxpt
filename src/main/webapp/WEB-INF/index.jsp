<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%String path=request.getContextPath()+"/"; %>
    <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    <%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>
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
                        <li class="nav-item dropdown">
                            <a class="nav-link dropdown-toggle" href="index" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                <%--图标--%>
                                <%--<i class="far fa-file-alt"></i>--%>
                                <span> 主页 <i class="fas fa-angle-down"></i> </span>
                            </a>
                            <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                                <a class="dropdown-item" href="index">主页</a>
                                <a class="dropdown-item" href="">占位</a>
                            </div>
                        </li>
                        <li class="nav-item dropdown">
                            <a class="nav-link dropdown-toggle" href="teacher" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                <%--图标--%>
                                <%--<i class="far fa-file-alt"></i>--%>
                                <span> 教师管理 <i class="fas fa-angle-down"></i> </span>
                            </a>
                            <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                                <a class="dropdown-item" href="teacher">查询教师</a>
                                <a class="dropdown-item" href="addteacher">添加教师</a>
                            </div>
                        </li>
                        <li class="nav-item dropdown">
                            <a class="nav-link dropdown-toggle" href="findallstudent"  role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                <%--图标--%>
                                <%--<i class="far fa-file-alt"></i>--%>
                                <span> 学生管理 <i class="fas fa-angle-down"></i> </span>
                            </a>
                            <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                                <a class="dropdown-item" href="findallstudent">查询学生</a>
                                <a class="dropdown-item" href="addstudent">添加学生</a>
                            </div>
                        </li>

                        <li class="nav-item dropdown">
                            <a class="nav-link dropdown-toggle" href=""  role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                <%--图标--%>
                                <%--<i class="far fa-file-alt"></i>--%>
                                <span> 学习区 <i class="fas fa-angle-down"></i> </span>
                            </a>
                            <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                                <a class="dropdown-item" href="">交流答疑</a>
                                <a class="dropdown-item" href="">学习视频</a>
                                <a class="dropdown-item" href="findallpdf">课件上传</a>
                                <a class="dropdown-item" href="">课件下载</a>
                                <a class="dropdown-item" href="">待办作业</a>
                            </div>
                        </li>
                        <li class="nav-item dropdown">
                            <a class="nav-link dropdown-toggle" href="userinfo"role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                <%--图标--%>
                                <%--<i class="far fa-user"></i>--%>
                                <span> 个人信息 <i class="fas fa-angle-down"></i> </span>
                            </a>
                            <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                                <a class="dropdown-item" href="login" onclick="return logout()">注销登录</a>
                                <a class="dropdown-item" href="userinfo">个人信息</a>
                            </div>
                        </li>
                    </ul>
                    <ul class="navbar-nav">
                        <li class="nav-item">

                            <c:if test="${sessionScope.user.uId eq 0}">
                                <a class="nav-link d-block" href="login" onclick="return logout()">
                                    <b>您好，管理员！</b></br>
                                </a>
                            </c:if>
                            <c:if test="${sessionScope.user.uLevel eq 1}">
                                <a class="nav-link d-block" href="login" onclick="return logout()">
                                    <b>您好，教师${sessionScope.user.uId }！</b></br>
                                </a>
                            </c:if>
                            <c:if test="${sessionScope.user.uLevel eq 2}">
                                <a class="nav-link d-block" href="login" onclick="return logout()">
                                    <b>您好，学生${sessionScope.user.uId }！</b></br>
                                </a>
                            </c:if>
                            <c:if test="${sessionScope.user.uId eq null}">
                                <a class="nav-link d-block" href="login">
                                    <b>您好，请登录！</b></br>
                                </a>
                            </c:if>
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
                        <font size="14" color="white" face="verdana">公告</font></br></br>
                        <table class="table">
                            <thead>
                                <tr align="center">
                                    <th scope="col">发布者</th>
                                    <th scope="col">公告标题</th>
                                    <th scope="col" colspan="4">公告简介</th>
                                    <th scope="col">发布时间</th>
                                </tr>
                            </thead>
                            <tbody>
                            <c:forEach items="${applicationScope.notices}" var="notice">
                                <tr align="center">
                                    <th scope="row"><b>${notice.nAuthor}</b></th>
                                    <td>《${notice.nTitle}》</td>
                                    <td colspan="4"><b><a href="noticeinfo/${notice.nId}" style="color: #bee5eb">${fn:substring(notice.nContent,0,30)}</a></b></td>
                                    <td>${notice.nTime}</td>
                                </tr>
                            </c:forEach>
                            </tbody>
                        </table>
                        </br>

                        <c:if test="${sessionScope.user.uLevel eq 0}" >
                            <div align="right">
                                <a href="addnotice" style="color: #bee5eb">发布公告</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            </div>
                        </c:if>
                        <c:if test="${sessionScope.user.uLevel eq 1}" >
                            <div align="right">
                                <a href="addnotice" style="color: #bee5eb">发布公告</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            </div>
                        </c:if>
                    </div>
                </div>
            </div>
        </div>
    </div>
</body>
<script src="js/jquery-3.3.1.min.js"></script>
<script src="js/bootstrap.min.js"></script>
<script language="JavaScript">
    function logout() {
        var sure = confirm("确定注销登录");
        if (sure){
            return true;
        } else {
            return false;
        }
    }
</script>
</html>
