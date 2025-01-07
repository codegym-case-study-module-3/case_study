package com.codegym.website_product.controller.admin;


import com.codegym.website_product.entity.Product;
import com.codegym.website_product.service.IProduct;
import com.codegym.website_product.service.impl.ProductService;


import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "productController", urlPatterns = "/admin/product")
public class ProductController extends HttpServlet  {
    private IProduct productService = new ProductService();

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.setCharacterEncoding("UTF-8");
        String action = req.getParameter("action");
        if (action == null) {
            action = "";
        }
        switch (action) {
            case "create":
                req.getRequestDispatcher("/WEB-INF/view/admin/product/create.jsp").forward(req, resp);
                break;
            case "update":
                req.getRequestDispatcher("/WEB-INF/view/admin/product/update.jsp").forward(req, resp);
                break;
            case "delete":
                int id = Integer.parseInt(req.getParameter("id"));
                productService.remove(id);
                resp.sendRedirect("/product?message=deleted");
                break;
            default:
                String message = req.getParameter("message");
                if (message != null) {
                    if (message.equals("deleted")) {
                        req.setAttribute("message", "Xóa thành công");
                    } else if (message.equals("created")) {
                        req.setAttribute("message", "Thêm mới thành công");
                    }
                }
                List<Product> products = productService.getAll();
                req.setAttribute("products", products);
                    req.getRequestDispatcher("views/product/admin.jsp").forward(req, resp);
//                req.setAttribute("contentPage","views/product/layout/list.jsp");
//                req.getRequestDispatcher("views/product/admin.jsp").forward(req, resp);
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
                String name = req.getParameter("name");
                String description = req.getParameter("description");
                int price = Integer.parseInt(req.getParameter("price"));
                int stock = Integer.parseInt(req.getParameter("stock"));
                String image = req.getParameter("image");
                int category_id = Integer.parseInt(req.getParameter("category_id"));
                String created_at = req.getParameter("created_at");
                Product product = new Product(name,description,price,stock,image,category_id,created_at);
                productService.save(product);
                resp.sendRedirect("/product?message=created");
                break;

            case "update":
                int id = Integer.parseInt(req.getParameter("id"));
                String name_u = req.getParameter("name");
                String description_u = req.getParameter("description");
                int price_u = Integer.parseInt(req.getParameter("price"));
                int stock_u = Integer.parseInt(req.getParameter("stock"));
                String image_u = req.getParameter("image");
                int category_id_u = Integer.parseInt(req.getParameter("category_id"));
                String created_at_u = req.getParameter("created_at");
                Product productUpdate = new Product(id,name_u, description_u,price_u,stock_u,image_u,category_id_u,created_at_u);
                productService.update(id,productUpdate);
                resp.sendRedirect("/product?message=created");
                break;

        }
    }
}

