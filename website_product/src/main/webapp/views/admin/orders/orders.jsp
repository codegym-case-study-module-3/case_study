<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8"/>
    <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no"/>
    <meta name="description" content="GEAR.VN"/>
    <meta name="author" content="GEAR.VN"/>
    <title>Dashboard PRODUCT</title>
    <link href="../../../resources/css/admin/styles.css" rel="stylesheet"/>
    <script src="https://use.fontawesome.com/releases/v6.3.0/js/all.js" crossorigin="anonymous"></script>
</head>

<body class="sb-nav-fixed">
<jsp:include page="../layout/header.jsp"/>

<div id="layoutSidenav">
    <jsp:include page="../layout/sidebar.jsp"/>

    <div id="layoutSidenav_content">
        <main>
            <div class="container-fluid px-4">
                <h1 class="mt-4">DANH SÁCH HÓA ĐƠN</h1>
                <ol class="breadcrumb mb-4">
                    <li class="breadcrumb-item"><a href="${pageContext.request.contextPath}/admin">TRANG CHỦ</a></li>
                    <li class="breadcrumb-item active">BILL</li>
                </ol>

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
                                <th>Tên Người Đặt</th>
                                <th>Trạng thái</th>
                                <th>Tổng giá trị đơn hàng</th>

                            </tr>
                            </thead>
                            <tbody>
                            <tr>
                                <td>001</td> <!-- Ô chứa dữ liệu -->
                                <td>Nguyễn Văn A</td>
                                <td>500.000 VND</td>
                                <td>Đang xử lý</td> <!-- Đây là ô dữ liệu với nội dung "Trạng thái" -->
                            </tr>
                            <tr>
                                <td>002</td>
                                <td>Trần Thị B</td>
                                <td>1.200.000 VND</td>
                                <td>Hoàn thành</td>
                            </tr>
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
            <!-- Modal -->
            <div class="modal fade" id="createUserModal" tabindex="-1" aria-labelledby="createUserModalLabel"
                 aria-hidden="true">
                <div class="modal-dialog">
                    <div class="modal-content">
                        <div class="modal-header">

                        </div>
                        <div class="modal-body">
                            <form id="createUserForm" action="/your-server-endpoint" method="POST">

                                <div class="mb-3">
                                    <label for="email" class="form-label">Tên</label>
                                    <input type="text" class="form-control" id="email" name="email" required>
                                </div>

                                <div class="mb-3">
                                    <label for="username" class="form-label">Mô tả</label>
                                    <input type="text" class="form-control" id="username" name="username" required>
                                </div>

                                <div class="mb-3">
                                    <label for="price" class="form-label">Giá</label>
                                    <input type="text" class="form-control" id="price" name="price" required>
                                </div>
                                <div class="mb-3">
                                    <label for="stock" class="form-label">Tồn kho</label>
                                    <input type="text" class="form-control" id="stock" name="stock" required>
                                </div>
                                <div class="mb-3">
                                    <label for="image" class="form-label">Chọn ảnh</label>
                                    <input type="file" class="form-control" id="image" name="image" accept="image/*"
                                           required>
                                </div>
                                <div class="mb-3">
                                    <label for="category_id" class="form-label">Mã danh mục</label>
                                    <input type="text" class="form-control" id="category_id" name="category_id"
                                           required>
                                </div>

                                <button type="submit" class="btn btn-primary">Tạo mới</button>
                            </form>
                        </div>
                    </div>
                </div>
            </div>


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
</body>

</html>