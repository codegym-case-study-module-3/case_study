<%--
  Created by IntelliJ IDEA.
  User: Admin
  Date: 1/2/2025
  Time: 3:29 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<html>
<head>
    <title>Giỏ hàng</title>
  <jsp:include page="layout/head.jsp" />
</head>
<body>
<div class="section">
  <jsp:include page="layout/header.jsp" />
  <div class="container">
    <div class="cart-layout">
      <div class="container-fluid bg-white my-4">
        <div class="cart-main">
          <section class="section-steps">
            <div class="checkout-steplist status">
              <div class="checkout-step status-one is-active" data-box="cart-buy-order-box">
                <div class="icon">
                  <i class="fa-solid fa-bag-shopping"></i>
                </div>
                <div class="text"><span>Giỏ hàng</span></div>
              </div>
              <div class="checkout-step status-two is-active" data-box="cart-info-order-box">
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
        </div>
        <div class="cart-infos">
          <div class="info-form">
            <div class="form-input-info p-3">
              <h6>Thông tin khách mua hàng</h6>
              <form id="form-info-order" class="" action="" method="post">
                <div class="row form-group align-items-center mb-2">
                  <div class="col-12">
                    <div class="form-check form-check-inline">
                      <input class="form-check-input gender-radio" type="radio"
                             name="gender" id="gender_male" value="m" checked>
                      <label class="form-check-label" for="gender_male">Anh</label>
                    </div>
                    <div class="form-check form-check-inline">
                      <input class="form-check-input gender-radio" type="radio"
                             name="gender" id="gender_female" value="f">
                      <label class="form-check-label" for="gender_female">Chị</label>
                    </div>
                  </div>
                </div>
                <div class="row form-group align-items-center mb-2">
                  <label class="col-11 col-lg-4 col-form-label" for="full_name">Nhập họ tên</label>
                  <div class="col-12 col-lg-8">
                    <input type="text" class="form-control form-control-sm" id="full_name" name="full_name" value="" />
                  </div>
                </div>
                <div class="row form-group align-items-center mb-2">
                  <label class="col-11 col-lg-4 col-form-label" for="phone_number">Nhập số điện thoại</label>
                  <div class="col-12 col-lg-8">
                    <input type="text" class="form-control form-control-sm" id="phone_number" name="phone_number" value="" />
                  </div>
                </div>
                <h6>Chọn cách nhận hàng</h6>
                <div class="row form-group align-items-center mb-2">
                  <div class="col-12">
                    <div class="form-check form-check-inline">
                      <input class="form-check-input" type="radio"
                             name="location_choice" id="location_choice" value="1" checked>
                      <label class="form-check-label" for="location_choice">Giao hàng tận nơi</label>
                    </div>
                  </div>
                </div>
                <div class="row form-group align-items-center mb-2">
                  <label class="col-11 col-form-label" for="address">Địa chỉ nhận hàng</label>
                  <div class="col-12">
                    <input type="text" class="form-control form-control-sm" id="address" name="address" value="" />
                  </div>
                </div>
                <div class="row form-group align-items-center mb-2">
                  <label class="col-11 col-form-label" for="note">Lưu ý khác (Nếu có)</label>
                  <div class="col-12">
                    <input type="text" class="form-control form-control-sm" id="note" name="note" value="" />
                  </div>
                </div>
                <div class="row form-group align-items-center mb-2">
                  <div class="col-12">
                    <div class="form-check form-check-inline">
                      <input class="form-check-input" type="checkbox"
                             name="export_receipt" id="export_receipt" value="1">
                      <label class="form-check-label" for="export_receipt">Xuất hoá đơn cho đơn hàng</label>
                    </div>
                  </div>
                </div>
              </form>
            </div>
            <hr>
            <div class="submit-section p-3">
              <div class="total-cost d-flex justify-content-between">
                <span class="font-16">Tổng tiền: </span>
                <span class="font-20 text-danger"><b>125.000₫</b></span>
              </div>
              <div class="section-button col-12 mt-4">
                <button class="btn btn-danger w-100 py-3">ĐẶT HÀNG NGAY</button>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
  <jsp:include page="layout/footer.jsp" />
</div>

<jsp:include page="layout/script.jsp" />
</body>
</html>
