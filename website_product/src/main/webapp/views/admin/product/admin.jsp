<%--
  Created by IntelliJ IDEA.
  User: hoang
  Date: 1/7/2025
  Time: 11:16 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html lang="en">

<head>
    <meta charset="utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
    <meta name="description" content="GEAR.VN" />
    <meta name="author" content="GEAR.VN" />
    <title>Dashboard PRODUCT</title>
    <link href="/resources/css/admin/styles.css" rel="stylesheet" />

    <script src="https://use.fontawesome.com/releases/v6.3.0/js/all.js" crossorigin="anonymous"></script>
</head>

<body class="sb-nav-fixed">
<%--<!-- <jsp:include page="../layout/header.jsp" /> -->--%>

<nav class="sb-topnav navbar navbar-expand navbar-dark bg-dark">
    <!-- Navbar Brand-->
    <a class="navbar-brand ps-3" href="../dashboard/dashboard.html">GEAR.VN</a>
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
                    <hr class="dropdown-divider" />
                </li>
                <li><a class="dropdown-item" href="?action=login">Logout</a></li>
            </ul>
        </li>

        <li>
            <hr class="dropdown-divider" />
        </li>
        <li><a class="dropdown-item" href="../login/login.html">Logout</a></li>
    </ul>
    </li>

    </ul>
