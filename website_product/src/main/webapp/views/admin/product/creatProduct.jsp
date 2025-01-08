<%--
  Created by IntelliJ IDEA.
  User: hoang
  Date: 1/7/2025
  Time: 3:49 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="en">
<head>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Quản Lý Product</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" />
    <style>
        #previewImage {
            max-width: 100%;
            max-height: 200px;
            border: 1px solid #ccc;
            padding: 5px;
            border-radius: 8px;
        }
        .info input {
            width: 40%; /* Chia đều 40% cho mỗi ô */
        }

        .info button {
            width: auto;
        }

        .info {
            display: flex; /* Sử dụng Flexbox để căn chỉnh */
            gap: 8px; /* Khoảng cách giữa các phần tử */
            margin-bottom: 8px; /* Khoảng cách giữa các dòng */
        }
    </style>
    <link href="../../../resources/css/admin/styles.css" rel="stylesheet" />
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
</head>

<body class="sb-nav-fixed">
<!-- <jsp:include page="../layout/header.jsp" /> -->

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
    </ul>
</nav>
<div id="layoutSidenav">
    <!-- <jsp:include page="../layout/sidebar.jsp" /> -->

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

                    <a class="nav-link" href="../user/show.html">
                        <div class="sb-nav-link-icon"><i class="fa-solid fa-users"></i></div>
                        QUẢN LÝ USERS
                    </a>

                    <a class="nav-link" href="../admin/product">
                        <div class="sb-nav-link-icon"><i class="fa-solid fa-list"></i></div>
                        QUẢN LÝ PRODUCT
                    </a>
                    <a class="nav-link" href="../admin/orders">
                        <div class="sb-nav-link-icon"><i class="fa-solid fa-list"></i></div>
                        DANH SÁCH HÓA ĐƠN
                    </a>
                </div>
            </div>
        </nav>
    </div>

    <div id="layoutSidenav_content">
        <main>
            <div class="toast-container position-fixed top-0 end-0 p-3">
                <div id="successToast" class="toast" role="alert" aria-live="assertive" aria-atomic="true">
                    <div class="toast-header">
                        <strong class="me-auto">Thông báo</strong>
                        <button type="button" class="btn-close" data-bs-dismiss="toast" aria-label="Close"></button>
                    </div>
                    <div class="toast-body">
                        Tạo mới sản phẩm thành công!
                    </div>
                </div>
            </div>
            <div class="container-fluid px-4">
                <h1 class="mt-4">QUẢN LÝ PRODUCT</h1>
                <ol class="breadcrumb mb-4">
                    <li class="breadcrumb-item"><a href="../dashboard/dashboard.html">TRANG CHỦ</a></li>
                    <li class="breadcrumb-item active">PRODUCT</li>
                </ol>


                <html>
                <head>
                    <title></title>
                    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet"
                          integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
                </head>
                <body>
                <form method="post">
                    <div class="mb-3">
                        <label for="name" class="form-label">Tên sản phẩm</label>
                        <input type="text" class="form-control" id="name" name="name" required>
                    </div>

                    <div class="mb-3">
                        <label for="description" class="form-label">Mô tả</label>
                        <textarea class="form-control" id="description" name="description" required></textarea>
                    </div>

                    <div class="mb-3">
                        <label for="price" class="form-label">Giá sản phẩm</label>
                        <input type="number" class="form-control" id="price" name="price" required>
                    </div>

                    <div class="mb-3">
                        <label for="stock" class="form-label">Số lượng</label>
                        <input type="number" class="form-control" id="stock" name="stock" required>
                    </div>

                    <div class="mb-3">
                        <label for="image" class="form-label">Hình ảnh</label>
                        <input type="file" class="form-control" id="image" name="image" accept="image/*">
                        <!-- Khu vực hiển thị ảnh sau khi chọn -->
                        <div class="mt-2">
                            <img id="previewImage" src="#" alt="Image Preview" style="max-width: 200px; display: none;">
                        </div>
                    </div>

                    <div class="mb-3">
                        <label for="category_id" class="form-label">Danh mục</label>
                        <input type="number" class="form-control" id="category_id" name="category_id" required>
                    </div>

                    <div class="text-center">
                        <button type="submit" class="btn btn-primary">Thêm sản phẩm</button>
                    </div>
                </form>


                </body>
                <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"
                        integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM"
                        crossorigin="anonymous"></script>
                </html>
            </div>
            <!-- Modal -->


            <!-- Toast thông báo thành công -->

        </main>
        <!-- <jsp:include page="../layout/footer.jsp" /> -->

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
<script src="../../../resources/js/scripts.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.8.0/Chart.min.js"
        crossorigin="anonymous"></script>

