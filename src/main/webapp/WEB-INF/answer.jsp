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
    <title>答疑</title>
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto:400,700" />
    <link rel="stylesheet" href="css/fontawesome.min.css" />
    <link rel="stylesheet" href="css/bootstrap.min.css" />
    <link rel="stylesheet" href="css/templatemo-style.css">

</head>

<body>
<jsp:include page="top.jsp"></jsp:include>

<div class="container" align="center">
    <div style="height: 30px;"></div>
    <div style="height: 25px;clear: both;"></div>
    <div class="col-12 tm-block-col">
        <div class="tm-bg-primary-dark tm-block tm-block-taller tm-block-scroll">
            <table class="table">
                <thead>
                <tr align="center">
                    <th scope="col" colspan="4">java怎么学</th>
                </tr>
                </thead>
                <tbody>
                <%--<c:forEach items="${sessionScope.pdfs}" var="pdf">--%>
                <tr align="center">
                    <th scope="row"><b>01</b></th>
                    <td colspan="2">这样学再这样学这样学再这样学这样学再这样学这样学再这样学这样学再这样学这样学再这样学这样学再这样学这样学再这样学</td>
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
                <tr align="center">
                    <th scope="row"><b>01</b></th>
                    <td colspan="2">这样学再这样学这样学再这样学这样学再这样学这样学再这样学这样学再这样学这样学再这样学这样学再这样学这样学再这样学</td>
                    <td>2019 年</td>
                </tr>
                <tr align="center">
                    <th scope="row"><b>01</b></th>
                    <td colspan="2">这样学再这样学这样学再这样学这样学再这样学这样学再这样学这样学再这样学这样学再这样学这样学再这样学这样学再这样学</td>
                    <td>2019 年</td>
                </tr><tr align="center">
                    <th scope="row"><b>01</b></th>
                    <td colspan="2">这样学再这样学这样学再这样学这样学再这样学这样学再这样学这样学再这样学这样学再这样学这样学再这样学这样学再这样学</td>
                    <td>2019 年</td>
                </tr><tr align="center">
                    <th scope="row"><b>01</b></th>
                    <td colspan="2">这样学再这样学这样学再这样学这样学再这样学这样学再这样学这样学再这样学这样学再这样学这样学再这样学这样学再这样学</td>
                    <td>2019 年</td>
                </tr><tr align="center">
                    <th scope="row"><b>01</b></th>
                    <td colspan="2">这样学再这样学这样学再这样学这样学再这样学这样学再这样学这样学再这样学这样学再这样学这样学再这样学这样学再这样学</td>
                    <td>2019 年</td>
                </tr><tr align="center">
                    <th scope="row"><b>01</b></th>
                    <td colspan="2">这样学再这样学这样学再这样学这样学再这样学这样学再这样学这样学再这样学这样学再这样学这样学再这样学这样学再这样学</td>
                    <td>2019 年</td>
                </tr><tr align="center">
                    <th scope="row"><b>01</b></th>
                    <td colspan="2">这样学再这样学这样学再这样学这样学再这样学这样学再这样学这样学再这样学这样学再这样学这样学再这样学这样学再这样学</td>
                    <td>2019 年</td>
                </tr><tr align="center">
                    <th scope="row"><b>01</b></th>
                    <td colspan="2">这样学再这样学这样学再这样学这样学再这样学这样学再这样学这样学再这样学这样学再这样学这样学再这样学这样学再这样学</td>
                    <td>2019 年</td>
                </tr><tr align="center">
                    <th scope="row"><b>01</b></th>
                    <td colspan="2">这样学再这样学这样学再这样学这样学再这样学这样学再这样学这样学再这样学这样学再这样学这样学再这样学这样学再这样学</td>
                    <td>2019 年</td>
                </tr><tr align="center">
                    <th scope="row"><b>01</b></th>
                    <td colspan="2">这样学再这样学这样学再这样学这样学再这样学这样学再这样学这样学再这样学这样学再这样学这样学再这样学这样学再这样学</td>
                    <td>2019 年</td>
                </tr><tr align="center">
                    <th scope="row"><b>01</b></th>
                    <td colspan="2">这样学再这样学这样学再这样学这样学再这样学这样学再这样学这样学再这样学这样学再这样学这样学再这样学这样学再这样学</td>
                    <td>2019 年</td>
                </tr><tr align="center">
                    <th scope="row"><b>01</b></th>
                    <td colspan="2">这样学再这样学这样学再这样学这样学再这样学这样学再这样学这样学再这样学这样学再这样学这样学再这样学这样学再这样学</td>
                    <td>2019 年</td>
                </tr><tr align="center">
                    <th scope="row"><b>01</b></th>
                    <td colspan="2">这样学再这样学这样学再这样学这样学再这样学这样学再这样学这样学再这样学这样学再这样学这样学再这样学这样学再这样学</td>
                    <td>2019 年</td>
                </tr><tr align="center">
                    <th scope="row"><b>01</b></th>
                    <td colspan="2">这样学再这样学这样学再这样学这样学再这样学这样学再这样学这样学再这样学这样学再这样学这样学再这样学这样学再这样学</td>
                    <td>2019 年</td>
                </tr><tr align="center">
                    <th scope="row"><b>01</b></th>
                    <td colspan="2">这样学再这样学这样学再这样学这样学再这样学这样学再这样学这样学再这样学这样学再这样学这样学再这样学这样学再这样学</td>
                    <td>2019 年</td>
                </tr><tr align="center">
                    <th scope="row"><b>01</b></th>
                    <td colspan="2">这样学再这样学这样学再这样学这样学再这样学这样学再这样学这样学再这样学这样学再这样学这样学再这样学这样学再这样学</td>
                    <td>2019 年</td>
                </tr><tr align="center">
                    <th scope="row"><b>01</b></th>
                    <td colspan="2">这样学再这样学这样学再这样学这样学再这样学这样学再这样学这样学再这样学这样学再这样学这样学再这样学这样学再这样学</td>
                    <td>2019 年</td>
                </tr>
                <%--</c:forEach>--%>
                </tbody>
            </table>
            </br>

            <div align="center" style="position:absolute; bottom:0;">
                &nbsp;&nbsp;&nbsp;&nbsp;<textarea rows="3" cols="90" onclick=javascript:this.value='' style="color: #ffffff;background: #4e657a;">
                    我要回答...
                </textarea>
                <a href="" style="color: #bee5eb;">提交</a>
            </div>
        </div>
    </div>
</div>

<script src="js/jquery-3.3.1.min.js"></script>
<script src="js/bootstrap.min.js"></script>
</body>
</html>