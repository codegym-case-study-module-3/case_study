
<%--
  Created by IntelliJ IDEA.
  User: hoang
  Date: 1/8/2025
  Time: 4:09 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%--
  Created by IntelliJ IDEA.
  User: hoang
  Date: 1/7/2025
  Time: 11:16 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<html lang="en">

<head>
  <meta charset="utf-8"/>
  <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no"/>
  <meta name="description" content="GEAR.VN"/>
  <meta name="author" content="GEAR.VN"/>
  <title>Dashboard PRODUCT</title>
  <link href="/resources/css/admin/styles.css" rel="stylesheet"/>

  <script src="https://use.fontawesome.com/releases/v6.3.0/js/all.js" crossorigin="anonymous"></script>
</head>

<body class="sb-nav-fixed">
<%--<!-- <jsp:include page="../layout/header.jsp" /> -->--%>

<nav class="sb-topnav navbar navbar-expand navbar-dark bg-dark">
  <!-- Navbar Brand-->
  <a class="navbar-brand ps-3" href="${pageContext.request.contextPath}/admin/">GEAR.VN</a>
  <!-- Sidebar Toggle-->
  <button class="btn btn-link btn-sm order-1 order-lg-0 me-4 me-lg-0" id="sidebarToggle" href="#!">
    <i class="fas fa-bars"></i>
  </button>
  <!-- Navbar Search-->
  <form class="d-none d-md-inline-block form-inline ms-auto me-0 me-md-3 my-2 my-md-0">
    <span style="color: white;">Welcome, USERNAME </span>
    <!-- <div class="input-group">
<input class="form-control" type="text" placeholder="Search for..." aria-label="Search for..."
aria-describedby="btnNavbarSearch" />
<button class="btn btn-primary" id="btnNavbarSearch" type="button"><i
class="fas fa-search"></i></button>
</div> -->
  </form>
  <!-- Navbar-->
  <ul class="navbar-nav ms-auto ms-md-0 me-3 me-lg-4">
    <li class="nav-item dropdown">
      <a class="nav-link dropdown-toggle" id="navbarDropdown" href="#" role="button"
         data-bs-toggle="dropdown" aria-expanded="false"><i class="fas fa-user fa-fw"></i></a>
      <ul class="dropdown-menu dropdown-menu-end" aria-labelledby="navbarDropdown">
        <li><a class="dropdown-item" href="#!">Settings</a></li>


        <li>
          <hr class="dropdown-divider"/>
        </li>
        <li><a class="dropdown-item" href="?action=login">Logout</a></li>
      </ul>
    </li>

    <li>
      <hr class="dropdown-divider"/>
    </li>
    <li><a class="dropdown-item" href="../login/login.html">Logout</a></li>
  </ul>
  </li>

  </ul>
</nav>
<div id="layoutSidenav">
  <jsp:include page="../layout/header.jsp"/>

  <div id="layoutSidenav_nav">
    <jsp:include page="../layout/sidebar.jsp"/>
  </div>

  <div id="layoutSidenav_content">
    <main>
      <div class="container-fluid px-4">
        <h1 class="mt-4">QUẢN LÝ ODER</h1>
        <ol class="breadcrumb mb-4">
          <li class="breadcrumb-item"><a href="${pageContext.request.contextPath}/admin">TRANG CHỦ</a></li>
          <li class="breadcrumb-item active">ODER</li>
        </ol>

        <button class="btn btn-primary" onclick="window.location.href='/admin/product?action=create'"
        >Thêm mới
        </button>
        <div class="card mb-4">
          <div class="card-header">
            <i class="fas fa-table me-1"></i>
            Danh sách sản phẩm
          </div>
          <div class="card-body">
            <table id="datatablesSimple">

                <thead>
                <tr>
                  <th>ID</th>
                  <th>Mã người dùng</th>
                  <th>Trạng thái</th>
                  <th>Tổng tiền</th>
                  <th>Ngày tạo</th>
                  <th>Hành động</th>
                </tr>
                </thead>
                <tbody>
                <c:forEach var="order" items="${orders}">
                  <tr>
                    <td>${order.id}</td>
                    <td>${order.userId}</td>
                    <td>${order.status}</td>
                    <td>${order.price}</td>
                    <td>${order.createdAt}</td>
                    <td>
                      <a href="/admin/orders?action=edit&id=${order.id}">Cập nhật</a>
                    </td>
                  </tr>
                </c:forEach>
                </tbody>
            </table>

          </div>

          </table>
        </div>
      </div>
    </main>
    <!-- <jsp:include page="../layout/footer.jsp" /> -->
  </div>
  <!-- Modal -->







