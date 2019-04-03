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
<title>Teacher</title>
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto:400,700"/>
    <link rel="stylesheet" href="css/fontawesome.min.css" />
    <link rel="stylesheet" href="css/bootstrap.min.css" />
    <link rel="stylesheet" href="css/templatemo-style.css"
  </head>

  <body id="reportsPage">
    <jsp:include page="top.jsp"></jsp:include>
    
    <div class="container mt-5">
      <div class="row tm-content-row">
        <div class="col-sm-12 col-md-12 col-lg-8 col-xl-8 tm-block-col">
          <div class="tm-bg-primary-dark tm-block tm-block-products">
          <h2 class="tm-block-title">教师信息</h2>
            <div class="tm-product-table-container">
              <table class="table table-hover tm-table-small tm-product-table" >
                <thead>
                  <tr>
                    <th scope="col">序号</th>
                    <th scope="col">教师姓名</th>
                    <th scope="col">入职日期</th>
                    <th scope="col">&nbsp;</th>
                  </tr>
                </thead>
                <tbody>
                <c:forEach items="${sessionScope.allTeacher}" var="teacher">
                 <tr>
                    <td class="tm-product-name">${teacher.tId}</td>
                    <td><a href="teacherinfo" style="color: #bee5eb">${teacher.tName}</a></td>
                    <td>${teacher.tHiredate}</td>
                   <c:if test="${sessionScope.user.uLevel eq 0}">
                    <td>
                      <a href="deleteoneteacher/${teacher.tId}" class="tm-product-delete-link" onclick="return delete_sure()">
                        <i class="far fa-trash-alt tm-product-delete-icon"></i>
                      </a>
                    </td>
                   </c:if>
                  </tr>
                </c:forEach>
                </tbody>

              </table>
            </div>
            <!-- table container -->
            <c:if test="${sessionScope.user.uLevel eq 0}">
            <a href="addteacher" class="btn btn-primary btn-block text-uppercase mb-3">添加教师</a>
            </c:if>
            <%--<button class="btn btn-primary btn-block text-uppercase">
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
                    <c:if test="${sessionScope.user.uLevel eq 0}">
                      <td class="text-center">
                        <a href="deleteonecollege/${college.cId}" class="tm-product-delete-link" onclick="return delete_sure()">
                          <i class="far fa-trash-alt tm-product-delete-icon" ></i>
                        </a>
                      </td>
                    </c:if>
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