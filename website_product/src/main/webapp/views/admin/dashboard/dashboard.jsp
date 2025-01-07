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
    <title>Dashboard ADMIN</title>
    <link href="https://cdn.jsdelivr.net/npm/simple-datatables@7.1.2/dist/style.min.css" rel="stylesheet"/>
    <link href="../../../resources/css/admin/styles.css" rel="stylesheet"/>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
    <script src="https://use.fontawesome.com/releases/v6.3.0/js/all.js" crossorigin="anonymous"></script>
</head>

<body class="sb-nav-fixed">
<jsp:include page="../layout/header.jsp"/>

<div id="layoutSidenav">
    <jsp:include page="../layout/sidebar.jsp"/>

    <div id="layoutSidenav_content">
        <main>
            <div class="container-fluid px-4">
                <h1 class="mt-4">BẢNG ĐIỀU KHIỂN</h1>
                <hr>
                <div class="row">
                    <div class="col-xl-6 col-md-6">
                        <div class="card text-bg-light text-back mb-4">
                            <div class="card-body">
                                <i class="fa-solid fa-user"></i>
                                QUẢN LÝ ACCOUNT
                            </div>
                            <div class="card-footer d-flex align-items-center justify-content-between">
                                <a class="small text-back stretched-link"
                                   href="${pageContext.request.contextPath}/admin/account">Chi tiết</a>
                                <div class="small text-back"><i class="fas fa-angle-right"></i></div>
                            </div>
                        </div>
                    </div>
                    <div class="col-xl-6 col-md-6">
                        <div class="card text-bg-light text-back mb-4">
                            <div class="card-body">
                                <i class="fa-solid fa-users"></i>
                                QUẢN LÝ USERS
                            </div>
                            <div class="card-footer d-flex align-items-center justify-content-between">
                                <a class="small text-back stretched-link"
                                   href="${pageContext.request.contextPath}/admin/users">Chi tiết</a>
                                <div class="small text-back"><i class="fas fa-angle-right"></i></div>
                            </div>
                        </div>
                    </div>
                    <div class="col-xl-6 col-md-6">
                        <div class="card text-bg-light text-back mb-4">
                            <div class="card-body">
                                <i class="fa-solid fa-list"></i>
                                QUẢN LÝ PRODUCT
                            </div>
                            <div class="card-footer d-flex align-items-center justify-content-between">
                                <a class="small text-back stretched-link"
                                   href="${pageContext.request.contextPath}/admin/products">Chi tiết</a>
                                <div class="small text-back"><i class="fas fa-angle-right"></i></div>
                            </div>
                        </div>
                    </div>
                    <div class="col-xl-6 col-md-6">
                        <div class="card text-bg-light text-back mb-4">
                            <div class="card-body">
                                <i class="fa-solid fa-list"></i>
                                DANH SÁCH HÓA ĐƠN
                            </div>
                            <div class="card-footer d-flex align-items-center justify-content-between">
                                <a class="small text-back stretched-link"
                                   href="${pageContext.request.contextPath}/admin/bill">Chi tiết</a>
                                <div class="small text-back"><i class="fas fa-angle-right"></i></div>
                            </div>
                        </div>
                    </div>
                    <div class="col-xl-6 col-md-6">
                        <div class="card text-bg-light text-back mb-4">
                            <div class="card-body">
                                <i class="fa-solid fa-gears"></i>
                                MY ACCOUNT <small style="color: red; font-style: italic">
                                (<c:out value="${requestScope.role}"/>)
                            </small>
                            </div>
                            <div class="card-footer d-flex align-items-center justify-content-between">
                                <a class="small text-back stretched-link"
                                   href="${pageContext.request.contextPath}/admin/myaccount">Chi tiết</a>
                                <div class="small text-back"><i class="fas fa-angle-right"></i></div>
                            </div>
                        </div>
                    </div>
                    <div class="col-xl-6 col-md-6">
                        <div class="card text-bg-light text-back mb-4">
                            <div class="card-body">
                                <i class="fa-solid fa-pen"></i>
                                ĐĂNG KÍ TÀI KHOẢN ADMIN
                                <c:if test="${requestScope.role == 'admin master'}"> <small
                                        style="color: red; font-style: italic"> (Bạn được quyền đăng kí tài khoản
                                    admin) </small> </c:if> <c:if test="${requestScope.role != 'admin master'}">
                                <small style="color: red; font-style: italic"> (Bạn không được quyền đăng kí tài khoản
                                    admin) </small> </c:if>
                            </div>
                            <div class="card-footer d-flex align-items-center justify-content-between">
                                <a class="small text-back stretched-link"
                                   href="${pageContext.request.contextPath}/admin/register">Chi tiết</a>
                                <div class="small text-back"><i class="fas fa-angle-right"></i></div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </main>
        <jsp:include page="../layout/footer.jsp"/>

    </div>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"
            integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz"
            crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.8.0/Chart.min.js"
            crossorigin="anonymous"></script>

    <script src="https://cdn.jsdelivr.net/npm/simple-datatables@7.1.2/dist/umd/simple-datatables.min.js"
            crossorigin="anonymous"></script>
    <script src="D:\java\case_study_frontend\resources\js\scripts.js"></script>
    <script src="D:\java\case_study_frontend\resources\js\datatables-simple-demo.js"></script>
</body>

</html>