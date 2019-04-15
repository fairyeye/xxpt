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

        .bar7 input {
            width: 250px;
            border-radius: 12px;
            border: 2px solid #324B4E;
            background: #4e555b;
            transition: .3s linear;
            float: left;
        }
        .bar7 div{
            float: left;
        }
        /*.bar7 input:focus {
            width: 300px;
        }*/
        .button {
            background-color: #4e555b;
            border: none;
            color: white;
            height: 50px;
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
    <div style="width: 30%;">
        <form action="findquestions" method="post">
            <div style="height: 80px;width: 400px;">
            <div class="bar7">
                <input name="keyword" type="text" class="form-control validate" onclick=javascript:this.value='' value=""/>
            </div>
            <div style="float: right;">
                <button type="submit" class="button">搜索</button>
            </div>
            </div>
        </form>
    </div>
    <div class="col-12 tm-block-col">
        <div class="tm-bg-primary-dark tm-block tm-block-taller tm-block-scroll">
            <table class="table">
                <thead>
                <tr align="center">
                    <th scope="col">提问者</th>
                    <th scope="col">留言问题</th>
                    <th scope="col">留言答复</th>
                    <th scope="col">留言时间</th>
                    <th scope="col">操作</th>
                </tr>
                </thead>
                <tbody>
                <c:forEach items="${sessionScope.questions}" var="question">
                    <tr align="center">
                        <th scope="row"><b>${question.qAuthor}</b></th>
                        <td><a href="findanswerbyquestion/${question.qId}" style="color: #bee5eb">${question.qName}</a></td>
                        <td>已有 ${question.qAnswerNum} 人回复</td>
                        <td>${question.qTime}</td>
                        <td>
                            <c:if test="${sessionScope.user.uId eq question.qAuthor}">
                            <a href="deletequestion/${question.qId}" class="tm-product-delete-link" onclick="return delete_sure()">
                                <i class="far fa-trash-alt tm-product-delete-icon"></i>
                            </a>
                            </c:if>
                        </td>
                    </tr>
                </c:forEach>
                </tbody>
            </table>
            </br>
            <div align="right">
                <a href="addquestion" style="color: #bee5eb">发布问题</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
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