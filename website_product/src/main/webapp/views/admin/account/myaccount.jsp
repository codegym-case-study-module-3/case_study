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
                    <li class="breadcrumb-item"><a href="../dashboard/dashboard.jsp">TRANG CHỦ</a></li>
                    <li class="breadcrumb-item active">TÀI KHOẢN CỦA BẠN</li>
                </ol>

                <button type="button" class="btn btn-secondary" data-bs-toggle="modal" data-bs-target="#modal-update">
                    Cập nhật tài khoản
                </button>
                <hr/>
                <div class="modal-dialog">
                    <div class="modal-content">
                        <div class="modal-header">
                            <h1 class="modal-title fs-5" id="exampleModalLabel">THÔNG TIN CHI TIẾT TÀI KHOẢN:</h1>
                        </div>
                        <div class="modal-body">
                            <ul class="list-group">
                                <li class="list-group-item">ID: <c:out value="${requestScope.account.id}"/></li>
                                <li class="list-group-item">Email: <c:out value="${requestScope.account.email}"/></li>
                                <li class="list-group-item">Role: <span style="color: red; font-style: italic">
                                    <c:out value="${requestScope.account.role}"/>
                                </span>
                                </li>
                            </ul>
                        </div>
                    </div>
                </div>
                <%--Modal update--%>

                <div class="modal fade" id="modal-update" tabindex="-1" aria-labelledby="exampleModalLabel"
                     aria-hidden="true">
                    <div class="modal-dialog">
                        <div class="modal-content">
                            <div class="modal-header">
                                <h1 class="modal-title fs-5" id="#exampleModalLabel">Cập nhật thông tin:</h1>
                                <button type="button" class="btn-close" data-bs-dismiss="modal"
                                        aria-label="Close"></button>
                            </div>
                            <div class="modal-body">
                                <form method="post">
                                    <div class="mb-3">
                                        <label for="email" class="form-label">Email</label>
                                        <input readonly type="email" class="form-control" id="email" name="email"
                                               required
                                               value=<c:out value="${requestScope.account.email}"/>>
                                    </div>
                                    <div class=" mb-3">
                                        <%--@declare id="password"--%><label for="password" class="form-label">Mật khẩu
                                        cũ</label>
                                        <input disabled type="password" class="form-control" id="password-old"
                                               name="password" required value=
                                               <%--                        <c:out value="${requestScope.account.email}"/>>--%>
                                                       </div>
                                        <div class="mb-3">
                                            <label for="password" class="form-label">Mật khẩu mới</label>
                                            <input type="password" class="form-control" id="password-new1"
                                                   name="password">
                                        </div>
                                        <div class="mb-3">
                                            <label for="password" class="form-label">Xác nhận mật khẩu</label>
                                            <input type="password" class="form-control" id="password-new2"
                                                   name="password">
                                        </div>
                                        <div class="mb-3">
                                            <label for="role" class="form-label">Role</label>
                                            <select class="form-select" id="role" name="role" required>
                                                <option value="user">Admin</option>
                                            </select>
                                        </div>
                                        <button style="width: 100%" type="submit" class="btn btn-primary">Cập nhật
                                        </button>
                                </form>
                            </div>

                        </div>
                    </div>
                </div>

            </div>
            <!-- Modal update-->
            <jsp:include page="../modal/modal_update_acc.jsp"/>

        </main>
        <jsp:include page="../layout/footer.jsp"/>

    </div>
</div>
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