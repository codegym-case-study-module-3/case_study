<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ page pageEncoding="UTF-8" contentType="text/html; charset=UTF-8" %>

<!DOCTYPE html>
<html lang="vi">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Thông tin giao hàng</title>
    <jsp:include page="layout/head.jsp"/>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
    <link rel="stylesheet" href="../../resources/plugins/fontawesome/css/all.css">
    <link rel="stylesheet" href="../../resources/css/styles.css">
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
        <section class="section-steps">
            <div class="checkout-steplist status">
                <div class="checkout-step status-one is-active">
                    <div class="icon">
                        <i class="fa-solid fa-bag-shopping"></i>
                    </div>
                    <div class="text"><span>Giỏ hàng</span></div>
                </div>
                <div class="checkout-step status-two is-active">
                    <div class="icon">
                        <i class="fa-solid fa-id-card"></i>
                    </div>
                    <div class="text"><span>Thông tin đặt hàng</span></div>
                </div>
                <div class="checkout-step status-three">
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

        <%-- Form nhập thông tin giao hàng --%>
        <div class="p-4">
            <h4 class="mb-3">Thông tin giao hàng</h4>
            <form action="${pageContext.request.contextPath}/order/info" method="post">
                <div class="mb-3">
                    <label for="fullName" class="form-label">Tên người nhận</label>
                    <input type="text" class="form-control" id="fullName" name="fullName" placeholder="Nhập tên của bạn" required>
                </div>

                <div class="mb-3">
                    <label class="form-label d-block">Giới tính</label>
                    <div class="form-check form-check-inline">
                        <input class="form-check-input" type="radio" name="gender" id="genderMale" value="male" required>
                        <label class="form-check-label" for="genderMale">Nam</label>
                    </div>
                    <div class="form-check form-check-inline">
                        <input class="form-check-input" type="radio" name="gender" id="genderFemale" value="female" required>
                        <label class="form-check-label" for="genderFemale">Nữ</label>
                    </div>
                </div>

                <div class="mb-3">
                    <label for="dob" class="form-label">Ngày sinh</label>
                    <input type="date" class="form-control" id="dob" name="dob" required>
                </div>

                <div class="mb-3">
                    <label for="phone" class="form-label">Số điện thoại</label>
                    <input type="text" class="form-control" id="phone" name="phone" placeholder="Nhập số điện thoại" required>
                </div>

                <div class="mb-3">
                    <label for="address" class="form-label">Địa chỉ giao hàng</label>
                    <textarea class="form-control" id="address" name="address" rows="3" placeholder="Nhập địa chỉ" required></textarea>
                </div>

                <div class="mb-3">
                    <label class="form-label">Cách nhận hàng</label>
                    <div>
                        <input type="radio" id="deliveryMethod" name="deliveryMethod" value="Giao hàng tận nơi" checked>
                        <label for="deliveryMethod">Giao hàng tận nơi</label>
                    </div>
                </div>

                <div class="mb-3">
                    <label class="form-label">Xuất hóa đơn cho đơn hàng</label>
                    <div>
                        <input type="checkbox" id="invoice" name="invoice">
                        <label for="invoice">Tôi muốn xuất hóa đơn</label>
                    </div>
                </div>

                <div class="mb-3 text-end">
                    <strong>Tổng tiền:</strong>
                    <span class="text-danger fw-bold">
            <fmt:formatNumber value="${totalCost}" type="currency" currencySymbol="₫"/>
        </span>
                </div>

                <!-- Gửi tổng tiền dưới dạng hidden field -->
                <input type="hidden" name="totalCost" value="${totalCost}"/>

                <button type="submit" class="btn btn-danger w-100">Xác nhận thông tin đặt hàng</button>
            </form>

        </div>
    </div>
    <jsp:include page="layout/footer.jsp"/>
</div>

<jsp:include page="layout/script.jsp"/>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"></script>
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