</nav>
<div id="layoutSidenav">
<%--    <!-- <jsp:include page="../layout/sidebar.jsp" /> -->--%>

    <div id="layoutSidenav_nav">
        <nav class="sb-sidenav accordion sb-sidenav-dark" id="sidenavAccordion">
            <div class="sb-sidenav-menu">
                <div class="nav">
                    <div class="sb-sidenav-menu-heading">Features</div>
                    <a class="nav-link" href="../dashboard/dashboard.html">
                        <div class="sb-nav-link-icon"><i class="fa-solid fa-house-laptop"></i></div>
                        TRANG CHỦ
                    </a>


                    <a class="nav-link" href="../account/account.html">
                        <div class="sb-nav-link-icon"><i class="fa-solid fa-user"></i></div>
                        QUẢN LÝ ACCOUNT
                    </a>

                    <a class="nav-link" href="../account/myaccount.html">
                        <div class="sb-nav-link-icon"><i class="fa-solid fa-gears"></i></div>
                        MY ACCOUNT
                    </a>

                    <a class="nav-link" href="../account/account.html">
                        <div class="sb-nav-link-icon"><i class="fa-solid fa-user"></i></div>
                        QUẢN LÝ ACCOUNT
                    </a>


                    <a class="nav-link" href="../user/show.html">
                        <div class="sb-nav-link-icon"><i class="fa-solid fa-users"></i></div>
                        QUẢN LÝ USERS
                    </a>

                    <a class="nav-link" href="../product/product.html">
                        <div class="sb-nav-link-icon"><i class="fa-solid fa-list"></i></div>
                        QUẢN LÝ PRODUCT
                    </a>
                    <a class="nav-link" href="../orders/orders.html">
                        <div class="sb-nav-link-icon"><i class="fa-solid fa-list"></i></div>
                        DANH SÁCH HÓA ĐƠN
                    </a>
                </div>
            </div>
        </nav>
    </div>

    <div id="layoutSidenav_content">
        <main>
            <div class="container-fluid px-4">
                <h1 class="mt-4">QUẢN LÝ PRODUCT</h1>
                <ol class="breadcrumb mb-4">
                    <li class="breadcrumb-item"><a href="../dashboard/dashboard.html">TRANG CHỦ</a></li>
                    <li class="breadcrumb-item active">PRODUCT</li>
                </ol>

                <button type="button" class="btn btn-secondary" onclick="window.location.href='../product/creatProduct.html'">
                    Thêm sản phẩm
                </button>
                <div class="card mb-4">
                    <div class="card-header">
                        <i class="fas fa-table me-1"></i>
                        DataTable
                    </div>
                    <div class="card-body">
                        <table id="datatablesSimple">
                            <thead>
                            <tr>
                                <th>STT</th>
                                <th>Tên sản phẩm</th>
                                <th>Thông số kỹ thuật</th>
                                <th>Giá</th>
                                <th>Tồn kho</th>
                                <th>Hình ảnh</th>
                                <th>Danh mục sản phẩm</th>
                                <th>Ngày tạo</th>
                                <th colspan="2">Chức năng</th>
                            </tr>
                            </thead>
                            <tfoot>
                            <tr>
                                <th>STT</th>
                                <th>Tên</th>
                                <th>Thông số kỹ thuật</th>
                                <th>Giá</th>
                                <th>Tồn kho</th>
                                <th>image</th>
                                <th>Mã danh mục</th>
                                <th>Ngày tạo</th>
                                <th colspan="2">Chức năng</th>

                            </tr>
                            </tfoot>
                            <tbody>


                            <tr>
                                <td>1</td>
                                <td>Laptop Lenovo V14 G4 IRU 83A000BHVN</td>
                                <td></td>
                                <td>13790000.00</td>
                                <td>30</td>
                                <td>

                                    <img src="../../../resources/images/20241230205000.png" height="100" width="100"/></td>
                                <td>1</td>
                                <td>2024-12-30 13:50:31</td>
                                <td><button type="button" class="btn btn-secondary">Sửa</button>
                                    <button type="button" class="btn btn-secondary">Xóa</button>
                                </td>
                            </tr>
                            <tr>
                                <td>2</td>
                                <td>Laptop Acer Aspire 3 A315 58 54M5</td>
                                <td></td>
                                <td>8,490,000.00</td>
                                <td>20</td>
                                <td>                  <img src="../../../resources/images/20241230205000.png" height="100" width="100"/></td>
                                </td>
                                <td>1</td>
                                <td>2025-01-03 12:06:03</td>
                                <td>
                                    <button type="button" class="btn btn-secondary">Sửa</button>
                                    <button type="button" class="btn btn-secondary">Xóa</button>
                                </td>
                            </tr>
                            <tr>
                                <td>3</td>
                                <td>Laptop gaming ASUS TUF Gaming F15 FX507VU</td>
                                <td></td>
                                <td>25,790,000.00</td>
                                <td>20</td>
                                <td><img src="resources/images/20250103194300.png" alt="Laptop ASUS TUF Gaming"></td>
                                <td>1</td>
                                <td>2025-01-03 12:42:40</td>
                                <td>
                                    <button type="button" class="btn btn-secondary">Sửa</button>
                                    <button type="button" class="btn btn-secondary">Xóa</button>
                                </td>
                            </tr>
                            <tr>
                                <td>4</td>
                                <td>Laptop gaming Lenovo LOQ 15IAx9 83GS00 15VN</td>
                                <td></td>
                                <td>16,990,000.00</td>
                                <td>30</td>
                                <td><img src="resources/images/20250103194400.png" alt="Laptop Lenovo LOQ" style="width: 100px;"></td>
                                <td>1</td>
                                <td>2025-01-03 12:44:29</td>
                                <td>
                                    <button type="button" class="btn btn-secondary">Sửa</button>
                                    <button type="button" class="btn btn-secondary">Xóa</button>
                                </td>
                            </tr>
                            <tr>
                                <td>5</td>
                                <td>Laptop gaming MSI Katana 15 B13VEK 252VN</td>
                                <td></td>
                                <td>28,990,000.00</td>
                                <td>20</td>
                                <td><img src="../../../resources/images/20250103194500.png" alt="Laptop MSI Katana" style="width: 100px;"></td>
                                <td>1</td>
                                <td>2025-01-03 12:46:14</td>
                                <td>
                                    <button type="button" class="btn btn-secondary">Sửa</button>
                                    <button type="button" class="btn btn-secondary">Xóa</button>
                                </td>
                            </tr>
                            <tr>
                                <td>6</td>
                                <td>Laptop Gaming Acer Nitro 5 AN515 45 R6EV</td>
                                <td></td>
                                <td>13,990,000.00</td>
                                <td>10</td>
                                <td><img src="resources/images/20250103194600.png" alt="Laptop Acer Nitro 5 R6EV" style="width: 100px;"></td>
                                <td>1</td>
                                <td>2025-01-03 12:46:39</td>
                                <td>
                                    <button type="button" class="btn btn-secondary">Sửa</button>
                                    <button type="button" class="btn btn-secondary">Xóa</button>
                                </td>
                            </tr>
                            <tr>
                                <td>7</td>
                                <td>Laptop gaming Acer Nitro 5 AN515 46 R6QR</td>
                                <td></td>
                                <td>20,990,000.00</td>
                                <td>15</td>
                                <td><img src="resources/images/20250103194700.png" alt="Laptop Acer Nitro 5 R6QR" style="width: 100px;"></td>
                                <td>1</td>
                                <td>2025-01-03 12:48:03</td>
                                <td>
                                    <button type="button" class="btn btn-secondary">Sửa</button>
                                    <button type="button" class="btn btn-secondary">Xóa</button>
                                </td>
                            </tr>
                            <tr>
                                <td>8</td>
                                <td>Laptop gaming MSI Katana 15 B13VKF 676VN</td>
                                <td></td>
                                <td>27,990,000.00</td>
                                <td>24</td>
                                <td><img src="resources/images/20250103194800.png" alt="Laptop MSI Katana 15" style="width: 100px;"></td>
                                <td>1</td>
                                <td>2025-01-03 12:48:58</td>
                                <td>
                                    <button type="button" class="btn btn-secondary">Sửa</button>
                                    <button type="button" class="btn btn-secondary">Xóa</button>
                                </td>
                            </tr>
                            <tr>
                                <td>9</td>
                                <td>Laptop gaming Thin 15 B13UC 2044VN</td>
                                <td></td>
                                <td>19,490,000.00</td>
                                <td>31</td>
                                <td><img src="resources/images/20250103194900.png" alt="Laptop Gaming Thin 15" style="width: 100px;"></td>
                                <td>1</td>
                                <td>2025-01-03 12:49:44</td>
                                <td>
                                    <button type="button" class="btn btn-secondary">Sửa</button>
                                    <button type="button" class="btn btn-secondary">Xóa</button>
                                </td>
                            </tr>
                            <tr>
                                <td>10</td>
                                <td>Laptop Lenovo V14 G4 IRU 83A000TVN</td>
                                <td></td>
                                <td>9,990,000.00</td>
                                <td>12</td>
                                <td><img src="resources/images/20250103195000.png" alt="Laptop Lenovo V14 G4 IRU" style="width: 100px;"></td>
                                <td>1</td>
                                <td>2025-01-03 12:50:32</td>
                                <td>
                                    <button type="button" class="btn btn-secondary">Sửa</button>
                                    <button type="button" class="btn btn-secondary">Xóa</button>
                                </td>
                            </tr>
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
            <!-- Modal -->


            <!-- Toast thông báo thành công -->
            <div class="toast-container position-fixed top-0 end-0 p-3">
                <div id="successToast" class="toast" role="alert" aria-live="assertive" aria-atomic="true">
                    <div class="toast-header">
                        <strong class="me-auto">Thông báo</strong>
                        <button type="button" class="btn-close" data-bs-dismiss="toast" aria-label="Close"></button>
                    </div>
                    <div class="toast-body">
                        Tạo mới account thành công!
                    </div>
                </div>
            </div>
        </main>
