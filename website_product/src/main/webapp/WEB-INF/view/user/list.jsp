<%--
  Created by IntelliJ IDEA.
  User: Admin
  Date: 1/2/2025
  Time: 9:47 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<html>
<head>
    <title>Danh sách</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
    <link rel="stylesheet" href="resources/plugins/fontawesome/css/all.css">
    <link rel="stylesheet" href="resources/css/styles.css">
    <link rel="stylesheet" href="resources/css/main.css">
</head>
<body>
    <jsp:include page="layout/header.jsp" />
    <div class="container">
        <div class="section">
            <div class="content-header">
                <div class="container-fluid">
                    <div class="row pt-3 pb-4">
                        <div class="col-sm-6">
                            <h5 class="page-title m-0">
                                <a class="text-primary" href="/dashboard"><i class="fa-solid fa-house"></i>Trang chủ</a>
                                <span class="px-3">/</span>
                                <span>Laptop</span>
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
                                        <div class="sort-select">
                                            <label class="col-sm-2 col-lg-1 col-form-label">Sắp xếp theo</label>
                                            <div class="col-sm-3 col-lg-2">
                                                <select class="form-select" aria-label="Default select example">
                                                    <option value="0">Nổi bật</option>
                                                    <option value="1">Tên từ A - Z</option>
                                                    <option value="2">Tên từ Z - A</option>
                                                    <option value="3">Giá tăng dần</option>
                                                    <option value="4">Giá Giảm dần</option>
                                                </select>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="col-lg-3 col-6 pb-4">
                                            <div class="pro-img">
                                                <img src="resources/images/20241230205000.png">
                                            </div>
                                            <div class="pro-detail">
                                                <h3 class="pro-name">
                                                    <a href="#">Laptop Lenovo V14 G4 IRU 83A000BHVN</a>
                                                </h3>
                                                <div class="pro-price">
                                                    <span class="text-danger"><fmt:formatNumber type="number" maxFractionDigits="3" value="13790000" />₫</span>
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
                                                <img src="resources/images/20241230205000.png">
                                            </div>
                                            <div class="pro-detail">
                                                <h3 class="pro-name">
                                                    <a href="#">Laptop Lenovo V14 G4 IRU 83A000BHVN</a>
                                                </h3>
                                                <div class="pro-price">
                                                    <span class="text-danger"><fmt:formatNumber type="number" maxFractionDigits="3" value="13790000" />₫</span>
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
                                                <img src="resources/images/20241230205000.png">
                                            </div>
                                            <div class="pro-detail">
                                                <h3 class="pro-name">
                                                    <a href="#">Laptop Lenovo V14 G4 IRU 83A000BHVN</a>
                                                </h3>
                                                <div class="pro-price">
                                                    <span class="text-danger"><fmt:formatNumber type="number" maxFractionDigits="3" value="13790000" />₫</span>
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
                                                <img src="resources/images/20241230205000.png">
                                            </div>
                                            <div class="pro-detail">
                                                <h3 class="pro-name">
                                                    <a href="#">Laptop Lenovo V14 G4 IRU 83A000BHVN</a>
                                                </h3>
                                                <div class="pro-price">
                                                    <span class="text-danger"><fmt:formatNumber type="number" maxFractionDigits="3" value="13790000" />₫</span>
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
                                                <img src="resources/images/20241230205000.png">
                                            </div>
                                            <div class="pro-detail">
                                                <h3 class="pro-name">
                                                    <a href="#">Laptop Lenovo V14 G4 IRU 83A000BHVN</a>
                                                </h3>
                                                <div class="pro-price">
                                                    <span class="text-danger"><fmt:formatNumber type="number" maxFractionDigits="3" value="13790000" />₫</span>
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
                                                <img src="resources/images/20241230205000.png">
                                            </div>
                                            <div class="pro-detail">
                                                <h3 class="pro-name">
                                                    <a href="#">Laptop Lenovo V14 G4 IRU 83A000BHVN</a>
                                                </h3>
                                                <div class="pro-price">
                                                    <span class="text-danger"><fmt:formatNumber type="number" maxFractionDigits="3" value="13790000" />₫</span>
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
                                                <img src="resources/images/20241230205000.png">
                                            </div>
                                            <div class="pro-detail">
                                                <h3 class="pro-name">
                                                    <a href="#">Laptop Lenovo V14 G4 IRU 83A000BHVN</a>
                                                </h3>
                                                <div class="pro-price">
                                                    <span class="text-danger"><fmt:formatNumber type="number" maxFractionDigits="3" value="13790000" />₫</span>
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
                                                <img src="resources/images/20241230205000.png">
                                            </div>
                                            <div class="pro-detail">
                                                <h3 class="pro-name">
                                                    <a href="#">Laptop Lenovo V14 G4 IRU 83A000BHVN</a>
                                                </h3>
                                                <div class="pro-price">
                                                    <span class="text-danger"><fmt:formatNumber type="number" maxFractionDigits="3" value="13790000" />₫</span>
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
                                                <img src="resources/images/20241230205000.png">
                                            </div>
                                            <div class="pro-detail">
                                                <h3 class="pro-name">
                                                    <a href="#">Laptop Lenovo V14 G4 IRU 83A000BHVN</a>
                                                </h3>
                                                <div class="pro-price">
                                                    <span class="text-danger"><fmt:formatNumber type="number" maxFractionDigits="3" value="13790000" />₫</span>
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
                                                <img src="resources/images/20241230205000.png">
                                            </div>
                                            <div class="pro-detail">
                                                <h3 class="pro-name">
                                                    <a href="#">Laptop Lenovo V14 G4 IRU 83A000BHVN</a>
                                                </h3>
                                                <div class="pro-price">
                                                    <span class="text-danger"><fmt:formatNumber type="number" maxFractionDigits="3" value="13790000" />₫</span>
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
                                                <img src="resources/images/20241230205000.png">
                                            </div>
                                            <div class="pro-detail">
                                                <h3 class="pro-name">
                                                    <a href="#">Laptop Lenovo V14 G4 IRU 83A000BHVN</a>
                                                </h3>
                                                <div class="pro-price">
                                                    <span class="text-danger"><fmt:formatNumber type="number" maxFractionDigits="3" value="13790000" />₫</span>
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
                                                <img src="resources/images/20241230205000.png">
                                            </div>
                                            <div class="pro-detail">
                                                <h3 class="pro-name">
                                                    <a href="#">Laptop Lenovo V14 G4 IRU 83A000BHVN</a>
                                                </h3>
                                                <div class="pro-price">
                                                    <span class="text-danger"><fmt:formatNumber type="number" maxFractionDigits="3" value="13790000" />₫</span>
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
                                <div class="card-footer py-3">
                                    <nav aria-label="Page navigation">
                                        <ul class="pagination justify-content-center">
                                            <li class="page-item">
                                                <a class="page-link" href="#" aria-label="Previous">
                                                    <span aria-hidden="true">&laquo;</span>
                                                </a>
                                            </li>
                                            <li class="page-item"><a class="page-link" href="#">1</a></li>
                                            <li class="page-item"><a class="page-link" href="#">2</a></li>
                                            <li class="page-item"><a class="page-link" href="#">3</a></li>
                                            <li class="page-item">
                                                <a class="page-link" href="#" aria-label="Next">
                                                    <span aria-hidden="true">&raquo;</span>
                                                </a>
                                            </li>
                                        </ul>
                                    </nav>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <jsp:include page="layout/footer.jsp" />
</body>
</html>
