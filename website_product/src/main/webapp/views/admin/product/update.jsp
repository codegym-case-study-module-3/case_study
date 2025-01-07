<%--
  Created by IntelliJ IDEA.
  User: hoang
  Date: 1/7/2025
  Time: 8:43 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html lang="en">
<head>
    <title>Cập nhật sản phẩm</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>
<div class="container mt-5">
    <h2 class="mb-4">Cập nhật sản phẩm</h2>
    <c:if test="${error != null}">
        <div class="alert alert-danger">${error}</div>
    </c:if>
    <form action="/admin/product?action=update" method="post">
<%--        <form  method="post" action="/admin/product?action=update-save&id=${product.id}">--%>
        <input type="hidden" name="id" value="${product.id}">
        <div class="mb-3">
            <label for="name" class="form-label">Tên sản phẩm</label>
            <input type="text" class="form-control" id="name" name="name" value="${product.name}" required>
        </div>
        <div class="mb-3">
            <label for="description" class="form-label">Mô tả</label>
            <textarea class="form-control" id="description" name="description" required>${product.description}</textarea>
        </div>
        <div class="mb-3">
            <label for="price" class="form-label">Giá</label>
            <input type="number" class="form-control" id="price" name="price" value="${product.price}" required>
        </div>
        <div class="mb-3">
            <label for="stock" class="form-label">Số lượng</label>
            <input type="number" class="form-control" id="stock" name="stock" value="${product.stock}" required>
        </div>
        <div class="mb-3">
            <label for="image" class="form-label">Ảnh</label>
            <input type="text" class="form-control" id="image" name="image" value="${product.image}">
        </div>
        <div class="mb-3">
            <label for="category_id" class="form-label">Mã danh mục</label>
            <input type="number" class="form-control" id="category_id" name="category_id" value="${product.categoryId}" required>
        </div>
        <button type="submit" class="btn btn-primary">Cập nhật</button>
        <a href="/admin/product" class="btn btn-secondary">Hủy</a>
    </form>
</div>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>

