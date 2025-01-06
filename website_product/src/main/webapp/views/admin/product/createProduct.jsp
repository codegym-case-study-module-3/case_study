<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
    <title>Quản Lý Product</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet"/>
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
    <link href="../../../resources/css/admin/styles.css" rel="stylesheet"/>
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
</head>

<body class="sb-nav-fixed">
<jsp:include page="../layout/header.jsp"/>

<div id="layoutSidenav">
    <jsp:include page="../layout/sidebar.jsp"/>

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
                    <li class="breadcrumb-item"><a href="${pageContext.request.contextPath}/admin">TRANG CHỦ</a></li>
                    <li class="breadcrumb-item active">PRODUCT</li>
                </ol>
                <div class="container">
                    <form method="post">
                        <div class="mb-3">
                            <label for="name" class="form-label">Tên sản phẩm </label>
                            <input type="text" class="form-control" id="name" name="name">
                        </div>

                        <div class="mb-3">
                            <label for="price" class="form-label"> Giá sản phẩm</label>
                            <input type="number" class="form-control" id="price" name="price">
                        </div>
                        <div class="mb-3">
                            <label for="stock" class="form-label">Số lượng </label>
                            <input type="text" class="form-control" id="stock" name="stock">
                        </div>
                        <div class="mb-3">
                            <label for="image" class="form-label">Hình ảnh</label>
                            <input type="file" class="form-control" id="image" name="image" accept="image/*">
                            <!-- Khu vực hiển thị ảnh sau khi chọn -->
                            <div class="mt-2">
                                <img id="previewImage" src="#" alt="Image Preview"
                                     style="max-width: 200px; display: none;">
                            </div>
                        </div>
                        <div class="mb-3">
                            <label for="category_id" class="form-label">Danh mục sản phẩm</label>
                            <select class="form-select" id="category_id" name="category_id">
                                <option value="" selected disabled>Chọn một danh mục</option>
                                <option value="1">Danh mục 1</option>
                                <option value="2">Danh mục 2</option>
                                <option value="3">Danh mục 3</option>
                                <option value="4">Danh mục 4</option>
                            </select>
                            <!-- Khu vực hiển thị danh mục đã chọn -->
                            <div class="mt-2">
                                <span id="selectedCategory" class="badge bg-info text-dark" style="display: none;">Bạn đã chọn: </span>
                            </div>
                        </div>

                        <div class="mb-3">
                            <div class="row mb-3">
                                <label class="col-sm-2 col-6 form-label">Thông số kỹ thuật</label>

                                <div class="col-sm-4 col-6">
                                    <button id="btn-add-info" type="button" class="btn btn-primary">Thêm thông tin
                                    </button>
                                </div>
                            </div>

                            <div class="div-info">
                                <div class="col-12">
                                    <div class="row align-items-center mb-sm-2 mb-4" id="info-1">
                                        <div class="col-sm-5 col-12 mb-2 mb-sm-0">
                                            <input type="text" class="form-control" name="name_info[]"/>
                                        </div>
                                        <div class="col-sm-6 col-12">
                                            <textarea class="form-control" name="text_info[]"></textarea>
                                        </div>
                                        <!-- <div class="col-1">
                                            <button type="button" class="btn btn-danger btn-sm btn-delete-info" data-num="1">Xóa</button>
                                        </div> -->
                                    </div>
                                </div>
                            </div>
                            <input type="hidden" name="num_info" id="num_info" value="1">
                        </div>

                    </form>
                    <div class="col-12 text-center">
                        <button type="button" class="btn btn-primary" id="submit-btn" style="width: 210px;">Thêm mới
                        </button>
                    </div>

                </div>
            </div>
            <!-- Modal -->


            <!-- Toast thông báo thành công -->

        </main>
        <jsp:include page="../layout/footer.jsp"/>
    </div>
</div>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz"
        crossorigin="anonymous"></script>
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
            var index = $("#num_info").val()
            var num = index + 1;
            $(".div-info").append(
                `<div class="col-12 id="info-${num}">
                    <div class="row align-items-center mb-sm-2 mb-4" id="info-1">
                        <div class="col-sm-5 col-12 mb-2 mb-sm-0">
                            <input type="text" class="form-control" name="name_info[]"  />
                        </div>
                        <div class="col-sm-6 col-12">
                            <textarea class="form-control" name="text_info[]"></textarea>
                        </div>
                        <div class="col-1">
                            <button type="button" class="btn btn-danger btn-sm btn-delete-info" data-num="${num}">Xóa</button>
                        </div>
                    </div>
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

        // Sau 2 giây, chuyển hướng về trang product.jsp
        setTimeout(function () {
            window.location.href = "product.jsp";
        }, 2000);
    });
</script>

</body>

</html>