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
    <title>Dashboard USERS</title>
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
                <h1 class="mt-4">QUẢN LÝ USERS</h1>
                <ol class="breadcrumb mb-4">
                    <li class="breadcrumb-item"><a href="${pageContext.request.contextPath}/admin">TRANG CHỦ</a></li>
                    <li class="breadcrumb-item active">USERS</li>
                </ol>
                <button type="button" class="btn btn-secondary" data-bs-toggle="modal" data-bs-target="#modal-create">
                    Tạo mới User
                </button>
                <hr/>
                <hr/>
                <div class="card mb-4">
                    <div class="card-header">
                        <i class="fas fa-table me-1"></i>
                        DataTable
                    </div>
                    <div class="card-body">
                        <table id="datatablesSimple">
                            <thead>
                            <tr>
                                <th>ID</th>
                                <th>Full Name</th>
                                <th>Day Of Birth</th>
                                <th>Gender</th>
                                <th>Address</th>
                                <th>Number Phone</th>
                                <th>Action</th>
                            </tr>
                            </thead>
                            <tbody>
                            <tr>
                                <td>24336002323</td>
                                <td>Nguyễn Văn A</td>
                                <td>22/07/1998</td>
                                <td>male</td>
                                <td>425 Nơ Trang Long, P13, Bình Thạnh, TP.HCM</td>
                                <td>0359523030</td>
                                <td>
                                    <button type="button" class="btn btn-info" data-bs-toggle="modal"
                                            data-bs-target="#modal-detail">Details
                                    </button>
                                    <button type="button" class="btn btn-secondary" data-bs-toggle="modal"
                                            data-bs-target="#modal-update">Update
                                    </button>
                                    <button type="button" class="btn btn-danger" data-bs-toggle="modal"
                                            data-bs-target="#staticBackdrop">Delete
                                    </button>
                                </td>
                            </tr>
                            <tr>
                                <td>24336002323</td>
                                <td>Nguyễn Văn A</td>
                                <td>22/07/1998</td>
                                <td>male</td>
                                <td>425 Nơ Trang Long, P13, Bình Thạnh, TP.HCM</td>
                                <td>0359523030</td>
                                <td>
                                    <button type="button" class="btn btn-info" data-bs-toggle="modal"
                                            data-bs-target="#modal-detail">Details
                                    </button>
                                    <button type="button" class="btn btn-secondary" data-bs-toggle="modal"
                                            data-bs-target="#modal-update">Update
                                    </button>
                                    <button type="button" class="btn btn-danger" data-bs-toggle="modal"
                                            data-bs-target="#staticBackdrop">Delete
                                    </button>
                                </td>
                            </tr>
                            <tr>
                                <td>24336002323</td>
                                <td>Nguyễn Văn A</td>
                                <td>22/07/1998</td>
                                <td>male</td>
                                <td>425 Nơ Trang Long, P13, Bình Thạnh, TP.HCM</td>
                                <td>0359523030</td>
                                <td>
                                    <button type="button" class="btn btn-info" data-bs-toggle="modal"
                                            data-bs-target="#modal-detail">Details
                                    </button>
                                    <button type="button" class="btn btn-secondary" data-bs-toggle="modal"
                                            data-bs-target="#modal-update">Update
                                    </button>
                                    <button type="button" class="btn btn-danger" data-bs-toggle="modal"
                                            data-bs-target="#staticBackdrop">Delete
                                    </button>
                                </td>
                            </tr>
                            <tr>
                                <td>24336002323</td>
                                <td>Nguyễn Văn A</td>
                                <td>22/07/1998</td>
                                <td>male</td>
                                <td>425 Nơ Trang Long, P13, Bình Thạnh, TP.HCM</td>
                                <td>0359523030</td>
                                <td>
                                    <button type="button" class="btn btn-info" data-bs-toggle="modal"
                                            data-bs-target="#modal-detail">Details
                                    </button>
                                    <button type="button" class="btn btn-secondary" data-bs-toggle="modal"
                                            data-bs-target="#modal-update">Update
                                    </button>
                                    <button type="button" class="btn btn-danger" data-bs-toggle="modal"
                                            data-bs-target="#staticBackdrop">Delete
                                    </button>
                                </td>
                            </tr>
                            <tr>
                                <td>24336002323</td>
                                <td>Nguyễn Văn A</td>
                                <td>22/07/1998</td>
                                <td>male</td>
                                <td>425 Nơ Trang Long, P13, Bình Thạnh, TP.HCM</td>
                                <td>0359523030</td>
                                <td>
                                    <button type="button" class="btn btn-info" data-bs-toggle="modal"
                                            data-bs-target="#modal-detail">Details
                                    </button>
                                    <button type="button" class="btn btn-secondary" data-bs-toggle="modal"
                                            data-bs-target="#modal-update">Update
                                    </button>
                                    <button type="button" class="btn btn-danger" data-bs-toggle="modal"
                                            data-bs-target="#staticBackdrop">Delete
                                    </button>
                                </td>
                            </tr>

                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
            <!-- Modal create -->
            <jsp:include page="../modal/modal_create_acc.jsp"/>
            <!-- Modal update-->
            <jsp:include page="../modal/modal_update_acc.jsp"/>
            <!--Modal delete-->
            <jsp:include page="../modal/modal_delete_acc.jsp"/>
            <!--Modal view details-->
            <jsp:include page="../modal/modal_details_acc.jsp"/>
        </main>
        <jsp:include page="../layout/footer.jsp"/>
    </div>
</div>
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