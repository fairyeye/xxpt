<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<title>添加学院</title>
<base href="<%=basePath %>"/>
<link rel="stylesheet" href="css/fontawesome.min.css" />
<link rel="stylesheet" href="css/bootstrap.min.css" />
<link rel="stylesheet" href="css/templatemo-style.css">

<body>
<jsp:include page="top.jsp"></jsp:include>

<div class="container tm-mt-big tm-mb-big">
    <div class="row">
        <div class="col-xl-9 col-lg-10 col-md-12 col-sm-12 mx-auto">
            <div class="tm-bg-primary-dark tm-block tm-block-h-auto">
                <div class="row">
                    <div class="col-12" align="center">
                        <h2 class="tm-block-title d-inline-block">添加学院</h2>
                    </div>
                </div>
                <div class="row tm-edit-product-row">
                    <%--占位div控件--%>
                    <div style="width: 200px;height: 100px;"></div>
                    <div class="col-xl-6 col-lg-6 col-md-12" >
                        <form action="addonecollege" class="tm-edit-product-form" method="post">
                            <div class="form-group mb-3">
                                <label >学院名称</label>
                                <input id="cName" name="cName" type="text" class="form-control validate"/>
                            </div>
                            <div class="col-12">
                                <button type="submit" class="btn btn-primary btn-block text-uppercase">添加</button>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
</body>
</html>