<%--
  Created by IntelliJ IDEA.
  User: hoang
  Date: 1/7/2025
  Time: 3:49 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
  <head>
    <title>Title</title>
  </head>
  <body>
  <form  method="post">
    <div class="mb-3">
      <label for="name" class="form-label">Tên sản phẩm</label>
      <input type="text" class="form-control" id="name" name="name" required>
    </div>

    <div class="mb-3">
      <label for="description" class="form-label">Mô tả</label>
      <textarea class="form-control" id="description" name="description" required></textarea>
    </div>

    <div class="mb-3">
      <label for="price" class="form-label">Giá sản phẩm</label>
      <input type="number" class="form-control" id="price" name="price" required>
    </div>

    <div class="mb-3">
      <label for="stock" class="form-label">Số lượng</label>
      <input type="number" class="form-control" id="stock" name="stock" required>
    </div>

    <div class="mb-3">
      <label for="image" class="form-label">Hình ảnh</label>
      <input type="file" class="form-control" id="image" name="image" accept="image/*">
    </div>

    <div class="mb-3">
      <label for="category_id" class="form-label">Danh mục</label>
        <input type="number" class="form-control" id="category_id" name="category_id" required>
      </div>
    </div>


    <div class="text-center">
      <button type="submit" class="btn btn-primary">Thêm sản phẩm</button>
    </div>
  </form>

  </body>
</html>