</div>
</div>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz"
        crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.8.0/Chart.min.js"
        crossorigin="anonymous"></script>

<script src="https://cdn.jsdelivr.net/npm/simple-datatables@7.1.2/dist/umd/simple-datatables.min.js"
        crossorigin="anonymous"></script>

<script src="/resources/js/datatables-simple-demo.js"></script>
<script>

  document.getElementById('createUserForm').addEventListener('submit', function (event) {
    event.preventDefault();
    var successToast = new bootstrap.Toast(document.getElementById('successToast'));
    successToast.show();
    var modal = bootstrap.Modal.getInstance(document.getElementById('createUserModal'));
    modal.hide();
  });
  setTimeout(function () {
    document.getElementById("successToast").remove();
  }, 3000)
</script>

<script src="../../../resources/js/scripts.js"></script>
<script src="../../../resources/js/datatables-simple-demo.js"></script>

</body>

</html>
<html>
<head>
  <title>Danh sách học sinh</title>
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
</head>
<body>
<button type="button" class="btn btn-secondary" onclick="window.location.href='../product/creatProduct.html'">
  Thêm sản phẩm
</button>
<html>
<head>
  <title>Danh sách học sinh</title>
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
</head>
<body>


</body>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM"
        crossorigin="anonymous"></script>
<script>
  setTimeout(function () {
    document.getElementById("message").remove();
  }, 3000)
</script>
</html>
</div>
<!-- Modal -->


<!-- Toast thông báo thành công -->

</main>
<%--    <!-- <jsp:include page="../layout/footer.jsp" /> -->--%>

<footer class="py-4 bg-light mt-auto">
  <div class="container-fluid px-4">
    <div class="d-flex align-items-center justify-content-between small">
      <div class="text-muted">Copyright &copy; CODEGYM.VN</div>
    </div>
  </div>
</footer>

</div>
</div>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz"
        crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.8.0/Chart.min.js"
        crossorigin="anonymous"></script>

<script src="https://cdn.jsdelivr.net/npm/simple-datatables@7.1.2/dist/umd/simple-datatables.min.js"
        crossorigin="anonymous"></script>

<script src="/resources/js/datatables-simple-demo.js"></script>
<script>

  document.getElementById('createUserForm').addEventListener('submit', function (event) {
    event.preventDefault();
    var successToast = new bootstrap.Toast(document.getElementById('successToast'));
    successToast.show();
    var modal = bootstrap.Modal.getInstance(document.getElementById('createUserModal'));
    modal.hide();
  });
  setTimeout(function () {
    document.getElementById("successToast").remove();
  }, 3000)
</script>

<script src="../../resources/js/scripts.js"></script>
<script src="../../resources/js/datatables-simple-demo.js"></script>
</body>
</html>

<html>
<head>
    <title>Title</title>
</head>
<body>
<table border="1">
  <thead>
  <tr>
    <th>ID</th>
    <th>User ID</th>
    <th>Trạng thái</th>
    <th>Tổng tiền</th>
    <th>Ngày tạo</th>
    <th>Hành động</th>
  </tr>
  </thead>
  <tbody>
  <c:forEach var="order" items="${orders}">
    <tr>
      <td>${order.id}</td>
      <td>${order.userId}</td>
      <td>${order.status}</td>
      <td>${order.price}</td>
      <td>${order.createdAt}</td>
      <td>
        <a href="/admin/orders?action=edit&id=${order.id}">Cập nhật</a>
      </td>
    </tr>
  </c:forEach>
  </tbody>
</table>

</body>
</html>
