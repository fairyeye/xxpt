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
    <style>
        .container3{
            border:0px solid #ccc;
            height:auto;
            padding: 10px
        }
        .container3 div{
            width: 60%;
            margin:10px 0px 30px 300px;
        }
        .container3 div span{
            margin-left: 75px;
            font-size: 14px;
            color: #cccccc;
        }
        .container3 h1{
            font-size: 23px;
            text-align: center;
            font-family: 黑体;
            color: white;
        }
        .container3  pre{
            width: 100%;
            white-space: pre-wrap;
            font-size: 16px;
            font-family: "微软雅黑 Light";
            line-height: 30px;
            color: #cccccc;
        }
    </style>
</head>

<body id="reportsPage">

    <div class="" id="home">
        <jsp:include page="top.jsp"></jsp:include>
        <div class="container">
            <div class="row tm-content-row">
                <div class="col-sm-12 col-md-12 col-lg-6 col-xl-6 tm-block-col">
                </div>
                <div class="col-sm-12 col-md-12 col-lg-6 col-xl-6 tm-block-col">
                </div>
                <div class="col-12 tm-block-col">
                        <div class="container3">
                        </br></br>
                            <h1>${sessionScope.notice.nTitle}</h1>
                            <div>
                                <span>发布者：${sessionScope.notice.nAuthor}</span>
                                <span>发布时间：${sessionScope.notice.nTime}</span>
                            </div>
                            <pre>${sessionScope.notice.nContent}</pre>
                        </div>
                </div>
            </div>
        </div>
    </div>
</body>
</html>
