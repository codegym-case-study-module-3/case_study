
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
        <div class="section-order mt-4 p-3">
            <c:choose>
                <c:when test="${empty cartItems}">
                    <div class="alert alert-warning text-center">Giỏ hàng của bạn đang trống.</div>
                </c:when>
                <c:otherwise>
                    <div class="cart-items">
                        <c:forEach var="item" items="${cartItems}">
                            <div class="row cart-item-row align-items-center">
                                <div class="col-3 text-center">
                                    <img src="${pageContext.request.contextPath}/${productsMap[item.productId].image}" class="img-fluid rounded">
                                </div>
                                <div class="col-6">
                                    <h6 class="font-16">${productsMap[item.productId].name}</h6>
                                    <p class="text-muted small">
                                        Giá: <fmt:formatNumber value="${productsMap[item.productId].price}" type="currency" currencySymbol="₫"/>
                                    </p>
                                    <p class="text-muted small">
                                        Số lượng: ${item.quantity}
                                    </p>
                                </div>
                                <div class="col-3 text-end">
                                    <form action="${pageContext.request.contextPath}/cart/delete" method="post">
                                        <input type="hidden" name="productId" value="${item.productId}"/>
                                        <button type="submit" class="btn btn-danger btn-sm">
                                            <i class="fa-solid fa-trash"></i> Xoá
                                        </button>
                                    </form>
                                </div>
                            </div>
                        </c:forEach>

                        <div class="submit-section p-3 mt-3 bg-light rounded">
                            <div class="d-flex justify-content-between">
                                <strong>Tổng tiền:</strong>
                                <span class="font-20 text-danger fw-bold">
                                    <fmt:formatNumber value="${totalCost}" type="currency" currencySymbol="₫"/>
                                </span>
                            </div>

                            <div class="section-button col-12 mt-3">
                                <a href="${pageContext.request.contextPath}/order/info?totalCost=${totalCost}" class="btn btn-danger w-100 py-2">ĐẶT HÀNG NGAY</a>
                            </div>


                        </div>
                    </div>
                </c:otherwise>
            </c:choose>
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
