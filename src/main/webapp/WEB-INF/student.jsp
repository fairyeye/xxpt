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
<meta charset="UTF-8">
<title>学生信息</title>
<link rel="stylesheet"
      href="https://fonts.googleapis.com/css?family=Roboto:400,700"
    />
    <link rel="stylesheet" href="css/fontawesome.min.css" />
    <link rel="stylesheet" href="css/bootstrap.min.css" />
    <link rel="stylesheet" href="css/templatemo-style.css">
    <%--<script type="javascript">
      function batchdelete() {
        var checkedNum = $("input[name='subcheck']:checked").length;
        if(checkedNum==0){
          alert("请至少选择一项!");
          return false;
        }else {
          var list = new Array();
          if ($("input[name='subcheck']:checked")){
            ${sessionScope.student.}
            list.put();
          }

        }
      }
    </script>--%>
  </head>

  <body id="reportsPage">
  <jsp:include page="top.jsp"></jsp:include>


    <div class="container mt-5">
      <div class="row tm-content-row">
        <div class="col-sm-12 col-md-12 col-lg-8 col-xl-8 tm-block-col">
          <div class="tm-bg-primary-dark tm-block tm-block-products">
          <h2 class="tm-block-title">学生信息</h2>
            <div class="tm-product-table-container">
              <table class="table table-hover tm-table-small tm-product-table">
                <thead>
                  <tr>
                    <th scope="col">&nbsp;</th>
                    <th scope="col">学生学号</th>
                    <th scope="col">所属院系</th>
                    <th scope="col">学生姓名</th>
                    <th scope="col">所属教师编号</th>
                    <th scope="col">&nbsp;</th>
                  </tr>
                </thead>
                <tbody>
                <c:forEach items="${sessionScope.students}" var="stu">
                 <tr>
                    <th scope="row"><%--<input type="checkbox" id="subcheck" name="subcheck" />--%></th>
                    <td class="tm-product-name">${stu.sId}</td>
                    <td>${stu.sCollege}</td>
                    <td>${stu.sName}</td>
                    <td>${stu.sTid}</td>
                    <td>
                      <a href="deletestudent/${stu.sId}" class="tm-product-delete-link" onclick="return delete_sure()">
                        <i class="far fa-trash-alt tm-product-delete-icon"></i>
                      </a>
                    </td>
                  </tr>
                </c:forEach>
                </tbody>
              </table>
            </div>
            <!-- table container -->
            <a
              href="addstudent"
              class="btn btn-primary btn-block text-uppercase mb-3">添加学生</a>
            <%--批量删除，麻烦。。。--%>
            <%--<button class="btn btn-primary btn-block text-uppercase" onclick="batchdelete()">
             	批量删除
            </button>--%>
          </div>
        </div>
        
        <!-- 右侧 -->
        <div class="col-sm-12 col-md-12 col-lg-4 col-xl-4 tm-block-col">
          <div class="tm-bg-primary-dark tm-block tm-block-product-categories">
            <h2 class="tm-block-title">院系名称</h2>
            <div class="tm-product-table-container">
              <table class="table tm-table-small tm-product-table">
                <tbody>
                  <c:forEach items="${sessionScope.allCollege}" var="college">
                    <tr>
                    <td class="tm-product-name" id="${college.cId}">${college.cName}</td>
                    <td class="text-center">
                      <a href="#" class="tm-product-delete-link" onclick="return delete_sure()">
                        <i class="far fa-trash-alt tm-product-delete-icon" ></i>
                      </a>
                    </td>
                  </tr>
                  </c:forEach>
                </tbody>
              </table>
            </div>
            <!-- table container -->
              <c:if test="${sessionScope.user.uLevel eq 0}">
                  <button class="btn btn-primary btn-block text-uppercase mb-3">
                      <a href="addcollege" style="color: #dfeffc">添加学院</a>
                  </button>
              </c:if>
          </div>
        </div>
      </div>
    </div>
    <footer class="tm-footer row tm-mt-small">
      <div class="col-12 font-weight-light">
        <p class="text-center text-white mb-0 px-4 small">
          @Copyright &copy;Company name All rights reserved.<a target="_blank" ></a>
        </p>
      </div>
    </footer>

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