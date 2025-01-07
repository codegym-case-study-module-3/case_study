<%--
  Created by IntelliJ IDEA.
  User: Admin
  Date: 1/6/2025
  Time: 6:21 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<div class="modal fade" id="modalLogin" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="titleModalLogin">Đăng nhập</h5>
                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
            </div>
            <div class="modal-body">
                <form id="form_login" class="" action="" method="post">
                    <div class="row form-group align-items-center mb-2">
                        <label class="col-11 col-form-label" for="email">Email</label>
                        <div class="col-12">
                            <input type="text" class="form-control form-control-sm" placeholder="Nhập email" id="email" name="email"
                                   value="" />
                        </div>
                    </div>
                    <div class="row form-group align-items-center mb-2">
                        <label class="col-11 col-form-label" for="password">Mật khẩu</label>
                        <div class="col-12">
                            <input type="password" class="form-control form-control-sm" placeholder="Nhập mật khẩu" id="password" name="password"
                                   value="" />
                        </div>
                    </div>
                </form>
                <div class="col-12 pt-2">
                    <div class="text-danger error-message font-18 font-weight-bold"></div>
                </div>
            </div>
            <div class="modal-footer">
                <div class="col-12">
                    <button type="button" id="btn_login" class="btn btn-danger w-100">ĐĂNG NHẬP</button>
                </div>
            </div>
        </div>
    </div>
</div>
