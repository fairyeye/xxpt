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
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/fontawesome.min.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/bootstrap.min.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/templatemo-style.css">

</head>

<body id="reportsPage">

<div class="" id="home">
    <jsp:include page="top.jsp"></jsp:include>
</div>

<div class="container">
    <div class="row tm-content-row">
        <div class="col-sm-12 col-md-12 col-lg-6 col-xl-6 tm-block-col">
        </div>
        <div class="col-sm-12 col-md-12 col-lg-6 col-xl-6 tm-block-col">
        </div>
        <div class="col-12 tm-block-col" align="center">
            <div class="tm-bg-primary-dark tm-block tm-block-taller tm-block-scroll" >
                <font size="14" color="white" face="verdana">删除成功&nbsp;&nbsp;&nbsp;<a href="index">返回主页</font></br></br>
            </div>
        </div>
    </div>
</div>
</body>
</html>
