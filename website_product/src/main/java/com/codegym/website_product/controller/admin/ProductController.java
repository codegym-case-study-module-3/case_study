package com.codegym.website_product.controller.admin;


import com.codegym.website_product.entity.Product;
import com.codegym.website_product.entity.ProductSpecification;
import com.codegym.website_product.repository.ProductRepository;
import com.codegym.website_product.service.IProduct;
import com.codegym.website_product.service.impl.ProductService;
import com.codegym.website_product.utils.SessionManager;


import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

@WebServlet(name = "productController", urlPatterns = "/admin/product")
public class ProductController extends HttpServlet {
    private IProduct productService = new ProductService();

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.setCharacterEncoding("UTF-8");
        String action = req.getParameter("action");
        if (action == null) {
            action = "";
        }
        String role = SessionManager.getRole(req);

        switch (action) {
            case "create":
                req.getRequestDispatcher("/views/admin/product/creatProduct.jsp").forward(req, resp);
                break;
            case "update":
//                req.getRequestDispatcher("/WEB-INF/view/admin/product/update.jsp").forward(req, resp);
//                break;
                try {
                    int id = Integer.parseInt(req.getParameter("id"));
                    Product product = productService.getProductById(id);
                    req.setAttribute("product", product);
                    req.getRequestDispatcher("/views/admin/product/update.jsp").forward(req, resp);
                } catch (NumberFormatException | NullPointerException e) {
                    resp.sendRedirect("/admin/product?error=invalid_id");
                }
                break;
            case "delete":
//                int id1 = Integer.parseInt(req.getParameter("id"));
//                studentService.remove(id1);
//
//                resp.sendRedirect("/student?message=deleted");
//                break;
                long id1 = Long.parseLong(req.getParameter("id"));
                productService.remove(id1);
                resp.sendRedirect("/admin/product?message=deleted");
                break;
            default:
                boolean isLogin = SessionManager.isUserLoggedIn(req);
                if (isLogin) {
                    String message = req.getParameter("message");
                    if (message != null) {
                        if (message.equals("deleted")) {
                            req.setAttribute("message", "Xóa thành công");
                        } else if (message.equals("created")) {
                            req.setAttribute("message", "Thêm mới thành công");
                        }
                    }

                    List<Product> products = productService.getAll();
                    req.setAttribute("role", role);
                    req.setAttribute("products", products);
//                    req.getRequestDispatcher("views/product/admin.jsp").forward(req, resp);
                    req.getRequestDispatcher("/views/admin/product/admin.jsp").forward(req, resp);
//                req.setAttribute("contentPage","views/product/layout/list.jsp");
//                req.getRequestDispatcher("views/product/admin.jsp").forward(req, resp);
                } else {
                    req.getRequestDispatcher("/views/admin/login/login.jsp").forward(req, resp);
                }

        }
    }


    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.setCharacterEncoding("UTF-8");
        String action = req.getParameter("action");
        if (action == null) {
            action = "";
        }
        switch (action) {
            case "create":
                // Lấy thông tin sản phẩm
                String name = req.getParameter("name");
                String description = req.getParameter("description");
                double price = Double.parseDouble(req.getParameter("price"));
                int quantity = Integer.parseInt(req.getParameter("stock"));
                String image = "resources/images/" +req.getParameter("image"); // Thêm xử lý upload file ở đây
                int categoryId = Integer.parseInt(req.getParameter("category_id"));

                // Lấy danh sách thông số kỹ thuật
                String[] nameInfos = req.getParameterValues("name_info[]");
                String[] textInfos = req.getParameterValues("text_info[]");

                // Tạo Product
                Product product = new Product(name, description, price, quantity, image, categoryId);

                // Tạo danh sách ProductSpecification
                List<ProductSpecification> specifications = new ArrayList<>();
                if (nameInfos != null && textInfos != null) {
                    for (int i = 0; i < nameInfos.length; i++) {
                        specifications.add(new ProductSpecification(nameInfos[i], textInfos[i]));
                    }
                }

                // Lưu sản phẩm và các thông số kỹ thuật
                ProductRepository productRepo = new ProductRepository();
                productRepo.save(product, specifications);

                // Chuyển hướng
                resp.sendRedirect("/admin/product?message=created");
                break;

//                String name = req.getParameter("name");
//                String description = req.getParameter("description");
//                double price = Double.parseDouble((req.getParameter("price")));
//                int quantity = Integer.parseInt(req.getParameter("stock")); // Đổi từ stock sang quantity
//                String image = req.getParameter("image");
//                int categoryId = Integer.parseInt(req.getParameter("category_id")); // Đổi từ category_id sang categoryId
////                String createdAt = req.getParameter("created_at");
//                Product product = new Product(name, description, price, quantity, image, categoryId);
//                productService.save(product);
//                resp.sendRedirect("/admin/product?message=created");
//
//            case "update":
//                int id = Integer.parseInt(req.getParameter("id"));
//                String name_u = req.getParameter("name");
//                String description_u = req.getParameter("description");
//                int price_u = Integer.parseInt(req.getParameter("price"));
//                int quantity_u = Integer.parseInt(req.getParameter("stock")); // Đổi từ stock sang quantity
//                String image_u = req.getParameter("image");
//                int categoryId_u = Integer.parseInt(req.getParameter("categoryId")); // Đổi từ category_id sang categoryId
//                String createdAt_u = req.getParameter("created_at");
//                Product productUpdate = new Product(id, name_u, description_u, price_u, quantity_u, image_u, categoryId_u, createdAt_u);
//                productService.update(id, productUpdate);
//                resp.sendRedirect("/product?message=updated");
//                break;

            case "update":
                try {
                    int id = Integer.parseInt(req.getParameter("id"));
                    String name_u = req.getParameter("name");
                    String description_u = req.getParameter("description");
                    double price_u = Double.parseDouble(req.getParameter("price"));
                    int quantity_u = Integer.parseInt(req.getParameter("stock"));
                    String image_u = "resources/images/" +req.getParameter("image");
                    int categoryId_u = Integer.parseInt(req.getParameter("category_id"));
                    // Tạo đối tượng Product từ dữ liệu đã nhập
                    Product productUpdate = new Product(id, name_u, description_u, price_u, quantity_u, image_u, categoryId_u);

                    productService.update(id, productUpdate);
                    // Lấy thông tin thông số kỹ thuật từ form
                    String[] nameInfoArray = req.getParameterValues("name_info[]");
                    String[] textInfoArray = req.getParameterValues("text_info[]");

                    // Tạo danh sách ProductSpecification
                    List<ProductSpecification> specifications1 = new ArrayList<>();
                    if (nameInfoArray != null && textInfoArray != null) {
                        for (int i = 0; i < nameInfoArray.length; i++) {
                            String nameInfo = nameInfoArray[i];
                            String textInfo = textInfoArray[i];
                            ProductSpecification spec = new ProductSpecification(nameInfo, textInfo);
                            specifications1.add(spec);
                        }
                    }

                    // Gọi service để cập nhật sản phẩm và thông số kỹ thuật
                    productService.update(id, productUpdate, specifications1);

                    // Redirect nếu thành công
                    resp.sendRedirect("/admin/product?message=updated");
//                    long id = Long.parseLong(req.getParameter("id"));
//                    String name_u = req.getParameter("name");
//                    String description_u = req.getParameter("description");
//                    double price_u = Double.parseDouble(req.getParameter("price"));
//                    int quantity_u = Integer.parseInt(req.getParameter("stock"));
//                    String image_u = req.getParameter("image");
//                    int categoryId_u = Integer.parseInt(req.getParameter("category_id"));
//
//                    Product productUpdate = new Product(id, name_u, description_u, price_u, quantity_u, image_u, categoryId_u);
//                    productService.update(id,productUpdate);
//
//                    resp.sendRedirect("/admin/product?message=updated");
                } catch (NumberFormatException | NullPointerException e) {
                    req.setAttribute("error", "Lỗi dữ liệu nhập vào!");
                    req.getRequestDispatcher("/views/admin/product/update.jsp").forward(req, resp);
                }
                break;

            case "delete":
                try {
                    int id1 = Integer.parseInt(req.getParameter("id"));
                    productService.remove(id1);
                    resp.sendRedirect("/admin/product?message=deleted");
                } catch (NumberFormatException e) {
                    req.setAttribute("error", "Lỗi: Không thể xóa sản phẩm do ID không hợp lệ.");
                    req.getRequestDispatcher("/views/admin/product/admin.jsp").forward(req, resp);
                }
                break;

        }
    }
}


