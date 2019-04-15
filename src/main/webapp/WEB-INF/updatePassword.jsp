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
    <title>修改密码</title>
    <link rel="stylesheet"
          href="https://fonts.googleapis.com/css?family=Roboto:400,700" />
    <!-- https://fonts.google.com/specimen/Open+Sans -->
    <link rel="stylesheet" href="css/fontawesome.min.css" />
    <!-- https://fontawesome.com/ -->
    <link rel="stylesheet" href="css/bootstrap.min.css" />
    <!-- https://getbootstrap.com/ -->
    <link rel="stylesheet" href="css/templatemo-style.css">
    <script type="text/javascript">
        var msg = "${msg}";
        if (msg.trim().length != 0) {
            alert(msg);
        }
    </script>
</head>

<body>
<jsp:include page="top.jsp"></jsp:include>

<div class="container tm-mt-big tm-mb-big">
    <div class="row">
        <div class="col-12 mx-auto tm-login-col">
            <div class="tm-bg-primary-dark tm-block tm-block-h-auto">
                <div class="row">
                    <div class="col-12 text-center">
                        <h2 class="tm-block-title mb-4">大学生学习平台</h2>
                    </div>
                </div>
                <div class="row mt-2">
                    <div class="col-12">
                        <form action="userUpdatePassword" method="post" class="tm-login-form" onsubmit="return sumbit_sure()">
                            <div class="form-group">
                                <label for="username">账号</label> <input name="uId" readonly="readonly"
                                                                        type="text" class="form-control validate" id="uId" value=${sessionScope.user.uId}
                                                                        required />
                            </div>
                            <div class="form-group mt-3">
                                <label for="password">密码</label> <input name="uPassword"
                                                                        type="password" class="form-control validate" id="uPassword"
                                                                        value=""  />
                            </div>
                            <div class="form-group mt-4">
                                <button type="submit"
                                        class="btn btn-primary btn-block text-uppercase" >
                                    修改密码 </button>
                            </div>
                            <button type="reset" onclick="window.location.href='index'" class="mt-5 btn btn-primary btn-block text-uppercase">
                                返回主页</button>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<script src="js/jquery-3.3.1.min.js"></script>
<!-- https://jquery.com/download/ -->
<script src="js/bootstrap.min.js"></script>
<!-- https://getbootstrap.com/ -->
<script language="JavaScript">
    function sumbit_sure() {
        var sure = confirm("确定修改密码？");
        if (sure == true) {
            return true;
        }else {
            return false;
        }
    }
</script>
</body>
</html>