<%--        <!-- <jsp:include page="../layout/footer.jsp" /> -->--%>

        <footer class="py-4 bg-light mt-auto">
            <div class="container-fluid px-4">
                <div class="d-flex align-items-center justify-content-between small">
                    <div class="text-muted">Copyright &copy; CODEGYM.VN</div>
                </div>
            </div>
        </footer>

    </div>
</div>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.8.0/Chart.min.js"
        crossorigin="anonymous"></script>

<script src="https://cdn.jsdelivr.net/npm/simple-datatables@7.1.2/dist/umd/simple-datatables.min.js"
        crossorigin="anonymous"></script>

<script src="/resources/js/datatables-simple-demo.js"></script>
<script>

    document.getElementById('createUserForm').addEventListener('submit', function(event) {
        event.preventDefault();
        var successToast = new bootstrap.Toast(document.getElementById('successToast'));
        successToast.show();
        var modal = bootstrap.Modal.getInstance(document.getElementById('createUserModal'));
        modal.hide();
    });
    setTimeout(function () {
        document.getElementById("successToast").remove();
    },3000)
</script>
=======
<script src="../../../resources/js/scripts.js"></script>
<script src="../../../resources/js/datatables-simple-demo.js"></script>
>>>>>>> 0a95e261f6e1ca7c59ebd3427ee49725d79f741e
</body>

