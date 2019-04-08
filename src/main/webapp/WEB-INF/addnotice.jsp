<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%String path = request.getContextPath() + "/"; %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>发布公告</title>
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto:400,700">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/fontawesome.min.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/bootstrap.min.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/templatemo-style.css">

</head>

<body>
<jsp:include page="top.jsp"></jsp:include>

<div class="container tm-mt-big tm-mb-big">
    <div class="row">
        <div class="col-xl-9 col-lg-10 col-md-12 col-sm-12 mx-auto" align="center">
            <div class="tm-bg-primary-dark tm-block tm-block-h-auto" align="center">
                <form action="addonenotice">
                    <div class="row">
                        <div class="col-12" align="center">
                            <h2 class="tm-block-title d-inline-block">发布新公告</h2>
                        </div>
                    </div>
                    <div class="row tm-edit-product-row">
                        <%--占位div控件--%>
                        <div style="width: 280px;height: 100px;" align="center"></div>
                        <div class="form-group mb-3">
                            <label>公告标题</label>
                            <input id="nTitle" name="nTitle" type="text" class="form-control validate"/>
                        </div>
                    </div>
                    <textarea style="width: 745px;height: 500px;background-color:transparent;color: #ffffff;border: 2px #bee5eb solid;" name="nContent">

                    </textarea>
                    <div class="col-xl-6 col-lg-6 col-md-12" align="center">
                        <div class="col-12" align="center">
                            <button type="submit" class="btn btn-primary btn-block text-uppercase">添加</button>
                        </div>
                    </div>
                </form>
            </div>
        </div>
    </div>
</div>


</body>
</html>
