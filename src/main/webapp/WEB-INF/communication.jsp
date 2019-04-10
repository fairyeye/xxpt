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
    <title>交流答疑</title>
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto:400,700" />
    <link rel="stylesheet" href="css/fontawesome.min.css" />
    <link rel="stylesheet" href="css/bootstrap.min.css" />
    <link rel="stylesheet" href="css/templatemo-style.css">
    <style type="text/css">
        .button {
            background-color: #4e555b;
            border: none;
            color: white;
            padding: 15px 32px;
            text-align: center;
            text-decoration: none;
            display: inline-block;
            font-size: 10px;
        }
    </style>
</head>

<body>
<jsp:include page="top.jsp"></jsp:include>

<div class="container" align="center">
    <div style="height: 30px;"></div>
    <div style="width: 30%;">
        <form action="/">
            <div style="float: left;">
                <input name="question" type="text" class="form-control validate" onclick=javascript:this.value='' value="请输入要查询的问题"/>
            </div>
            <div style="float: right;"> 
                <button type="reset" class="button">搜索</button>
            </div>
        </form>
    </div>
    <div style="height: 25px;clear: both;"></div>
    <div class="col-12 tm-block-col">
        <div class="tm-bg-primary-dark tm-block tm-block-taller tm-block-scroll">
            <table class="table">
                <thead>
                <tr align="center">
                    <th scope="col">编号</th>
                    <th scope="col">留言问题</th>
                    <th scope="col">留言答复</th>
                    <th scope="col">留言时间</th>
                </tr>
                </thead>
                <tbody>
                <%--<c:forEach items="${sessionScope.pdfs}" var="pdf">--%>
                    <tr align="center">
                        <th scope="row"><b>01</b></th>
                        <td><a href="answer" style="color: #bee5eb">java怎么学</a></td>
                        <td>已有 3 人回复</td>
                        <td>2019 年</td>
                        <%--<c:choose>
                            <c:when test="${sessionScope.user.uLevel eq 1}">
                                <td><a href="pdfdownload/${pdf.pdfId}" style="color: #bee5eb">下载</a>&nbsp;&nbsp;&nbsp;
                                    <c:if test="${sessionScope.user.uId eq pdf.pdfAuthor}">
                                        <a href="pdfdelete/${pdf.pdfId}" style="color: #bee5eb">删除</a>
                                    </c:if>
                                </td>
                            </c:when>
                            <c:otherwise>
                                <td><a href="pdfdownload/${pdf.pdfId}" style="color: #bee5eb">下载</a></td>
                            </c:otherwise>
                        </c:choose>--%>
                    </tr>
                <%--</c:forEach>--%>
                </tbody>
            </table>
            </br>
            <div align="right">
                <a href="" style="color: #bee5eb">发帖求助</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            </div>
        </div>
    </div>
</div>

<script src="js/jquery-3.3.1.min.js"></script>
<script src="js/bootstrap.min.js"></script>
</body>
</html>