<%--
  Created by IntelliJ IDEA.
  User: Admin
  Date: 1/1/2025
  Time: 11:10 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<jsp:useBean id="home" class="com.codegym.website_product.bean.HomeBean" />
<html>
<head>
    <title>Trang chủ</title>
    <jsp:include page="layout/head.jsp"/>
</head>
<body>
<div class="section">
    <jsp:include page="layout/header.jsp"/>
    <div class="container">
        <div class="container-fluid">
            <div class="col-12 py-2">
                <div class="row bg-white">
                    <div class="col-lg-3 d-none d-lg-block">
                        <div>
                            <ul>
                                <li class="item-submenu sm-1">
                                    <a href="#">
                        <span class="sidebar-icon-left">
                          <i class="fa-solid fa-laptop"></i>
                        </span>
                                        <span class="sidebar-text-center">Laptop</span>
                                        <span class="sidebar-icon-right">
                          <i class="fa-solid fa-chevron-right"></i>
                        </span>
                                    </a>
                                </li>
                                <li class="item-submenu sm-1">
                                    <a href="#">
                        <span class="sidebar-icon-left">
                          <i class="fa-solid fa-gamepad"></i>
                        </span>
                                        <span class="sidebar-text-center">Laptop Gaming</span>
                                        <span class="sidebar-icon-right">
                          <i class="fa-solid fa-chevron-right"></i>
                        </span>
                                    </a>
                                </li>
                                <li class="item-submenu sm-1">
                                    <a href="#">
                        <span class="sidebar-icon-left">
                          <i class="fa-solid fa-desktop"></i>
                        </span>
                                        <span class="sidebar-text-center">PC</span>
                                        <span class="sidebar-icon-right">
                          <i class="fa-solid fa-chevron-right"></i>
                        </span>
                                    </a>
                                </li>
                                <li class="item-submenu sm-1">
                                    <a href="#">
                        <span class="sidebar-icon-left">
                          <i class="fa-solid fa-desktop"></i>
                        </span>
                                        <span class="sidebar-text-center">Main, CPU, VGA</span>
                                        <span class="sidebar-icon-right">
                          <i class="fa-solid fa-chevron-right"></i>
                        </span>
                                    </a>
                                </li>
                                <li class="item-submenu sm-1">
                                    <a href="#">
                        <span class="sidebar-icon-left">
                          <i class="fa-solid fa-desktop"></i>
                        </span>
                                        <span class="sidebar-text-center">Case, Nguồn, Tản</span>
                                        <span class="sidebar-icon-right">
                          <i class="fa-solid fa-chevron-right"></i>
                        </span>
                                    </a>
                                </li>
                                <li class="item-submenu sm-1">
                                    <a href="#">
                        <span class="sidebar-icon-left">
                          <i class="fa-solid fa-memory"></i>
                        </span>
                                        <span class="sidebar-text-center">Ổ cứng, RAM, Thẻ nhớ</span>
                                        <span class="sidebar-icon-right">
                          <i class="fa-solid fa-chevron-right"></i>
                        </span>
                                    </a>
                                </li>
                                <li class="item-submenu sm-1">
                                    <a href="#">
                        <span class="sidebar-icon-left">
                          <i class="fa-solid fa-laptop"></i>
                        </span>
                                        <span class="sidebar-text-center">Loa, Micro, Webcam</span>
                                        <span class="sidebar-icon-right">
                          <i class="fa-solid fa-chevron-right"></i>
                        </span>
                                    </a>
                                </li>
                                <li class="item-submenu sm-1">
                                    <a href="#">
                        <span class="sidebar-icon-left">
                          <i class="fa-solid fa-tv"></i>
                        </span>
                                        <span class="sidebar-text-center">Màn hình</span>
                                        <span class="sidebar-icon-right">
                          <i class="fa-solid fa-chevron-right"></i>
                        </span>
                                    </a>
                                </li>
                                <li class="item-submenu sm-1">
                                    <a href="#">
                        <span class="sidebar-icon-left">
                          <i class="fa-regular fa-keyboard"></i>
                        </span>
                                        <span class="sidebar-text-center">Bàn phím</span>
                                        <span class="sidebar-icon-right">
                          <i class="fa-solid fa-chevron-right"></i>
                        </span>
                                    </a>
                                </li>
                                <li class="item-submenu sm-1">
                                    <a href="#">
                        <span class="sidebar-icon-left">
                          <i class="fa-solid fa-computer-mouse"></i>
                        </span>
                                        <span class="sidebar-text-center">Chuột + Lót chuột</span>
                                        <span class="sidebar-icon-right">
                          <i class="fa-solid fa-chevron-right"></i>
                        </span>
                                    </a>
                                </li>
                                <li class="item-submenu sm-1">
                                    <a href="#">
                        <span class="sidebar-icon-left">
                          <i class="fa-solid fa-headphones"></i>
                        </span>
                                        <span class="sidebar-text-center">Tai Nghe</span>
                                        <span class="sidebar-icon-right">
                          <i class="fa-solid fa-chevron-right"></i>
                        </span>
                                    </a>
                                </li>
                                <li class="item-submenu sm-1">
                                    <a href="#">
                        <span class="sidebar-icon-left">
                          <i class="fa-solid fa-chair"></i>
                        </span>
                                        <span class="sidebar-text-center">Ghế - Bàn</span>
                                        <span class="sidebar-icon-right">
                          <i class="fa-solid fa-chevron-right"></i>
                        </span>
                                    </a>
                                </li>
                                <li class="item-submenu sm-1">
                                    <a href="#">
                        <span class="sidebar-icon-left">
                          <i class="fa-solid fa-print"></i>
                        </span>
                                        <span class="sidebar-text-center">Phần mềm, mạng</span>
                                        <span class="sidebar-icon-right">
                          <i class="fa-solid fa-chevron-right"></i>
                        </span>
                                    </a>
                                </li>
                                <li class="item-submenu sm-1">
                                    <a href="#">
                        <span class="sidebar-icon-left">
                          <i class="fa-solid fa-gamepad"></i>
                        </span>
                                        <span class="sidebar-text-center">Handheld, Console</span>
                                        <span class="sidebar-icon-right">
                          <i class="fa-solid fa-chevron-right"></i>
                        </span>
                                    </a>
                                </li>
                                <li class="item-submenu sm-1">
                                    <a href="#">
                        <span class="sidebar-icon-left">
                          <i class="fa-solid fa-gamepad"></i>
                        </span>
                                        <span class="sidebar-text-center">Phụ kiện (Hub, sạc, cáp..)</span>
                                        <span class="sidebar-icon-right">
                          <i class="fa-solid fa-chevron-right"></i>
                        </span>
                                    </a>
                                </li>
                                <li class="item-submenu sm-1">
                                    <a href="#">
                        <span class="sidebar-icon-left">
                          <i class="fa-solid fa-gift"></i>
                        </span>
                                        <span class="sidebar-text-center">Dịch vụ và thông tin khác</span>
                                        <span class="sidebar-icon-right">
                          <i class="fa-solid fa-chevron-right"></i>
                        </span>
                                    </a>
                                </li>
                            </ul>
                        </div>
                    </div>
                    <div class="col-lg-9">
                        <div id="carouselBanner" class="carousel slide" data-bs-ride="carousel">
                            <div class="carousel-indicators">
                                <button type="button" data-bs-target="#carouselBanner" data-bs-slide-to="0"
                                        class="active bg-danger" aria-current="true" aria-label="Slide 1"></button>
                                <button type="button" data-bs-target="#carouselBanner" data-bs-slide-to="1"
                                        class="bg-danger" aria-label="Slide 2"></button>
                                <button type="button" data-bs-target="#carouselBanner" data-bs-slide-to="2"
                                        class="bg-danger" aria-label="Slide 3"></button>
                                <button type="button" data-bs-target="#carouselBanner" data-bs-slide-to="3"
                                        class="bg-danger" aria-label="Slide 4"></button>
                                <button type="button" data-bs-target="#carouselBanner" data-bs-slide-to="4"
                                        class="bg-danger" aria-label="Slide 5"></button>
                                <button type="button" data-bs-target="#carouselBanner" data-bs-slide-to="5"
                                        class="bg-danger" aria-label="Slide 6"></button>
                                <button type="button" data-bs-target="#carouselBanner" data-bs-slide-to="6"
                                        class="bg-danger" aria-label="Slide 7"></button>
                                <button type="button" data-bs-target="#carouselBanner" data-bs-slide-to="7"
                                        class="bg-danger" aria-label="Slide 8"></button>
                                <button type="button" data-bs-target="#carouselBanner" data-bs-slide-to="8"
                                        class="bg-danger" aria-label="Slide 9"></button>
                                <button type="button" data-bs-target="#carouselBanner" data-bs-slide-to="9"
                                        class="bg-danger" aria-label="Slide 10"></button>
                            </div>
                            <div class="carousel-inner">
                                <div class="carousel-item active">
                                    <img src="../../resources/images/dashboard/image1.png" class="d-block w-100"
                                         alt="resources/images/dashboard/image1.png">
                                </div>
                                <div class="carousel-item">
                                    <img src="../../resources/images/dashboard/image2.png" class="d-block w-100"
                                         alt="resources/images/dashboard/image2.png">
                                </div>
                                <div class="carousel-item">
                                    <img src="../../resources/images/dashboard/image3.png" class="d-block w-100"
                                         alt="resources/images/dashboard/image3.png">
                                </div>
                                <div class="carousel-item">
                                    <img src="../../resources/images/dashboard/image4.png" class="d-block w-100"
                                         alt="resources/images/dashboard/image4.png">
                                </div>
                                <div class="carousel-item">
                                    <img src="../../resources/images/dashboard/image5.png" class="d-block w-100"
                                         alt="resources/images/dashboard/image5.png">
                                </div>
                                <div class="carousel-item">
                                    <img src="../../resources/images/dashboard/image6.png" class="d-block w-100"
                                         alt="resources/images/dashboard/image6.png">
                                </div>
                                <div class="carousel-item">
                                    <img src="../../resources/images/dashboard/image7.png" class="d-block w-100"
                                         alt="resources/images/dashboard/image7.png">
                                </div>
                                <div class="carousel-item">
                                    <img src="../../resources/images/dashboard/image8.png" class="d-block w-100"
                                         alt="resources/images/dashboard/image8.png">
                                </div>
                                <div class="carousel-item">
                                    <img src="../../resources/images/dashboard/image9.png" class="d-block w-100"
                                         alt="resources/images/dashboard/image9.png">
                                </div>
                                <div class="carousel-item">
                                    <img src="../../resources/images/dashboard/image10.png" class="d-block w-100"
                                         alt="resources/images/dashboard/image10.png">
                                </div>
                            </div>
                            <button class="carousel-control-prev" type="button" data-bs-target="#carouselBanner"
                                    data-bs-slide="prev">
                                <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                                <span class="visually-hidden">Previous</span>
                            </button>
                            <button class="carousel-control-next" type="button" data-bs-target="#carouselBanner"
                                    data-bs-slide="next">
                                <span class="carousel-control-next-icon" aria-hidden="true"></span>
                                <span class="visually-hidden">Next</span>
                            </button>
                        </div>
                    </div>
                </div>
                <div class="row my-3 py-3 bg-white">
                    <div class="section-header">
                        <div class="box-left">
                            <div class="box-header">
                                <h2 class="h-title">
                                    <a href="#">Laptop</a>
                                </h2>
                            </div>
                            <div class="box-sub-header">
                                <h3 class="sh-title">
                                    <i class="fa-solid fa-truck text-danger"></i>
                                    <span class="ps-2">Trả góp 0%</span>
                                </h3>
                            </div>
                        </div>
                    </div>
                    <div class="section-body">
                        <div class="body-content">
                            <c:forEach items="${home.laptops}" var="laptop" varStatus="temp">
                            <div class="col-lg-3 col-6 pb-4">
                                <a href="#" class="pe-auto">
                                    <div class="pro-img">
                                        <img src="${laptop.image}">
                                    </div>
                                    <div class="pro-detail">
                                        <h3 class="pro-name">
                                            <a href="#">${laptop.name}</a>
                                        </h3>
                                        <div class="pro-price">
                                        <span class="text-danger"><fmt:formatNumber type="number" maxFractionDigits="3" value="${laptop.price}" pattern=""/>₫</span>
                                        </div>
                                        <div class="pro-rating">
                                            <span class="number-rating">0.0</span>
                                            <span class="icon-rating">
                                                        <i class="fa-solid fa-star"></i>
                                                    </span>
                                            <span class="count-rating">(0 đánh giá)</span>
                                        </div>
                                    </div>
                                </a>
                            </div>
                            </c:forEach>
                        </div>
                    </div>
                </div>
                <div class="row my-3 py-3 bg-white">
                    <div class="section-header">
                        <div class="box-left">
                            <div class="box-header">
                                <h2 class="h-title">
                                    <a href="#">Màn hình</a>
                                </h2>
                            </div>
                            <div class="box-sub-header">
                                <h3 class="sh-title">
                                    <i class="fa-solid fa-truck text-danger"></i>
                                    <span class="ps-2">Bảo hành 1 đổi 1</span>
                                </h3>
                            </div>
                        </div>
                    </div>
                    <div class="section-body">
                        <div class="body-content">
                            <div class="col-lg-3 col-6 pb-4">
                                <div class="pro-img">
                                    <img src="../../resources/images/20241230205000.png">
                                </div>
                                <div class="pro-detail">
                                    <h3 class="pro-name">
                                        <a href="#">Laptop Lenovo V14 G4 IRU 83A000BHVN</a>
                                    </h3>
                                    <div class="pro-price">
                                        <span class="text-danger"><fmt:formatNumber type="number" maxFractionDigits="3"
                                                                                    value="13790000"/>₫</span>
                                    </div>
                                    <div class="pro-rating">
                                        <span class="number-rating">0.0</span>
                                        <span class="icon-rating">
                                                        <i class="fa-solid fa-star"></i>
                                                    </span>
                                        <span class="count-rating">(0 đánh giá)</span>
                                    </div>
                                </div>
                            </div>
                            <div class="col-lg-3 col-6 pb-4">
                                <div class="pro-img">
                                    <img src="../../resources/images/20241230205000.png">
                                </div>
                                <div class="pro-detail">
                                    <h3 class="pro-name">
                                        <a href="#">Laptop Lenovo V14 G4 IRU 83A000BHVN</a>
                                    </h3>
                                    <div class="pro-price">
                                        <span class="text-danger"><fmt:formatNumber type="number" maxFractionDigits="3"
                                                                                    value="13790000"/>₫</span>
                                    </div>
                                    <div class="pro-rating">
                                        <span class="number-rating">0.0</span>
                                        <span class="icon-rating">
                                                        <i class="fa-solid fa-star"></i>
                                                    </span>
                                        <span class="count-rating">(0 đánh giá)</span>
                                    </div>
                                </div>
                            </div>
                            <div class="col-lg-3 col-6 pb-4">
                                <div class="pro-img">
                                    <img src="../../resources/images/20241230205000.png">
                                </div>
                                <div class="pro-detail">
                                    <h3 class="pro-name">
                                        <a href="#">Laptop Lenovo V14 G4 IRU 83A000BHVN</a>
                                    </h3>
                                    <div class="pro-price">
                                        <span class="text-danger"><fmt:formatNumber type="number" maxFractionDigits="3"
                                                                                    value="13790000"/>₫</span>
                                    </div>
                                    <div class="pro-rating">
                                        <span class="number-rating">0.0</span>
                                        <span class="icon-rating">
                                                        <i class="fa-solid fa-star"></i>
                                                    </span>
                                        <span class="count-rating">(0 đánh giá)</span>
                                    </div>
                                </div>
                            </div>
                            <div class="col-lg-3 col-6 pb-4">
                                <div class="pro-img">
                                    <img src="../../resources/images/20241230205000.png">
                                </div>
                                <div class="pro-detail">
                                    <h3 class="pro-name">
                                        <a href="#">Laptop Lenovo V14 G4 IRU 83A000BHVN</a>
                                    </h3>
                                    <div class="pro-price">
                                        <span class="text-danger"><fmt:formatNumber type="number" maxFractionDigits="3"
                                                                                    value="13790000"/>₫</span>
                                    </div>
                                    <div class="pro-rating">
                                        <span class="number-rating">0.0</span>
                                        <span class="icon-rating">
                                                        <i class="fa-solid fa-star"></i>
                                                    </span>
                                        <span class="count-rating">(0 đánh giá)</span>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="row my-3 py-3 bg-white">
                    <div class="section-header">
                        <div class="box-left">
                            <div class="box-header">
                                <h2 class="h-title">
                                    <a href="#">Chuột</a>
                                </h2>
                            </div>
                            <div class="box-sub-header">
                                <h3 class="sh-title">
                                    <i class="fa-solid fa-truck text-danger"></i>
                                    <span class="ps-2">Giao hàng toàn quốc</span>
                                </h3>
                            </div>
                        </div>
                    </div>
                    <div class="section-body">
                        <div class="body-content">
                            <c:forEach items="${home.mouses}" var="mouse" varStatus="temp">
                                <a class="pe-auto" href="#">
                                    <div class="col-lg-3 col-6 pb-4">
                                        <div class="pro-img">
                                            <img src="${mouse.image}">
                                        </div>
                                        <div class="pro-detail">
                                            <h3 class="pro-name">
                                                <a href="#">${mouse.name}</a>
                                            </h3>
                                            <div class="pro-price">
                                                <span class="text-danger"><fmt:formatNumber type="number" maxFractionDigits="3"
                                                                                            value="${mouse.price}"/>₫</span>
                                            </div>
                                            <div class="pro-rating">
                                                <span class="number-rating">0.0</span>
                                                <span class="icon-rating">
                                                                <i class="fa-solid fa-star"></i>
                                                            </span>
                                                <span class="count-rating">(0 đánh giá)</span>
                                            </div>
                                        </div>
                                    </div>
                                </a>
                            </c:forEach>
                        </div>
                    </div>
                </div>
                <div class="row my-3 py-3 bg-white">
                    <div class="section-header">
                        <div class="box-left">
                            <div class="box-header">
                                <h2 class="h-title">
                                    <a href="#">Bàn phím</a>
                                </h2>
                            </div>
                            <div class="box-sub-header">
                                <h3 class="sh-title">
                                    <i class="fa-solid fa-truck text-danger"></i>
                                    <span class="ps-2">Miễn phí giao hàng</span>
                                </h3>
                            </div>
                        </div>
                    </div>
                    <div class="section-body">
                        <div class="body-content">
                            <c:forEach items="${home.keyboards}" var="keyboard" varStatus="temp">
                                <a class="pe-auto" href="#">
                                    <div class="col-lg-3 col-6 pb-4">
                                        <div class="pro-img">
                                            <img src="${keyboard.image}">
                                        </div>
                                        <div class="pro-detail">
                                            <h3 class="pro-name">
                                                <a href="#">${keyboard.name}</a>
                                            </h3>
                                            <div class="pro-price">
                                                <span class="text-danger"><fmt:formatNumber type="number" maxFractionDigits="3"
                                                                                            value="${keyboard.price}"/>₫</span>
                                            </div>
                                            <div class="pro-rating">
                                                <span class="number-rating">0.0</span>
                                                <span class="icon-rating">
                                                                <i class="fa-solid fa-star"></i>
                                                            </span>
                                                <span class="count-rating">(0 đánh giá)</span>
                                            </div>
                                        </div>
                                    </div>
                                </a>
                            </c:forEach>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <jsp:include page="layout/footer.jsp"/>
    <jsp:include page="modal/modal_login.jsp"/>
    <jsp:include page="modal/modal_register.jsp"/>
</div>
<jsp:include page="layout/script.jsp"/>
</body>
</html>
