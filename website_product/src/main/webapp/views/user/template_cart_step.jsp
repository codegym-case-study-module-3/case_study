<%--Đây là template_cart_step.jsp--%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ page pageEncoding="UTF-8" contentType="text/html; charset=UTF-8" %>

<!DOCTYPE html>
<html lang="vi">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Giỏ hàng của bạn</title>
    <jsp:include page="layout/head.jsp"/>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
    <style>
        .cart-layout {
            max-width: 720px;
            padding: 20px;
            margin: 20px auto;
        }
        .cart-item-row {
            padding: 10px 0;
            border-bottom: 1px solid #eaeaea;
        }
        .cart-item-row img {
            max-width: 60px;
            height: auto;
        }
        .btn-sm {
            padding: 3px 10px;
        }
        .total-cost {
            font-size: 18px;
        }
        .btn-danger {
            background-color: #ff5e57;
            border-color: #ff5e57;
        }
        .btn-danger:hover {
            background-color: #ff4444;
        }
    </style>
</head>
<body>
<div class="section">
    <jsp:include page="layout/header.jsp"/>
    <div class="cart-layout bg-white mt-2 mb-4 rounded shadow">
        <div class="col-sm-12 text-start mb-3">
            <a href="${pageContext.request.contextPath}/" class="btn btn-outline-danger btn-sm">
                <i class="fa-solid fa-arrow-left-long"></i> Tiếp tục mua sắm
            </a>
        </div>
        <section class="section-steps">
            <div class="checkout-steplist status">
                <div class="checkout-step status-one is-active" data-box="cart-buy-order-box">
                    <div class="icon">
                        <i class="fa-solid fa-bag-shopping"></i>
                    </div>
                    <div class="text"><span>Giỏ hàng</span></div>
                </div>
                <div class="checkout-step status-two" data-box="cart-info-order-box">
                    <div class="icon">
                        <i class="fa-solid fa-id-card"></i>
                    </div>
                    <div class="text"><span>Thông tin đặt hàng</span></div>
                </div>
                <div class="checkout-step status-three" data-box="cart-payment-order-box">
                    <div class="icon">
                        <i class="fa-solid fa-credit-card"></i>
                    </div>
                    <div class="text"><span>Thanh toán</span></div>
                </div>
                <div class="checkout-step status-four">
                    <div class="icon">
                        <i class="fa-solid fa-circle-check"></i>
                    </div>
                    <div class="text"><span>Hoàn tất</span></div>
                </div>
            </div>
        </section>
<%--       <div>làm trong này </div>--%>
    </div>
    <jsp:include page="layout/footer.jsp"/>

</div>

<jsp:include page="layout/script.jsp"/>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
<script src="../../resources/plugins/jquery/jquery.js"></script>
</body>
</html>
