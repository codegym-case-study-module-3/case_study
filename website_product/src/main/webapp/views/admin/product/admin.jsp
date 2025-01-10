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
<jsp:include page="../layout/header.jsp"/>

<div id="layoutSidenav">
    <jsp:include page="../layout/sidebar.jsp"/>

    <div id="layoutSidenav_content">
        <main>
            <div class="container-fluid px-4">
                <h1 class="mt-4">QUẢN LÝ PRODUCT</h1>
                <ol class="breadcrumb mb-4">
                    <li class="breadcrumb-item"><a href="${pageContext.request.contextPath}/admin">TRANG CHỦ</a></li>
                    <li class="breadcrumb-item active">PRODUCT</li>
                </ol>
                <button class="btn btn-secondary"
                        onclick="window.location.href='/admin/product?action=create'"
                >Thêm mới
                </button>
                <hr/>
                <div class="card mb-4">
                    <div class="card-header">
                        <i class="fas fa-table me-1"></i>
                        DataTable
                    </div>
                    <div class="card-body">
                        <table id="datatablesSimple">
                            <thead>
                            </thead>
                            <div>


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
                                                        onclick="window.location.href='/admin/product?action=update&id=${product.id}'">
                                                    Sửa
                                                </button>

                                            </td>
                                            <td>

                                                <button class="btn btn-danger"
                                                        onclick="window.location.href='/admin/product?action=delete&id=${product.id}'">
                                                    Xóa
                                                </button>
                                                    <%--                                                <button class="btn btn-danger"--%>
                                                    <%--                                                        data-bs-toggle="modal" data-bs-target="#modalDelete${product.id}">--%>
                                                    <%--                                                    Xóa--%>
                                                    <%--                                                </button>--%>
                                            </td>
                                            <div class="modal fade" id="modalDelete${product.id}" tabindex="-1"
                                                 aria-labelledby="exampleModalLabel" aria-hidden="true">
                                                <div class="modal-dialog">
                                                    <div class="modal-content">
                                                        <div class="modal-header">
                                                            <h5 class="modal-title" id="exampleModalLabel">Xóa </h5>
                                                            <button type="button" class="btn-close"
                                                                    data-bs-dismiss="modal"
                                                                    aria-label="Close"></button>
                                                        </div>
                                                        <div class="modal-body">
                                                            <p>Bạn có chắc muốn xóa học sinh có tên là ${product.name}
                                                                và id là ${product.id}?</p>
                                                            <small style="color: red; font-style: italic">Lưu ý hành
                                                                động này không thể hoàn
                                                                tác!</small>
                                                        </div>
                                                        <div class="modal-footer">
                                                            <button type="button" class="btn btn-secondary"
                                                                    data-bs-dismiss="modal">Đóng
                                                            </button>
                                                            <button type="button" class="btn btn-danger"
                                                                    onclick="window.location.href='/admin/product?action=delete&id=${product.id}'">
                                                                Xác
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

                        </table>
                    </div>
                </div>
            </div>

        </main>
        <%--        <jsp:include page="../layout/footer.jsp"/>--%>
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
