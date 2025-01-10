<%--
  Created by IntelliJ IDEA.
  User: LE XUAN NGOC
  Date: 1/6/2025
  Time: 10:48 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<div class="modal fade" id="modal-create" tabindex="-1" aria-labelledby="exampleModalLabel"
     aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <h1 class="modal-title fs-5" id="exampleModalLabel">THÔNG TIN:</h1>
                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
            </div>
            <div class="modal-body">
                <form method="post">
                    <div class="mb-3">
                        <label for="email" class="form-label">Email</label>
                        <input type="email" class="form-control" id="email" name="email" required>
                    </div>
                    <div class="mb-3">
                        <label for="password" class="form-label">Mật khẩu</label>
                        <input type="password" class="form-control" id="password" name="password" required>
                    </div>

                    <div class="mb-3">
                        <label for="confirmPassword" class="form-label">Xác nhận mật khẩu</label>
                        <input type="password" class="form-control" id="confirmPassword"
                               name="confirmPassword" required>
                    </div>

                    <div class="mb-3">
                        <label for="role" class="form-label">Role</label>
                        <select class="form-select" id="role" name="role" required>
                            <option value="user">Admin</option>

                        </select>
                    </div>

                    <button style="width: 100%" type="submit" class="btn btn-primary"
                            data-bs-dismiss="modal"
                    >Tạo mới
                    </button>
                    <!-- Toast Container -->
                    <div class="toast-container position-fixed bottom-0 end-0 p-3" style="z-index: 11">
                        <div id="successToast" class="toast" role="alert" aria-live="assertive" aria-atomic="true">
                            <div class="toast-header"><strong class="me-auto">Thông báo</strong>
                                <button type="button" class="btn-close" data-bs-dismiss="toast"
                                        aria-label="Close"></button>
                            </div>
                            <div class="toast-body"> Tạo mới thành công!</div>
                        </div>
                    </div>
                </form>
            </div>

        </div>
    </div>
</div>