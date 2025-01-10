<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ page pageEncoding="UTF-8" contentType="text/html; charset=UTF-8" %>

<!DOCTYPE html>
<html lang="vi">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Xác nhận thông tin đơn hàng</title>
    <jsp:include page="layout/head.jsp"/>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
    <link rel="stylesheet" href="../../resources/plugins/fontawesome/css/all.css">
    <link rel="stylesheet" href="../../resources/css/styles.css">
    <style>
        .cart-layout {
            max-width: 800px;
            padding: 30px;
            margin: 30px auto;
            background-color: #f8f9fa;
            border-radius: 10px;
        }

        .cart-header {
            font-size: 24px;
            font-weight: bold;
            margin-bottom: 15px;
            text-align: center;
            color: #ea0707;
        }


        .info-title {
            font-weight: bold;
            color: #343a40;
        }

        .text-highlight {
            color: #ff5e57;
            font-weight: bold;
        }

        .btn-danger {
            background-color: #ff5e57;
            border-color: #ff5e57;
        }

        .btn-danger:hover {
            background-color: #ff4444;
        }

        .checkout-steplist {
            display: flex;
            justify-content: space-between;
            margin-bottom: 30px;
        }

        .form-container {
            margin-top: 20px;
        }
    </style>
</head>
<body>
<div class="section">
    <jsp:include page="layout/header.jsp"/>
    <div class="cart-layout rounded shadow">
        <div class="col-sm-12 text-start mb-3">
            <a href="${pageContext.request.contextPath}/order/info?totalCost=${totalCost}" class="btn btn-outline-danger btn-sm">
                <i class="fa-solid fa-arrow-left-long"></i> Thay đổi thông tin
            </a>
        </div>

        <section class="section-steps">
            <div class="checkout-steplist">
                <div class="checkout-step is-active">
                    <div class="icon">
                        <i class="fa-solid fa-bag-shopping"></i>
                    </div>
                    <div class="text">Giỏ hàng</div>
                </div>
                <div class="checkout-step is-active">
                    <div class="icon">
                        <i class="fa-solid fa-id-card"></i>
                    </div>
                    <div class="text">Thông tin đặt hàng</div>
                </div>
                <div class="checkout-step is-active">
                    <div class="icon">
                        <i class="fa-solid fa-credit-card"></i>
                    </div>
                    <div class="text">Thanh toán</div>
                </div>
                <div class="checkout-step">
                    <div class="icon">
                        <i class="fa-solid fa-circle-check"></i>
                    </div>
                    <div class="text">Hoàn tất</div>
                </div>
            </div>
        </section>

        <div class="form-container">
            <h4 class="mb-3 cart-header">Xác nhận thông tin đơn hàng</h4>

            <div class="mb-4">
                <h5 class="info-title">Thông tin người nhận:</h5>
                <p><strong>Tên:</strong> <span class="text-highlight">${sessionScope.userInfo.fullName}</span></p>
                <p><strong>Giới tính:</strong>
                    <span class="text-highlight">${sessionScope.userInfo.gender == 'male' ? 'Nam' : (sessionScope.userInfo.gender == 'female' ? 'Nữ' : 'Khác')}</span>
                </p>
                <p><strong>Ngày sinh:</strong> <span>${sessionScope.userInfo.dob}</span></p>
                <p><strong>Số điện thoại:</strong> <span>${sessionScope.userInfo.phone_number}</span></p>
                <p><strong>Địa chỉ:</strong> <span>${sessionScope.userInfo.address}</span></p>
                <p><strong>Phí vận chuyển:</strong> <span class="text-highlight">Miễn phí</span></p>
            </div>

            <div class="mb-3">
                <h5 class="info-title">Tổng tiền đơn hàng:</h5>
                <p class="text-danger fw-bold">
                    <fmt:formatNumber value="${sessionScope.totalCost}" type="currency" currencySymbol="₫"/>
                </p>
            </div>

            <%-- Form gửi POST request tới OrderDetailController --%>
            <form action="${pageContext.request.contextPath}/order/final" method="post">
                <button type="submit" class="btn btn-danger w-100">Xác nhận mua hàng</button>
            </form>
        </div>
    </div>
    <jsp:include page="layout/footer.jsp"/>
</div>

<jsp:include page="layout/script.jsp"/>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
<script src="../../resources/plugins/jquery/jquery.js"></script>
<%
    String isLogged = (String) session.getAttribute("isLogged");
%>
<c:if test="${isLogged == null}">
    <jsp:include page="modal/modal_login.jsp" />
    <jsp:include page="modal/modal_register.jsp" />
</c:if>
</body>
</html>