<script src="https://cdn.jsdelivr.net/npm/simple-datatables@7.1.2/dist/umd/simple-datatables.min.js"
        crossorigin="anonymous"></script>
<script src="../../../resources/js/datatables-simple-demo.js"></script>


<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
<script>
    (function () {
        // Thêm thông tin chi tiết
        $(document).on("click", "#btn-add-info", function () {
            var num = $(".info").length + 1;
            $(".div-info").append(
                `<div class="info" id="info-${num}">
                        <input type="textarea" class="form-control" name="name_info[]"  />
                        <input type="textarea" class="form-control" name="text_info[]"  />
                        <button type="button" class="btn btn-danger btn-sm btn-delete-info" data-num="${num}">Xóa</button>
                    </div>`
            );
        });

        // Xóa thông tin chi tiết
        $(document).on("click", ".btn-delete-info", function () {
            var num = $(this).attr("data-num");
            $(`#info-${num}`).remove();
        });

        // Sửa thông tin chi tiết
        $(document).on("click", ".btn-edit-info", function () {
            var num = $(this).attr("data-num");
            var row = $(`#info-${num}`);
            var inputs = row.find("input");

            // Kiểm tra trạng thái chỉnh sửa
            if ($(this).text() === "Sửa") {
                inputs.prop("disabled", false); // Bật chế độ chỉnh sửa
                $(this).removeClass("btn-warning").addClass("btn-success").text("Lưu");
            } else {
                inputs.prop("disabled", true); // Tắt chế độ chỉnh sửa
                $(this).removeClass("btn-success").addClass("btn-warning").text("Sửa");
            }
        });
    })();
</script>
<script>
    document.getElementById("image").addEventListener("change", function (event) {
        const file = event.target.files[0]; // Lấy file người dùng chọn
        const previewImage = document.getElementById("previewImage");

        if (file) {
            const reader = new FileReader();

            // Khi file được load, set src cho thẻ <img>
            reader.onload = function (e) {
                previewImage.src = e.target.result;
                previewImage.style.display = "block"; // Hiển thị ảnh
            };

            reader.readAsDataURL(file); // Đọc file dưới dạng URL
        } else {
            previewImage.src = "#";
            previewImage.style.display = "none"; // Ẩn ảnh nếu không chọn file
        }
    });
</script>
<script>
    document.getElementById("submit-btn").addEventListener("click", function () {
        // Hiển thị toast thông báo thành công
        const toast = new bootstrap.Toast(document.getElementById("successToast")); // Lấy toast theo ID
        toast.show();

        // Sau 2 giây, chuyển hướng về trang product.html
        setTimeout(function () {
            window.location.href = "../product/product.html";
        }, 2000);
    });
</script>

</body>

</html>






























<%--<html>--%>
<%--<head>--%>
<%--    <title>Title</title>--%>
<%--</head>--%>
<%--<body>--%>
<%--<form method="post">--%>
<%--    <div class="mb-3">--%>
<%--        <label for="name" class="form-label">Tên sản phẩm</label>--%>
<%--        <input type="text" class="form-control" id="name" name="name" required>--%>
<%--    </div>--%>

<%--    <div class="mb-3">--%>
<%--        <label for="description" class="form-label">Mô tả</label>--%>
<%--        <textarea class="form-control" id="description" name="description" required></textarea>--%>
<%--    </div>--%>

<%--    <div class="mb-3">--%>
<%--        <label for="price" class="form-label">Giá sản phẩm</label>--%>
<%--        <input type="number" class="form-control" id="price" name="price" required>--%>
<%--    </div>--%>

<%--    <div class="mb-3">--%>
<%--        <label for="stock" class="form-label">Số lượng</label>--%>
<%--        <input type="number" class="form-control" id="stock" name="stock" required>--%>
<%--    </div>--%>

<%--    <div class="mb-3">--%>
<%--        <label for="image" class="form-label">Hình ảnh</label>--%>
<%--        <input type="file" class="form-control" id="image" name="image" accept="image/*">--%>
<%--    </div>--%>

<%--    <div class="mb-3">--%>
<%--        <label for="category_id" class="form-label">Danh mục</label>--%>
<%--        <input type="number" class="form-control" id="category_id" name="category_id" required>--%>
<%--    </div>--%>

<%--    <div class="text-center">--%>
<%--        <button type="submit" class="btn btn-primary">Thêm sản phẩm</button>--%>
<%--    </div>--%>
<%--</form>--%>

<%--</body>--%>
<%--</html>--%>
