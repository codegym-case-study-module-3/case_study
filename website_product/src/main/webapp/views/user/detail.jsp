<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>

<html>
<head>
    <title>Chi tiết sản phẩm</title>
    <jsp:include page="layout/head.jsp" />
</head>
<body>
<div class="section">
    <jsp:include page="layout/header.jsp" />
    <div class="container">
        <div class="content-header">
            <div class="container-fluid">
                <div class="row pt-3 pb-4">
                    <div class="col-sm-6">
                        <h5 class="page-title m-0">
                            <a class="text-primary" href="/"><i class="fa-solid fa-house"></i><span>Trang chủ</span></a>
                            <span class="px-3">/</span>
                            <span>${product.name}</span>
                        </h5>
                    </div>
                </div>
            </div>
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
                                            <img src="${pageContext.request.contextPath}/${product.image}" alt="${product.name}" class="img-fluid">
                                        </div>
                                    </div>
                                    <div class="col-lg-7 col-12">
                                        <div class="pro-top mb-3">
                                            <div class="pb-2">
                                                <h5>${product.name}</h5>
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
                                                <span class="pro-price text-danger"><fmt:formatNumber value="${product.price}" type="currency" currencySymbol="₫" /></span>
                                            </div>
                                            <div class="product-button d-flex">
                                                <div class="product-button d-flex">
                                                    <c:choose>

                                                        <c:when test="${sessionScope.isLogged == 'logged'}">
                                                            <form method="POST" action="${pageContext.request.contextPath}/cart/add">
                                                                <input type="hidden" name="productId" value="${product.id}" />
                                                                <button type="submit" class="btn btn-danger py-2" style="width: 400px">
                                                                    <h5 class="text-white mb-0">Thêm vào giỏ hàng</h5>
                                                                    <span class="font-14">Giao tận nơi hoặc nhận tại cửa hàng</span>
                                                                </button>
                                                            </form>
                                                        </c:when>

                                                        <c:otherwise>
                                                            <button class="btn btn-secondary py-2" style="width: 400px" disabled>
                                                                <h5 class="text-white mb-0">Đăng nhập để thêm vào giỏ hàng</h5>
                                                                <span class="font-14">Vui lòng đăng nhập để tiếp tục</span>
                                                            </button>
                                                        </c:otherwise>
                                                    </c:choose>
                                                </div>


                                            </div>


                                            <div class="product-preferential mt-4 font-18">
                                                <p>✔ Bảo hành chính hãng 24 tháng.</p>
                                                <p>✔ Hỗ trợ đổi mới trong 7 ngày.</p>
                                                <p>✔ Miễn phí giao hàng toàn quốc.</p>
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
                                <div class="product-info">
                                    <h3>Thông số kỹ thuật:</h3>
                                    <div class="table-responsive">
                                        <table class="table table-valign-middle">
                                            <tbody>
                                            <c:forEach items="${specifications}" var="spec">
                                                <tr>
                                                    <td style="width: 25%">${spec.nameInfo}</td>
                                                    <td>${spec.textInfo}</td>
                                                </tr>
                                            </c:forEach>

                                            </tbody>
                                        </table>
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
                                    <c:forEach var="similarProduct" items="${similarProducts}">
                                        <div class="pro-loop d-flex mb-3">
                                            <div class="product-img">
                                                <img src="${pageContext.request.contextPath}/${similarProduct.image}" alt="${similarProduct.name}" class="img-fluid">
                                            </div>
                                            <div class="other-product-info ms-3">
                                                <h3 class="pro-name ms-0">
                                                    <a href="${pageContext.request.contextPath}/product/${similarProduct.id}">${similarProduct.name}</a>
                                                </h3>
                                                <div class="pro-price">
                    <span class="text-danger">
                        <fmt:formatNumber value="${similarProduct.price}" type="currency" currencySymbol="₫" />
                    </span>
                                                </div>
                                                <div class="pro-rating mt-2">
                                                    <span class="number-rating">0.0</span>
                                                    <span class="icon-rating"><i class="fa-solid fa-star"></i></span>
                                                    <span class="count-rating">(0 đánh giá)</span>
                                                </div>
                                            </div>
                                        </div>
                                    </c:forEach>
                                </div>

                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <jsp:include page="layout/footer.jsp" />
    <%
        String isLogged = (String) session.getAttribute("isLogged");
    %>
    <c:if test="${isLogged == null}">
        <jsp:include page="modal/modal_login.jsp" />
        <jsp:include page="modal/modal_register.jsp" />
    </c:if>
</div>
<jsp:include page="layout/script.jsp" />
</body>
</html>
