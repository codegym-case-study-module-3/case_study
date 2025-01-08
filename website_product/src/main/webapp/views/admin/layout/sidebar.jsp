<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<div id="layoutSidenav_nav">
    <nav class="sb-sidenav accordion sb-sidenav-dark" id="sidenavAccordion">
        <div class="sb-sidenav-menu">
            <div class="nav">
                <div class="sb-sidenav-menu-heading">TÍNH NĂNG</div>
                <a class="nav-link" href="${pageContext.request.contextPath}/admin">
                    <div class="sb-nav-link-icon"><i class="fa-solid fa-house-laptop"></i></div>
                    TRANG CHỦ
                </a>

                <%--                <a class="nav-link" href="${pageContext.request.contextPath}/admin/myaccount">--%>
                <%--                    <div class="sb-nav-link-icon"><i class="fa-solid fa-user"></i></div>--%>
                <%--                    MY ACCOUNT--%>
                <%--                </a>--%>

                <a class="nav-link" href="${pageContext.request.contextPath}/admin/account">
                    <div class="sb-nav-link-icon"><i class="fa-solid fa-user"></i></div>
                    QUẢN LÝ ACCOUNT
                </a>

                <a class="nav-link" href="${pageContext.request.contextPath}/admin/users">
                    <div class="sb-nav-link-icon"><i class="fa-solid fa-users"></i></div>
                    QUẢN LÝ USERS
                </a>

                <a class="nav-link" href="${pageContext.request.contextPath}/admin/product">
                    <div class="sb-nav-link-icon"><i class="fa-solid fa-list"></i></div>
                    QUẢN LÝ PRODUCT
                </a>
                <a class="nav-link" href="${pageContext.request.contextPath}/admin/bill">
                    <div class="sb-nav-link-icon"><i class="fa-solid fa-list"></i></div>
                    QUẢN LÝ HÓA ĐƠN
                </a>
            </div>
        </div>
    </nav>
</div>
