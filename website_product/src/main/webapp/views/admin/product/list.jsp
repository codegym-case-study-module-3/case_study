<%--
  Created by IntelliJ IDEA.
  User: hoang
  Date: 1/6/2025
  Time: 8:40 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>


<%--
  Created by IntelliJ IDEA.
  User: mac
  Date: 23/12/2024
  Time: 18:57
  To change this template use File | Settings | File Templates.
--%>


<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Danh sách học sinh</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
</head>
<body>

<div class="container">
    <button class="btn btn-primary" onclick="window.location.href='/product?action=create'"
    >Thêm mới</button>

    <table class="table table-hover">

        <thead>
        <tr>
            <th>STT</th>
            <th>Tên</th>
            <th>description</th>
            <th>price</th>
            <th>stock</th>
            <th>image</th>
            <th>category_id</th>
            <th>created_at</th>
            <th colspan="2">Chức năng</th>
        </tr>
        </thead>
        <tbody>
        <c:forEach items="${products}" var="product" varStatus="temp">
            <tr>
                <td>${temp.count}</td>
                <td>${product.name}</td>
                <td>${product.description}</td>
                <td>${product.price}</td>
                <td>${product.stock}</td>
                <td>${product.image}</td>
                <td>${product.category_id}</td>
                <td>${product.created_at}</td>
                <td>
                    <button class="btn btn-warning"
                            onclick="window.location.href='/product?action=update&id=${product.id}'">Sửa</button>

                </td>
                <td>
                    <button class="btn btn-danger"
                            data-bs-toggle="modal" data-bs-target="#modalDelete${product.id}">
                        Xóa
                    </button>
                </td>
                <div class="modal fade" id="modalDelete${product.id}" tabindex="-1"
                     aria-labelledby="exampleModalLabel" aria-hidden="true">
                    <div class="modal-dialog">
                        <div class="modal-content">
                            <div class="modal-header">
                                <h5 class="modal-title" id="exampleModalLabel">Xóa </h5>
                                <button type="button" class="btn-close" data-bs-dismiss="modal"
                                        aria-label="Close"></button>
                            </div>
                            <div class="modal-body">
                                <p>Bạn có chắc muốn xóa học sinh có tên là ${product.name} và id là ${product.id}?</p>
                                <small style="color: red; font-style: italic">Lưu ý hành động này không thể hoàn
                                    tác!</small>
                            </div>
                            <div class="modal-footer">
                                <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Đóng</button>
                                <button type="button" class="btn btn-danger"
                                        onclick="window.location.href='/product?action=delete&id=${product.id}'">Xác
                                    nhận
                                </button>
                            </div>
                        </div>
                    </div>
                </div>
            </tr>
        </c:forEach>
        </tbody>
    </table>
    <c:if test="${message != null}">
        <div class="alert alert-success" role="alert" id="message">
                ${message}
        </div>
    </c:if>
</div>

</body>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM"
        crossorigin="anonymous"></script>
<script>
    setTimeout(function () {
        document.getElementById("message").remove();
    },3000)
</script>
</html>