</html>
<html>
<head>
    <title>Danh sách học sinh</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
</head>
<body>

<div class="container">
    <button class="btn btn-primary" onclick="window.location.href='/admin/product?action=create'"
    >Thêm mới</button>

    <table class="table table-hover">

        <thead>
        <tr>
            <th>STT</th>
            <th>Tên</th>
            <th>description</th>
            <th>price</th>
            <th>stock</th>
            <th>image</th>
            <th>category_id</th>
            <th>created_at</th>
            <th colspan="2">Chức năng</th>
        </tr>
        </thead>
        <tbody>
        <c:forEach items="${products}" var="product" varStatus="temp">
            <tr>
                <td>${temp.count}</td>
                <td>${product.name}</td>
                <td>${product.description}</td>
                <td>${product.price}</td>
                <td>${product.quantity}</td>
                <td>${product.image}</td>
                <td>${product.categoryId}</td>
                <td>${product.created_at}</td>
                <td>
                    <button class="btn btn-warning"
                            onclick="window.location.href='/product?action=update&id=${product.id}'">Sửa</button>

                </td>
                <td>
                    <button class="btn btn-danger"
                            data-bs-toggle="modal" data-bs-target="#modalDelete${product.id}">
                        Xóa
                    </button>
                </td>
                <div class="modal fade" id="modalDelete${product.id}" tabindex="-1"
                     aria-labelledby="exampleModalLabel" aria-hidden="true">
                    <div class="modal-dialog">
                        <div class="modal-content">
                            <div class="modal-header">
                                <h5 class="modal-title" id="exampleModalLabel">Xóa </h5>
                                <button type="button" class="btn-close" data-bs-dismiss="modal"
                                        aria-label="Close"></button>
                            </div>
                            <div class="modal-body">
                                <p>Bạn có chắc muốn xóa học sinh có tên là ${product.name} và id là ${product.id}?</p>
                                <small style="color: red; font-style: italic">Lưu ý hành động này không thể hoàn
                                    tác!</small>
                            </div>
                            <div class="modal-footer">
                                <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Đóng</button>
                                <button type="button" class="btn btn-danger"
                                        onclick="window.location.href='/product?action=delete&id=${product.id}'">Xác
                                    nhận
                                </button>
                            </div>
                        </div>
                    </div>
                </div>
            </tr>
        </c:forEach>
        </tbody>
    </table>
    <c:if test="${message != null}">
        <div class="alert alert-success" role="alert" id="message">
                ${message}
        </div>
    </c:if>
</div>

</body>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM"
        crossorigin="anonymous"></script>
<script>
    setTimeout(function () {
        document.getElementById("message").remove();
    },3000)
</script>
</html>
