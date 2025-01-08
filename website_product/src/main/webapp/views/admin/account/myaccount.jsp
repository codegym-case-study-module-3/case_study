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
                <h1 class="mt-4">MY ACCOUNT</h1>
                <ol class="breadcrumb mb-4">
                    <li class="breadcrumb-item"><a href="../dashboard/dashboard.jsp">TRANG CHỦ</a></li>
                    <li class="breadcrumb-item active">MY ACCOUNT</li>
                </ol>

                <button type="button" class="btn btn-secondary" data-bs-toggle="modal" data-bs-target="#modal-update">
                    Cập nhật Account
                </button>
                <hr/>
                <div class="modal-dialog">
                    <div class="modal-content">
                        <div class="modal-header">
                            <h1 class="modal-title fs-5" id="exampleModalLabel">THÔNG TIN CHI TIẾT ACCOUNT:</h1>
                        </div>
                        <div class="modal-body">
                            <ul class="list-group">
                                <li class="list-group-item">ID: 24336002207</li>
                                <li class="list-group-item">Email: abc@gmail.com</li>
                                <li class="list-group-item">Username: codegymvn</li>
                                <li class="list-group-item">Role:</li>
                            </ul>
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