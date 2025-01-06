package com.codegym.website_product.controller.user;

import com.codegym.website_product.entity.Product;
import com.codegym.website_product.service.ProductService;
import com.codegym.website_product.utils.GetUrlAction;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "listController", urlPatterns = "/list/*")
public class ListController extends HttpServlet {
    private static ProductService productService = new ProductService();

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        resp.setContentType("text/plain");

        // Lấy URI và context path
        String uri = req.getRequestURI();
        String contextPath = req.getContextPath();
        String action = GetUrlAction.getUrl(uri, contextPath);
        List<Product> products = productService.getAll();
        req.getRequestDispatcher("/views/user/list.jsp").forward(req, resp);
    }
}
