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
    <title>错误页面</title>
    <link rel="stylesheet"
          href="https://fonts.googleapis.com/css?family=Roboto:400,700" />
    <link rel="stylesheet" href="css/fontawesome.min.css" />
    <link rel="stylesheet" href="css/bootstrap.min.css" />
    <link rel="stylesheet" href="css/templatemo-style.css">
    <script type="text/javascript">
        var msg="${msg}";
        if(msg.trim().length != 0) {
            alert(msg);
        }
    </script>
</head>
<body>
<jsp:include page="top.jsp"></jsp:include>

<div class="container">
    <div class="row tm-content-row">
        <div class="col-sm-12 col-md-12 col-lg-6 col-xl-6 tm-block-col">
        </div>
        <div class="col-sm-12 col-md-12 col-lg-6 col-xl-6 tm-block-col">
        </div>
        <div class="col-12 tm-block-col" align="center">
            <div class="tm-bg-primary-dark tm-block tm-block-taller tm-block-scroll" >
                <font size="14" color="white" face="verdana">${msg}&nbsp;&nbsp;&nbsp;<a href="index">返回主页</a></font></br></br>
            </div>

        </div>
    </div>
</div>
</body>
</html>
