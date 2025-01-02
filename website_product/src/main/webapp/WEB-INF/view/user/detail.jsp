<%--
  Created by IntelliJ IDEA.
  User: Admin
  Date: 1/2/2025
  Time: 11:37 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<html>
<head>
    <title>Chi tiết sản phẩm</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
    <link rel="stylesheet" href="resources/plugins/fontawesome/css/all.css">
    <link rel="stylesheet" href="resources/css/styles.css">
    <link rel="stylesheet" href="resources/css/main.css">
</head>
<body>
<jsp:include page="layout/header.jsp" />
<div class="container">
    <div class="content-header">
        <div class="container-fluid">
            <div class="row pt-3 pb-4">
                <div class="col-sm-6">
                    <h5 class="page-title m-0">
                        <a class="text-primary" href="/dashboard"><i class="fa-solid fa-house"></i><span>Trang chủ</span></a>
                        <span class="px-3">/</span>
                        <a class="text-primary" href="/list"><span>Laptop</span></a>
                        <span class="px-3">/</span>
                        <span>Laptop Lenovo V14 G4 IRU 83A000BHVN</span>
                    </h5>
                </div><!-- /.col -->
            </div><!-- /.row -->
        </div><!-- /.container-fluid -->
    </div>
    <div class="content">
        <div class="container-fluid">
            <div class="row">
                <div class="col-12">
                    <div class="card card-default">
                        <div class="card-body">
                            <div class="row">
                                <div class="col-lg-5 col-12">
                                    <div class="pic-frame">
                                        <img src="resources\images\20241230205000.png">
                                    </div>
                                </div>
                                <div class="col-lg-7 col-12">
                                    <div class="pro-top mb-3">
                                        <div class="pb-2">
                                            <h5>Laptop Lenovo V14 G4 IRU 83A000BHVN</h5>
                                        </div>
                                        <div class="pro-rating">
                                            <span class="number-rating">0.0</span>
                                            <span class="icon-rating">
                                            <i class="fa-solid fa-star"></i>
                                        </span>
                                            <span class="count-rating">(0 đánh giá)</span>
                                        </div>
                                    </div>
                                    <div class="pro-bottom">
                                        <div class="product-price mb-3">
                                            <span class="pro-price a">13.790.000₫</span>
                                        </div>
                                        <div class="product-button d-flex">
                                            <button class="btn btn-danger py-2" style="width: 400px">
                                                <h5 class="text-white mb-0">MUA NGAY</h5>
                                                <span class="font-14">Gia tận nơi hoặc nhận tại cửa hàng</span>
                                            </button>
                                        </div>
                                        <div class="product-preferential mt-4 font-18">
                                            <p>✔ Bảo hành chính hãng 24 tháng. </p>
                                            <p>✔ Hỗ trợ đổi mới trong 7 ngày. </p>
                                            <p>✔ Miễn phí giao hàng toàn quốc. </p>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="row my-4">
                <div class="col-12 col-lg-7">
                    <div class="card card-default">
                        <div class="card-body mt-3">
                            <div class="row">
                                <div class="product-heading p-3">
                                    <h3>Thông tin sản phẩm</h3>
                                </div>
                                <div class="product-info">
                                    <h3>Thông số kỹ thuật: </h3>
                                    <div class="table-responsive">
                                        <table class="table table-valign-middle">
                                            <tbody>
                                                <tr>
                                                    <td style="width: 25%">CPU</td>
                                                    <td>Intel® Core™ i7-13620H Processor 2.4 GHz (24M  Cache, up to 4.9 GHz, 10 cores: 6 P-cores and 4 E-cores)</td>
                                                </tr>
                                                <tr>
                                                    <td>RAM</td>
                                                    <td>16GB (2x8GB) DDR5 4800MHz (2x SO-DIMM socket, up to 32GB SDRAM)</td>
                                                </tr>
                                                <tr>
                                                    <td>Ổ cứng</td>
                                                    <td>512GB PCIe® 4.0 NVMe™ M.2 SSD (2230) (Còn trống 1 khe SSD M.2 PCIE)</td>
                                                </tr>
                                                <tr>
                                                    <td>Card đồ họa</td>
                                                    <td>NVIDIA® GeForce RTX™ 4050 6GB GDDR6, Up to 2420MHz* at 140W (2370MHz Boost Clock+50MHz OC, 115W+25W Dynamic Boost)</td>
                                                </tr>
                                                <tr>
                                                    <td>Màn hình</td>
                                                    <td>15.6" FHD (1920 x 1080) IPS, 144Hz, Wide View, 250nits, Narrow Bezel, Non-Glare with 72% NTSC, 100% sRGB, 75.35% Adobe RGB, G-Sync</td>
                                                </tr>
                                                <tr>
                                                    <td>Cổng giao tiếp</td>
                                                    <td>
                                                        ・1x Thunderbolt™ 4 support DisplayPort™<br/>
                                                        ・1x USB 3.2 Gen 2 Type-C support DisplayPort™ / power delivery / G-SYNC<br/>
                                                        ・2x USB 3.2 Gen 1 Type-A<br/>
                                                        ・1x RJ45 LAN port<br/>
                                                        ・1x HDMI 2.1 FRL<br/>
                                                        ・1x 3.5mm Combo Audio Jack<br/>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td>Audio</td>
                                                    <td>2-speaker system, Dolby Atmos</td>
                                                </tr>
                                                <tr>
                                                    <td>Bàn phím</td>
                                                    <td>Backlit Chiclet Keyboard RGB</td>
                                                </tr>
                                                <tr>
                                                    <td>Chuẩn LAN</td>
                                                    <td>802.11AX (2X2)</td>
                                                </tr>
                                                <tr>
                                                    <td>Bluetooth</td>
                                                    <td>v5.2</td>
                                                </tr>
                                                <tr>
                                                    <td>Webcam</td>
                                                    <td>HD 720p</td>
                                                </tr>
                                                <tr>
                                                    <td>Hệ điều hành</td>
                                                    <td>Windows 11 Home</td>
                                                </tr>
                                                <tr>
                                                    <td>Pin</td>
                                                    <td>4 Cell 90WHr</td>
                                                </tr>
                                                <tr>
                                                    <td>Trọng lượng</td>
                                                    <td>2.2 kg</td>
                                                </tr>
                                                <tr>
                                                    <td>Màu sắc</td>
                                                    <td>Jaeger Gray</td>
                                                </tr>
                                                <tr>
                                                    <td>Chất liệu</td>
                                                    <td>Vỏ nhựa cứng</td>
                                                </tr>
                                                <tr>
                                                    <td>Kích thước</td>
                                                    <td>35.4 x 25.1 x 2.24 ~ 2.49 cm</td>
                                                </tr>
                                            </tbody>
                                        </table>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-12 col-lg-5">
                    <div class="card card-default">
                        <div class="card-body">
                            <div class="product-heading p-3">
                                <h3>Sản phẩm tương tự</h3>
                            </div>
                            <div class="product-list">
                                <div class="pro-loop d-flex">
                                    <div class="product-img">
                                        <img src="resources/images/20241230205000.png">
                                    </div>
                                    <div class="other-product-info">
                                        <div class="pro-detail">
                                            <h3 class="pro-name ms-0">
                                                <a href="#">Laptop Lenovo V14 G4 IRU 83A000BHVN</a>
                                            </h3>
                                            <div class="pro-price">
                                                <span class="text-danger"><fmt:formatNumber type="number" maxFractionDigits="3" value="13790000" />₫</span>
                                            </div>
                                            <div class="pro-rating mt-2">
                                                <span class="number-rating">0.0</span>
                                                <span class="icon-rating">
                                                                <i class="fa-solid fa-star"></i>
                                                            </span>
                                                <span class="count-rating">(0 đánh giá)</span>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="pro-loop d-flex">
                                    <div class="product-img">
                                        <img src="resources/images/20241230205000.png">
                                    </div>
                                    <div class="other-product-info">
                                        <div class="pro-detail">
                                            <h3 class="pro-name ms-0">
                                                <a href="#">Laptop Lenovo V14 G4 IRU 83A000BHVN</a>
                                            </h3>
                                            <div class="pro-price">
                                                <span class="text-danger"><fmt:formatNumber type="number" maxFractionDigits="3" value="13790000" />₫</span>
                                            </div>
                                            <div class="pro-rating mt-2">
                                                <span class="number-rating">0.0</span>
                                                <span class="icon-rating">
                                                                <i class="fa-solid fa-star"></i>
                                                            </span>
                                                <span class="count-rating">(0 đánh giá)</span>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="pro-loop d-flex">
                                    <div class="product-img">
                                        <img src="resources/images/20241230205000.png">
                                    </div>
                                    <div class="other-product-info">
                                        <div class="pro-detail">
                                            <h3 class="pro-name ms-0">
                                                <a href="#">Laptop Lenovo V14 G4 IRU 83A000BHVN</a>
                                            </h3>
                                            <div class="pro-price">
                                                <span class="text-danger"><fmt:formatNumber type="number" maxFractionDigits="3" value="13790000" />₫</span>
                                            </div>
                                            <div class="pro-rating mt-2">
                                                <span class="number-rating">0.0</span>
                                                <span class="icon-rating">
                                                                <i class="fa-solid fa-star"></i>
                                                            </span>
                                                <span class="count-rating">(0 đánh giá)</span>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="pro-loop d-flex">
                                    <div class="product-img">
                                        <img src="resources/images/20241230205000.png">
                                    </div>
                                    <div class="other-product-info">
                                        <div class="pro-detail">
                                            <h3 class="pro-name ms-0">
                                                <a href="#">Laptop Lenovo V14 G4 IRU 83A000BHVN</a>
                                            </h3>
                                            <div class="pro-price">
                                                <span class="text-danger"><fmt:formatNumber type="number" maxFractionDigits="3" value="13790000" />₫</span>
                                            </div>
                                            <div class="pro-rating mt-2">
                                                <span class="number-rating">0.0</span>
                                                <span class="icon-rating">
                                                                <i class="fa-solid fa-star"></i>
                                                            </span>
                                                <span class="count-rating">(0 đánh giá)</span>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="pro-loop d-flex">
                                    <div class="product-img">
                                        <img src="resources/images/20241230205000.png">
                                    </div>
                                    <div class="other-product-info">
                                        <div class="pro-detail">
                                            <h3 class="pro-name ms-0">
                                                <a href="#">Laptop Lenovo V14 G4 IRU 83A000BHVN</a>
                                            </h3>
                                            <div class="pro-price">
                                                <span class="text-danger"><fmt:formatNumber type="number" maxFractionDigits="3" value="13790000" />₫</span>
                                            </div>
                                            <div class="pro-rating mt-2">
                                                <span class="number-rating">0.0</span>
                                                <span class="icon-rating">
                                                                <i class="fa-solid fa-star"></i>
                                                            </span>
                                                <span class="count-rating">(0 đánh giá)</span>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="pro-loop d-flex">
                                    <div class="product-img">
                                        <img src="resources/images/20241230205000.png">
                                    </div>
                                    <div class="other-product-info">
                                        <div class="pro-detail">
                                            <h3 class="pro-name ms-0">
                                                <a href="#">Laptop Lenovo V14 G4 IRU 83A000BHVN</a>
                                            </h3>
                                            <div class="pro-price">
                                                <span class="text-danger"><fmt:formatNumber type="number" maxFractionDigits="3" value="13790000" />₫</span>
                                            </div>
                                            <div class="pro-rating mt-2">
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
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<jsp:include page="layout/footer.jsp" />
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM"
        crossorigin="anonymous"></script>
<script src="resources/plugins/jquery/jquery.js" crossorigin="anonymous"></script>
</body>
</html>
