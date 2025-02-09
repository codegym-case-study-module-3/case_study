<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8"/>
    <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no"/>
    <meta name="description" content="GEAR.VN"/>
    <meta name="author" content="GEAR.VN"/>
    <title>Dashboard PRODUCT</title>
    <link href="../../../resources/css/admin/styles.css" rel="stylesheet"/>
    <script src="https://use.fontawesome.com/releases/v6.3.0/js/all.js" crossorigin="anonymous"></script>
</head>

<body class="sb-nav-fixed">
<jsp:include page="../layout/header.jsp"/>

<div id="layoutSidenav">
    <jsp:include page="../layout/sidebar.jsp"/>

    <div id="layoutSidenav_content">
        <main>
            <div class="container-fluid px-4">
                <h1 class="mt-4">QUẢN LÝ PRODUCT</h1>
                <ol class="breadcrumb mb-4">
                    <li class="breadcrumb-item"><a href="${pageContext.request.contextPath}/admin">TRANG CHỦ</a></li>
                    <li class="breadcrumb-item active">PRODUCT</li>
                </ol>

                <button type="button" class="btn btn-secondary" onclick="window.location.href='/admin/createProduct'">
                    Thêm sản phẩm
                </button>
                <div class="card mb-4">
                    <div class="card-header">
                        <i class="fas fa-table me-1"></i>
                        DataTable
                    </div>
                    <div class="card-body">
                        <table id="datatablesSimple">
                            <thead>
                            <tr>
                                <th>STT</th>
                                <th>Tên sản phẩm</th>
                                <th>Thông số kỹ thuật</th>
                                <th>Giá</th>
                                <th>Tồn kho</th>
                                <th>Hình ảnh</th>
                                <th>Mã danh mục</th>
                                <th>Ngày tạo</th>
                                <th colspan="2">Chức năng</th>
                            </tr>
                            </thead>
                            <tfoot>
                            <tr>
                                <th>STT</th>
                                <th>Tên</th>
                                <th>Thông số kỹ thuật</th>
                                <th>Giá</th>
                                <th>Tồn kho</th>
                                <th>image</th>
                                <th>Mã danh mục</th>
                                <th>Ngày tạo</th>
                                <th colspan="2">Chức năng</th>

                            </tr>
                            </tfoot>
                            <tbody>


                            <tr>
                                <td>1</td>
                                <td>Laptop Lenovo V14 G4 IRU 83A000BHVN</td>
                                <td></td>
                                <td>13790000.00</td>
                                <td>30</td>
                                <td>

                                    <img src="../../../resources/images/20241230205000.png" height="100" width="100"/>
                                </td>
                                <td>1</td>
                                <td>2024-12-30 13:50:31</td>
                                <td>
                                    <button type="button" class="btn btn-secondary">Sửa</button>
                                    <button type="button" class="btn btn-secondary">Xóa</button>
                                </td>
                            </tr>
                            <tr>
                                <td>2</td>
                                <td>Laptop Acer Aspire 3 A315 58 54M5</td>
                                <td></td>
                                <td>8,490,000.00</td>
                                <td>20</td>
                                <td><img src="../../../resources/images/20241230205000.png" height="100" width="100"/>
                                </td>
                                </td>
                                <td>1</td>
                                <td>2025-01-03 12:06:03</td>
                                <td>
                                    <button type="button" class="btn btn-secondary">Sửa</button>
                                    <button type="button" class="btn btn-secondary">Xóa</button>
                                </td>
                            </tr>
                            <tr>
                                <td>3</td>
                                <td>Laptop gaming ASUS TUF Gaming F15 FX507VU</td>
                                <td></td>
                                <td>25,790,000.00</td>
                                <td>20</td>
                                <td><img src="resources/images/20250103194300.png" alt="Laptop ASUS TUF Gaming"></td>
                                <td>1</td>
                                <td>2025-01-03 12:42:40</td>
                                <td>
                                    <button type="button" class="btn btn-secondary">Sửa</button>
                                    <button type="button" class="btn btn-secondary">Xóa</button>
                                </td>
                            </tr>
                            <tr>
                                <td>4</td>
                                <td>Laptop gaming Lenovo LOQ 15IAx9 83GS00 15VN</td>
                                <td></td>
                                <td>16,990,000.00</td>
                                <td>30</td>
                                <td><img src="resources/images/20250103194400.png" alt="Laptop Lenovo LOQ"
                                         style="width: 100px;"></td>
                                <td>1</td>
                                <td>2025-01-03 12:44:29</td>
                                <td>
                                    <button type="button" class="btn btn-secondary">Sửa</button>
                                    <button type="button" class="btn btn-secondary">Xóa</button>
                                </td>
                            </tr>
                            <tr>
                                <td>5</td>
                                <td>Laptop gaming MSI Katana 15 B13VEK 252VN</td>
                                <td></td>
                                <td>28,990,000.00</td>
                                <td>20</td>
                                <td><img src="../../../resources/images/20250103194500.png" alt="Laptop MSI Katana"
                                         style="width: 100px;"></td>
                                <td>1</td>
                                <td>2025-01-03 12:46:14</td>
                                <td>
                                    <button type="button" class="btn btn-secondary">Sửa</button>
                                    <button type="button" class="btn btn-secondary">Xóa</button>
                                </td>
                            </tr>
                            <tr>
                                <td>6</td>
                                <td>Laptop Gaming Acer Nitro 5 AN515 45 R6EV</td>
                                <td></td>
                                <td>13,990,000.00</td>
                                <td>10</td>
                                <td><img src="resources/images/20250103194600.png" alt="Laptop Acer Nitro 5 R6EV"
                                         style="width: 100px;"></td>
                                <td>1</td>
                                <td>2025-01-03 12:46:39</td>
                                <td>
                                    <button type="button" class="btn btn-secondary">Sửa</button>
                                    <button type="button" class="btn btn-secondary">Xóa</button>
                                </td>
                            </tr>
                            <tr>
                                <td>7</td>
                                <td>Laptop gaming Acer Nitro 5 AN515 46 R6QR</td>
                                <td></td>
                                <td>20,990,000.00</td>
                                <td>15</td>
                                <td><img src="resources/images/20250103194700.png" alt="Laptop Acer Nitro 5 R6QR"
                                         style="width: 100px;"></td>
                                <td>1</td>
                                <td>2025-01-03 12:48:03</td>
                                <td>
                                    <button type="button" class="btn btn-secondary">Sửa</button>
                                    <button type="button" class="btn btn-secondary">Xóa</button>
                                </td>
                            </tr>
                            <tr>
                                <td>8</td>
                                <td>Laptop gaming MSI Katana 15 B13VKF 676VN</td>
                                <td></td>
                                <td>27,990,000.00</td>
                                <td>24</td>
                                <td><img src="resources/images/20250103194800.png" alt="Laptop MSI Katana 15"
                                         style="width: 100px;"></td>
                                <td>1</td>
                                <td>2025-01-03 12:48:58</td>
                                <td>
                                    <button type="button" class="btn btn-secondary">Sửa</button>
                                    <button type="button" class="btn btn-secondary">Xóa</button>
                                </td>
                            </tr>
                            <tr>
                                <td>9</td>
                                <td>Laptop gaming Thin 15 B13UC 2044VN</td>
                                <td></td>
                                <td>19,490,000.00</td>
                                <td>31</td>
                                <td><img src="resources/images/20250103194900.png" alt="Laptop Gaming Thin 15"
                                         style="width: 100px;"></td>
                                <td>1</td>
                                <td>2025-01-03 12:49:44</td>
                                <td>
                                    <button type="button" class="btn btn-secondary">Sửa</button>
                                    <button type="button" class="btn btn-secondary">Xóa</button>
                                </td>
                            </tr>
                            <tr>
                                <td>10</td>
                                <td>Laptop Lenovo V14 G4 IRU 83A000TVN</td>
                                <td></td>
                                <td>9,990,000.00</td>
                                <td>12</td>
                                <td><img src="resources/images/20250103195000.png" alt="Laptop Lenovo V14 G4 IRU"
                                         style="width: 100px;"></td>
                                <td>1</td>
                                <td>2025-01-03 12:50:32</td>
                                <td>
                                    <button type="button" class="btn btn-secondary">Sửa</button>
                                    <button type="button" class="btn btn-secondary">Xóa</button>
                                </td>
                            </tr>
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
            <!-- Modal -->


            <!-- Toast thông báo thành công -->
            <div class="toast-container position-fixed top-0 end-0 p-3">
                <div id="successToast" class="toast" role="alert" aria-live="assertive" aria-atomic="true">
                    <div class="toast-header">
                        <strong class="me-auto">Thông báo</strong>
                        <button type="button" class="btn-close" data-bs-dismiss="toast" aria-label="Close"></button>
                    </div>
                    <div class="toast-body">
                        Tạo mới account thành công!
                    </div>
                </div>
            </div>
        </main>
        <jsp:include page="../layout/footer.jsp"/>
    </div>
</div>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz"
        crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.8.0/Chart.min.js"
        crossorigin="anonymous"></script>

<script src="https://cdn.jsdelivr.net/npm/simple-datatables@7.1.2/dist/umd/simple-datatables.min.js"
        crossorigin="anonymous"></script>
<script src="/resources/js/datatables-simple-demo.js"></script>
<script>

    document.getElementById('createUserForm').addEventListener('submit', function (event) {
        event.preventDefault();
        var successToast = new bootstrap.Toast(document.getElementById('successToast'));
        successToast.show();
        var modal = bootstrap.Modal.getInstance(document.getElementById('createUserModal'));
        modal.hide();
    });
    setTimeout(function () {
        document.getElementById("successToast").remove();
    }, 3000)
</script>
<script src="../../../resources/js/scripts.js"></script>
<script src="../../../resources/js/datatables-simple-demo.js"></script>
</body>

</html>