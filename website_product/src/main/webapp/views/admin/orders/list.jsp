<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: hoang
  Date: 1/8/2025
  Time: 4:09 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<table border="1">
  <thead>
  <tr>
    <th>ID</th>
    <th>User ID</th>
    <th>Trạng thái</th>
    <th>Tổng tiền</th>
    <th>Ngày tạo</th>
    <th>Hành động</th>
  </tr>
  </thead>
  <tbody>
  <c:forEach var="order" items="${orders}">
    <tr>
      <td>${order.id}</td>
      <td>${order.userId}</td>
      <td>${order.status}</td>
      <td>${order.price}</td>
      <td>${order.createdAt}</td>
      <td>
        <a href="/admin/orders?action=edit&id=${order.id}">Cập nhật</a>
      </td>
    </tr>
  </c:forEach>
  </tbody>
</table>

</body>
</html>
