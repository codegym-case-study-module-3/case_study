<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: LE XUAN NGOC
  Date: 1/6/2025
  Time: 10:50 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<div class="modal fade" id="modalUpdate${item.id}" tabindex="-1" aria-labelledby="exampleModalLabel"
     aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <h1 class="modal-title fs-5" id="#exampleModalLabel">Cập nhật thông tin:</h1>
                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
            </div>
            <div class="modal-body">
                <form method="post">
                    <div class="mb-3">
                        <label for="email" class="form-label">Email</label>
                        <input readonly type="email" class="form-control" id="email" name="email" required
                               value=<c:out value="${requestScope.account.email}"/>>
                    </div>
                    <div class=" mb-3">
                        <%--@declare id="password"--%><label for="password" class="form-label">Mật khẩu cũ</label>
                        <input disabled type="password" class="form-control" id="password-old"
                               name="password" required value=
                               <%--                        <c:out value="${requestScope.account.email}"/>>--%>
                                       </div>
                        <div class="mb-3">
                            <label for="password" class="form-label">Mật khẩu mới</label>
                            <input type="password" class="form-control" id="password-new1"
                                   name="password">
                        </div>
                        <div class="mb-3">
                            <label for="password" class="form-label">Xác nhận mật khẩu</label>
                            <input type="password" class="form-control" id="password-new2"
                                   name="password">
                        </div>
                        <div class="mb-3">
                            <label for="role" class="form-label">Role</label>
                            <select class="form-select" id="role" name="role" required>
                                <option value="user">Admin</option>
                            </select>
                        </div>
                        <button style="width: 100%" type="submit" class="btn btn-primary">Cập nhật</button>
                </form>
            </div>

        </div>
    </div>
</div>
