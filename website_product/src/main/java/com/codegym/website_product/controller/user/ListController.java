package com.codegym.website_product.controller.user;

import com.codegym.website_product.entity.Category;
import com.codegym.website_product.entity.Product;
import com.codegym.website_product.service.impl.CategoryService;
import com.codegym.website_product.service.impl.ProductService;
import com.codegym.website_product.utils.GetUrlAction;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

import static com.codegym.website_product.utils.CheckNum.isValidInteger;

@WebServlet(name = "listController", urlPatterns = "/list/*")
public class ListController extends HttpServlet {
    private static ProductService productService = new ProductService();
    private static CategoryService categoryService = new CategoryService();
    private static int PAGE_LIMIT = 8;

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        resp.setContentType("text/plain");

        // Lấy URI và context path
        String uri = req.getRequestURI();
        String contextPath = req.getContextPath();
        String string_id = GetUrlAction.getId(uri, contextPath);
        int category_id = 0;
        List<Product> products;
        String breadCrumb = "Tất cả sản phẩm";
        if (isValidInteger(string_id)) {
            category_id = Integer.parseInt(string_id);
            Category category = categoryService.findById(category_id);
            if (category != null) {
                breadCrumb = category.getName();
            }
            products = productService.getAllByCategory(category_id);
        } else {
            String search = req.getParameter("search");
            if (search == null) {
                products = productService.getAll();
            } else {
                breadCrumb = "Kết quả tìm kiếm";
                products = productService.findByName(search);
                req.setAttribute("search", search);
            }
        }
        req.setAttribute("products", products);
        req.setAttribute("breadCrumb", breadCrumb);
        req.getRequestDispatcher("/views/user/list.jsp").forward(req, resp);
    }
}
