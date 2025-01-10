package com.codegym.website_product.controller.user;

import com.codegym.website_product.entity.Product;
import com.codegym.website_product.entity.ProductSpecification;
import com.codegym.website_product.repository.ProductRepository;
import com.codegym.website_product.repository.ProductSpecificationRepository;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "ProductController", urlPatterns = {"/product/*"})
public class ProductController extends HttpServlet {
    private ProductRepository productRepository;
    private ProductSpecificationRepository productSpecificationRepository;

    @Override
    public void init() throws ServletException {
        productRepository = new ProductRepository();
        productSpecificationRepository = new ProductSpecificationRepository();
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String pathInfo = request.getPathInfo(); // /{id}
        if (pathInfo == null || pathInfo.equals("/")) {
            response.sendError(HttpServletResponse.SC_BAD_REQUEST, "Invalid Product ID");
            return;
        }

        int productId = Integer.parseInt(pathInfo.substring(1));
        Product product = productRepository.findById(productId);
        List<ProductSpecification> specifications = productSpecificationRepository.findSpecificationsByProductId(productId);

        if (product == null) {
            response.sendError(HttpServletResponse.SC_NOT_FOUND, "Product not found");
            return;
        }

        int categoryId = product.getCategoryId();
        List<Product> similarProducts = productRepository.findSimilarProductsByCategoryId(categoryId, productId);
        request.setAttribute("similarProducts", similarProducts);


        request.setAttribute("product", product);
        request.setAttribute("specifications", specifications);
        request.getRequestDispatcher("/views/user/detail.jsp").forward(request, response);
    }
}
