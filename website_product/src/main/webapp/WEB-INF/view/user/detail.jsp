<%--
  Created by IntelliJ IDEA.
  User: Admin
  Date: 1/2/2025
  Time: 11:37 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<html>
<head>
    <title>Chi tiết sản phẩm</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
    <link rel="stylesheet" href="resources/plugins/fontawesome/css/all.css">
    <link rel="stylesheet" href="resources/css/styles.css">
    <link rel="stylesheet" href="resources/css/main.css">
</head>
<body>
<jsp:include page="layout/header.jsp" />
<div class="container">
    <div class="content-header">
        <div class="container-fluid">
            <div class="row pt-3 pb-4">
                <div class="col-sm-6">
                    <h5 class="page-title m-0">
                        <a class="text-primary" href="/dashboard"><i class="fa-solid fa-house"></i><span>Trang chủ</span></a>
                        <span class="px-3">/</span>
                        <a class="text-primary" href="/list"><span>Laptop</span></a>
                        <span class="px-3">/</span>
                        <span>Laptop Lenovo V14 G4 IRU 83A000BHVN</span>
                    </h5>
                </div><!-- /.col -->
            </div><!-- /.row -->
        </div><!-- /.container-fluid -->
    </div>
    <div class="content">
        <div class="container-fluid">
            <div class="row">
                <div class="col-12">
                    <div class="card card-default">
                        <div class="card-body">
                            <div class="row">
                                <div class="col-lg-5 col-12">
                                    <div class="pic-frame">
                                        <img src="resources\images\20241230205000.png">
                                    </div>
                                </div>
                                <div class="col-lg-7 col-12">
                                    <div class="pro-top mb-3">
                                        <div class="pb-2">
                                            <h5>Laptop Lenovo V14 G4 IRU 83A000BHVN</h5>
                                        </div>
                                        <div class="pro-rating">
                                            <span class="number-rating">0.0</span>
                                            <span class="icon-rating">
                                            <i class="fa-solid fa-star"></i>
                                        </span>
                                            <span class="count-rating">(0 đánh giá)</span>
                                        </div>
                                    </div>
                                    <div class="pro-bottom">
                                        <div class="product-price mb-3">
                                            <span class="pro-price a">13.790.000₫</span>
                                        </div>
                                        <div class="product-button d-flex">
                                            <button class="btn btn-danger py-2" style="width: 400px">Mua Ngay</button>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<jsp:include page="layout/footer.jsp" />
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM"
        crossorigin="anonymous"></script>
<script src="resources/plugins/jquery/jquery.js" crossorigin="anonymous"></script>
</body>
</html>
