<%--
  Created by IntelliJ IDEA.
  User: LE XUAN NGOC
  Date: 1/9/2025
  Time: 6:23 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Page Not Found</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f8f9fa;
            margin: 0;
            padding: 0;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            text-align: center;
        }

        .container {
            background-color: #fff;
            padding: 40px;
            border-radius: 8px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
        }

        h1 {
            font-size: 48px;
            color: #343a40;
            margin-bottom: 20px;
        }

        p {
            font-size: 16px;
            color: #6c757d;
            margin-bottom: 20px;
        }

        a {
            color: #007bff;
            text-decoration: none;
            font-size: 16px;
        }

        a:hover {
            text-decoration: underline;
        }
    </style>
</head>
<body>
<div class="container">
    <h1>404</h1>
    <p>Thao tác của bạn bị lỗi. Vui lòng thử lại !!!</p>
    <a href="${pageContext.request.contextPath}/admin">Quay lại trang chủ</a>
</div>
</body>
</html>

