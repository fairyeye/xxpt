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
<link rel="stylesheet"
      href="https://fonts.googleapis.com/css?family=Roboto:400,700"
    />
    <!-- https://fonts.google.com/specimen/Roboto -->
    <link rel="stylesheet" href="css/fontawesome.min.css" />
    <!-- https://fontawesome.com/ -->
    <link rel="stylesheet" href="css/bootstrap.min.css" />
    <!-- https://getbootstrap.com/ -->
    <link rel="stylesheet" href="css/templatemo-style.css">
    
  </head>

  <body id="reportsPage">
    <nav class="navbar navbar-expand-xl">
		<div class="container h-100">
			<a class="navbar-brand" href="index">
				<h1 class="tm-site-title mb-0">大学生学习平台</h1>
			</a>
			<button class="navbar-toggler ml-auto mr-0" type="button"
				data-toggle="collapse" data-target="#navbarSupportedContent"
				aria-controls="navbarSupportedContent" aria-expanded="false"
				aria-label="Toggle navigation">
				<i class="fas fa-bars tm-nav-icon"></i>
			</button>

			<div class="collapse navbar-collapse" id="navbarSupportedContent">
				<ul class="navbar-nav mx-auto h-100">
					<li class="nav-item"><a class="nav-link" href="index">
							<i class="fas fa-tachometer-alt"></i> 主页 <span class="sr-only">(current)</span>
					</a></li>
					<li class="nav-item dropdown"><a
						class="nav-link dropdown-toggle" href="teacher" id="navbarDropdown"
						role="button" data-toggle="dropdown" aria-haspopup="true"
						aria-expanded="false"> <i
							class="far fa-file-alt"></i> <span> 教师管理 <i
								class="fas fa-angle-down"></i>
						</span>
					</a>
						<div class="dropdown-menu" aria-labelledby="navbarDropdown">
							<a class="dropdown-item" href="teacher">查询教师</a>
							<a class="dropdown-item" href="teacher">添加教师</a> 
						</div></li>
					<li class="nav-item dropdown"><a
						class="nav-link dropdown-toggle" href="student" id="navbarDropdown"
						role="button" data-toggle="dropdown" aria-haspopup="true"
						aria-expanded="false"> <i
							class="far fa-file-alt"></i> <span> 学生管理 <i
								class="fas fa-angle-down"></i>
						</span>
					</a>
						<div class="dropdown-menu" aria-labelledby="navbarDropdown">
							<a class="dropdown-item" href="student">查询学生</a> <a
								class="dropdown-item" href="student">添加学生</a>
						</div></li>

					<li class="nav-item"><a class="nav-link" href="study">
							<i class="fas fa-cog"></i> 学习区
					</a></li>
					<li class="nav-item dropdown"><a
						class="nav-link dropdown-toggle" href="info" id="navbarDropdown"
						role="button" data-toggle="dropdown" aria-haspopup="true"
						aria-expanded="false"> <i
							class="far fa-user"></i> <span> 个人信息 <i
								class="fas fa-angle-down"></i>
						</span>
					</a>
						<div class="dropdown-menu" aria-labelledby="navbarDropdown">
							<a class="dropdown-item" href="#">查看信息</a> <a
								class="dropdown-item" href="#">修改信息</a> 
						</div></li>
				</ul>
				<ul class="navbar-nav">
                        <li class="nav-item">
                        		<a class="nav-link d-block" href="login">
                        		<c:if test="${sessionScope.user.uId eq 0}">
                        			<b>您好，管理员！</b></br>
                        		</c:if>
                        		<c:if test="${sessionScope.user.uLevel eq 1}">
                        			<b>您好，教师${sessionScope.user.uId }！</b></br>
                        		</c:if>
                        		<c:if test="${sessionScope.user.uLevel eq 2}">
                        			<b>您好，学生${sessionScope.user.uId }！</b></br>
                        		</c:if>
                        		<c:if test="${sessionScope.user.uId eq  null}">
                        			<b>您好，请登录！</b></br>
                        		</c:if>
                            </a>
                        </li>
             </ul>
			</div>
		</div>
		</nav>
    
    <div class="container mt-5">
      <div class="row tm-content-row">
        <div class="col-sm-12 col-md-12 col-lg-8 col-xl-8 tm-block-col">
          <div class="tm-bg-primary-dark tm-block tm-block-products">
          <h2 class="tm-block-title">教师信息</h2>
            <div class="tm-product-table-container">
              <table class="table table-hover tm-table-small tm-product-table" >
                <thead>
                  <tr>
                    <th scope="col">&nbsp;</th>
                    <th scope="col">序号</th>
                    <th scope="col">所属院系</th>
                    <th scope="col">教师姓名</th>
                    <th scope="col">入职日期</th>
                    <th scope="col">&nbsp;</th>
                  </tr>
                </thead>
                <tbody>
                
                 <tr>
                    <th scope="row"><input type="checkbox" /></th>
                    <td class="tm-product-name">01</td>
                    <td>软件学院</td>
                    <td>陈平安</td>
                    <td>2015/03/03</td>
                    <td>
                      <a href="#" class="tm-product-delete-link" onclick="return delete_sure()">
                        <i class="far fa-trash-alt tm-product-delete-icon"></i>
                      </a>
                    </td>
                  </tr>
                  <tr>
                    <th scope="row"><input type="checkbox" /></th>
                    <td class="tm-product-name">02</td>
                    <td>计算机通信学院</td>
                    <td>张三丰</td>
                    <td>2019/03/03</td>
                    <td>
                      <a href="#" class="tm-product-delete-link" onclick="return delete_sure()">
                        <i class="far fa-trash-alt tm-product-delete-icon"></i>
                      </a>
                    </td>
                  </tr>
                  
                </tbody>

              </table>
            </div>
            <!-- table container -->
            <a
              href="add-product.html"
              class="btn btn-primary btn-block text-uppercase mb-3">添加教师</a>
            <button class="btn btn-primary btn-block text-uppercase">
             	批量删除
            </button>
          </div>
        </div>
        
        
        
        
        <!-- 右侧 -->
        <div class="col-sm-12 col-md-12 col-lg-4 col-xl-4 tm-block-col">
          <div class="tm-bg-primary-dark tm-block tm-block-product-categories">
            <h2 class="tm-block-title">院系名称</h2>
            <div class="tm-product-table-container">
              <table class="table tm-table-small tm-product-table">
                <tbody>
                <tr>
                    <td class="tm-product-name">计算机通信学院</td>
                    <td class="text-center">
                      <a href="#" class="tm-product-delete-link">
                        <i class="far fa-trash-alt tm-product-delete-icon" onclick="return delete_sure()"></i>
                      </a>
                    </td>
                  </tr>
                  <tr>
                    <td class="tm-product-name">软件学院</td>
                    <td class="text-center">
                      <a href="#" class="tm-product-delete-link">
                        <i class="far fa-trash-alt tm-product-delete-icon" onclick="return delete_sure()"></i>
                      </a>
                    </td>
                  </tr>
                  <tr>
                    <td class="tm-product-name">物理学院</td>
                    <td class="text-center">
                      <a href="#" class="tm-product-delete-link">
                        <i class="far fa-trash-alt tm-product-delete-icon" onclick="return delete_sure()"></i>
                      </a>
                    </td>
                  </tr>
                  <tr>
                    <td class="tm-product-name">数学学院</td>
                    <td class="text-center">
                      <a href="#" class="tm-product-delete-link">
                        <i class="far fa-trash-alt tm-product-delete-icon" onclick="return delete_sure()"></i>
                      </a>
                    </td>
                  </tr>
                  <tr>
                    <td class="tm-product-name">烟草学院</td>
                    <td class="text-center">
                      <a href="#" class="tm-product-delete-link">
                        <i class="far fa-trash-alt tm-product-delete-icon" onclick="return delete_sure()"></i>
                      </a>
                    </td>
                  </tr>
                </tbody>
              </table>
            </div>
            <!-- table container -->
            <button class="btn btn-primary btn-block text-uppercase mb-3">
            		  添加学院
            </button>
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
    <!-- https://jquery.com/download/ -->
    <script src="js/bootstrap.min.js"></script>
    <!-- https://getbootstrap.com/ -->
    <script language="JavaScript">
      $(function() {
        $(".tm-product-name").on("click", function() {
          window.location.href = "edit-product.html";
        });
      });
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