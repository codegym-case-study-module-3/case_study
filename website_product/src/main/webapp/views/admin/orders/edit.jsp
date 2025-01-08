<%--
  Created by IntelliJ IDEA.
  User: hoang
  Date: 1/8/2025
  Time: 4:10 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<form method="post" action="/admin/orders?action=update">
  <input type="hidden" name="id" value="${order.id}">
  <label for="status">Trạng thái:</label>
  <select id="status" name="status">
    <option value="0" ${order.status == 0 ? 'selected' : ''}>Đang chờ xử lý</option>
    <option value="1" ${order.status == 1 ? 'selected' : ''}>Đang giao</option>
    <option value="2" ${order.status == 2 ? 'selected' : ''}>Đã hoàn thành</option>
    <option value="3" ${order.status == 3 ? 'selected' : ''}>Đã hủy</option>
  </select>
  <button type="submit">Cập nhật</button>
</form>

</body>
</html>
