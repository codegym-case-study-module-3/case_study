<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ page pageEncoding="UTF-8" contentType="text/html; charset=UTF-8" %>

<!DOCTYPE html>
<html lang="vi">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Đặt hàng thành công</title>
    <jsp:include page="layout/head.jsp"/>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="../../resources/plugins/fontawesome/css/all.css">
    <link rel="stylesheet" href="../../resources/css/styles.css">

</head>
<body>
<jsp:include page="layout/header.jsp"/>
<div class="container my-5">
    <div class="card shadow p-4 text-center">
        <i class="fa-solid fa-circle-check text-success display-3 mb-3"></i>
        <h2 class="text-success fw-bold">Đặt hàng thành công!</h2>
        <p class="mt-3">Cảm ơn bạn đã mua hàng tại <strong>GearVN</strong>. Mã đơn hàng của bạn là
            <span class="text-danger">#GVN${sessionScope.orderId}</span>. Bạn sẽ nhận được email hoặc SMS xác nhận chi tiết đơn hàng.
        </p>

        <!-- Thông tin đơn hàng chi tiết -->
        <div class="mt-4">
            <h5 class="fw-bold mb-3">Thông tin chi tiết đơn hàng</h5>
            <ul class="list-group text-start">
                <li class="list-group-item d-flex justify-content-between align-items-center">
                    <span>Tên khách hàng:</span> <strong class="text-danger">${sessionScope.userInfo.fullName}</strong>
                </li>
                <li class="list-group-item d-flex justify-content-between align-items-center">
                    <span>Số điện thoại:</span> <strong>${sessionScope.userInfo.phone_number}</strong>
                </li>
                <li class="list-group-item d-flex justify-content-between align-items-center">
                    <span>Địa chỉ giao hàng:</span> <strong>${sessionScope.userInfo.address}</strong>
                </li>
                <li class="list-group-item d-flex justify-content-between align-items-center">
                    <span>Phương thức thanh toán:</span> <strong>Thanh toán khi nhận hàng (COD)</strong>
                </li>
                <li class="list-group-item d-flex justify-content-between align-items-center">
                    <span>Phí vận chuyển:</span> <strong>Miễn phí</strong>
                </li>
                <li class="list-group-item d-flex justify-content-between align-items-center">
                    <span>Tổng tiền thanh toán:</span> <strong class="text-danger">
                    <fmt:formatNumber value="${sessionScope.totalCost}" type="currency" currencySymbol="₫"/>
                </strong>
                </li>
            </ul>
        </div>

        <!-- Lời khuyên sau khi đặt hàng -->
        <div class="alert alert-info mt-4">
            <i class="fa-solid fa-triangle-exclamation"></i> <strong>Lưu ý:</strong> Vui lòng kiểm tra email hoặc tin nhắn để nhận thông tin đơn hàng chi tiết. Nếu có vấn đề phát sinh, bạn có thể liên hệ với chúng tôi qua số <strong>1900 5301</strong>.
        </div>

        <!-- Nút hành động -->
        <div class="row justify-content-center">
            <div class="col-md-4">
                <a href="${pageContext.request.contextPath}/" class="btn btn-danger w-100 py-2">
                    <i class="fa-solid fa-house me-2"></i> Quay về trang chủ
                </a>
            </div>
        </div>
    </div>
</div>
<jsp:include page="layout/footer.jsp"/>
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
