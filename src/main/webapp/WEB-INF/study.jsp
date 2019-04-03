<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%
	String path = request.getContextPath();
	String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
	%>
	 <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<base href="<%=basePath %>"/>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>study</title>
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto:400,700">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/fontawesome.min.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/bootstrap.min.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/templatemo-style.css">
</head>
<body id="reportsPage">
<jsp:include page="top.jsp"></jsp:include>


<div class="" id="home">
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
                        <tr align="center">
                            <th scope="row"><b>管理员</b></th>
                            <td>《学习平台开通》</td>
                            <td colspan="4"><b><a href="noticeinfo" style="color: #bee5eb">楼主不想换行就是用行内元素span，css中的标签分为行内元素和行元素，行内就是不换行</a></b></td>
                            <td>08:00, 18 NOV 2018</td>
                        </tr>
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
</html>