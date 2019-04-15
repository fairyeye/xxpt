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

    <style type="text/css">
        .button {
            background-color: #4e657a;
            border: none;
            color: white;
            height: 48px;
            border-radius: 12px;
            width: 97px;
            text-decoration: none;
            display: inline-block;
            font-size: 12px;
        }
    </style>
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
                    <th scope="col">回答者</th>
                    <th scope="col" colspan="2">问题：${sessionScope.question.qName}</th>
                    <th scope="col">操作</th>
                </tr>
                </thead>
                <tbody>
                <c:forEach items="${sessionScope.answers}" var="answer">
                <tr align="center">
                    <th scope="row"><b>${answer.aAnuthor}说：</b></th>
                    <td colspan="2">${answer.aContent}</td>
                    <%--<td>${answer.aTime}</td>--%>
                    <td>
                        <c:if test="${sessionScope.user.uId eq sessionScope.question.qAuthor}">
                            <a href="deleteanswer/${answer.aId}" class="tm-product-delete-link" onclick="return delete_sure()">
                                <i class="far fa-trash-alt tm-product-delete-icon"></i>
                            </a>
                        </c:if>
                    </td>
                </tr>
                </c:forEach>
                </tbody>
            </table>
            </br>

            <div align="center" style="position:absolute; bottom:6px;">
                <form action="addanswerquestion/${sessionScope.user.uId}/${sessionScope.question.qId}" method="post">
                    <div style="height: 50px;width: 700px; color: #bee5eb;" >
                        我要回答：<input type="text" name="aContent" style="height: 50px;width: 70%;background: #4e657a; border: 0; border-radius: 12px;" value=""/>
                        <button type="submit" class="button">提交</button><br>
                        <div style="height: 10%;"> </div>
                    </div>
                <%--<a href="answerquestion/${sessionScope.question.qId}" style="color: #bee5eb;">提交</a>--%>
            </form>
            </div>
        </div>
    </div>
</div>

<script src="js/jquery-3.3.1.min.js"></script>
<script src="js/bootstrap.min.js"></script>
<script language="JavaScript">
    function delete_sure() {
        var sure = confirm("确定删除？");
        if (sure == true){
            return true;
        } else{
            return false;
        }
    }
</script>
</body>
</html>