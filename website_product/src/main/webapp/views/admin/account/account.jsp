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
    <title>Dashboard ACCOUNT</title>
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
                <h1 class="mt-4">QUẢN LÝ TÀI KHOẢN</h1>
                <ol class="breadcrumb mb-4">
                    <li class="breadcrumb-item"><a href="${pageContext.request.contextPath}/admin">TRANG CHỦ</a></li>
                    <li class="breadcrumb-item active">TÀI KHOẢN</li>
                </ol>
                <c:if test="${requestScope.role == 'admin'}">
                <button disabled type="button" class="btn btn-secondary" data-bs-toggle="modal"
                        data-bs-target="#modal-create">
                    Tạo mới tài khoản
                </button>
                </c:if>
                <c:if test="${requestScope.role == 'admin master'}">
                <button onclick="window.location.href='/admin/account?action=create'" type="button"
                        class="btn btn-secondary"
                >
                    Tạo mới tài khoản
                </button>
                </c:if>
                <hr/>

                <div class="card mb-4">
                    <div class="card-header">
                        <i class="fas fa-table me-1"></i>
                        DỮ LIỆU TÀI KHOẢN
                    </div>
                    <div class="card-body">

                        <table id="datatablesSimple">
                            <thead>
                            <tr>
                                <th>ID</th>
                                <th>EMAIL</th>
                                <th>QUYỀN TRUY CẬP</th>
                                <th>CHỨC NĂNG</th>
                            </tr>
                            </thead>
                            <tbody>
                            <c:forEach var="item" items="${requestScope.listAccounts}">
                                <tr>
                                    <td>${item.id}</td>
                                    <td>${item.email}</td>
                                    <td>${item.role}</td>
                                    <td>
                                        <c:choose> <c:when test="${requestScope.role == 'admin'}">
                                            <button type="button" class="btn btn-warning" data-bs-toggle="modal"
                                                    data-bs-target="#modalUpdate${item.id}" disabled> Sửa
                                            </button>
                                            <button type="button" class="btn btn-danger" data-bs-toggle="modal"
                                                    data-bs-target="#modalDelete${item.id}" disabled>Xóa
                                            </button>
                                        </c:when> <c:when test="${requestScope.role == 'admin master'}">
                                            <button onclick="window.location.href='/admin/account?action=update&email=${item.email}'"
                                                    type="button" class="btn btn-warning"
                                            >Sửa
                                            </button>
                                            <button type="button" class="btn btn-danger" data-bs-toggle="modal"
                                                    data-bs-target="#modalDelete${item.id}">Xóa
                                            </button>
                                        </c:when>
                                        </c:choose>
                                    </td>
                                        <%-- Moldal delete--%>
                                    <div class="modal fade" id="modalDelete${item.id}" data-bs-backdrop="static"
                                         data-bs-keyboard="false" tabindex="-1"
                                         aria-labelledby="staticBackdropLabel" aria-hidden="true"
                                    >
                                        <div class="modal-dialog">
                                            <div class="modal-content">
                                                <div class="modal-header">
                                                    <h1 class="modal-title fs-5" id="staticBackdropLabel">Xóa
                                                        tài khoản</h1>
                                                    <button type="button" class="btn-close" data-bs-dismiss="modal"
                                                            aria-label="Close"></button>
                                                </div>
                                                <div class="modal-body">
                                                    <p>Bạn có chắc muốn xóa tài khoản có email: ${item.email} này
                                                        không?</p>
                                                    <small style="color: red; font-style: italic">Lưu ý hành động
                                                        này
                                                        không thể hoàn
                                                        tác!</small>
                                                </div>
                                                <div class="modal-footer">
                                                    <button type="button" class="btn btn-secondary"
                                                            data-bs-dismiss="modal">Đóng
                                                    </button>
                                                    <button onclick="window.location.href='/admin/account?action=delete&email=${item.email}'"
                                                            type="button"
                                                            class="btn btn-primary" data-bs-dismiss="modal">Xác nhận
                                                    </button>
                                                </div>
                                            </div>
                                        </div>
                                    </div>

                                </tr>

                            </c:forEach>
                            </tbody>
                        </table>
                    </div>
                    <c:if test="${message != null}">
                        <div class="alert alert-success d-flex align-items-center" role="alert" id="message">
                                ${message}
                        </div>
                    </c:if>
                </div>
        </main>
        <jsp:include page="../layout/footer.jsp"/>

    </div>
</div>
<script>
    setTimeout(function () {
        document.getElementById("message").remove();
    }, 3000)

    function showAlert(${message}) {
        alert(${message});
    }
</script>
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.6/dist/umd/popper.min.js"
        integrity="sha384-oBqDVmMz4fnFO9gybF6kV5O6Nf1XbFjwRz2Kl68uGxAtGvX7SeCmbkNQvd53u1T2"
        crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz"
        crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.8.0/Chart.min.js"
        crossorigin="anonymous"></script>

<script src="https://cdn.jsdelivr.net/npm/simple-datatables@7.1.2/dist/umd/simple-datatables.min.js"
        crossorigin="anonymous"></script>
<script src="../../../resources/js/scripts.js"></script>
<script src="../../../resources/js/datatables-simple-demo.js"></script>
</body>

</html>