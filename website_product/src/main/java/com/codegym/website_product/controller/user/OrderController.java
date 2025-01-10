package com.codegym.website_product.controller.user;

import com.codegym.website_product.entity.User;
import com.codegym.website_product.service.impl.OrderService;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "orderController", urlPatterns = {"/order/info"})
public class OrderController extends HttpServlet {
    private static final OrderService orderService = new OrderService();

        @Override
        protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
            Integer userId = (Integer) req.getSession().getAttribute("userId");
            if (userId == null) {
                resp.sendRedirect(req.getContextPath() + "/dashboard");
                return;
            }
            String totalCostParam = req.getParameter("totalCost");
            double totalCost = totalCostParam != null ? Double.parseDouble(totalCostParam) : 0.0;
            req.setAttribute("totalCost", totalCost);

            req.getRequestDispatcher("/views/user/cart_step2.jsp").forward(req, resp);
        }


    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        Integer userId = (Integer) req.getSession().getAttribute("userId");

        if (userId == null) {
            resp.sendRedirect(req.getContextPath() + "/dashboard");
            return;
        }

        // Lấy thông tin từ form
        String fullName = req.getParameter("fullName");
        String gender = req.getParameter("gender");
        String dob = req.getParameter("dob");
        String phone = req.getParameter("phone");
        String address = req.getParameter("address");
        double totalCost = Double.parseDouble(req.getParameter("totalCost"));

        // Tạo đối tượng User với các thông tin mới
        User user = new User(fullName, dob, gender, phone, address, userId);

        orderService.saveShippingInfo(user);

        // Lưu thông tin vào session để hiển thị ở cart_step3.jsp
        req.getSession().setAttribute("userInfo", user);
        req.getSession().setAttribute("totalCost", totalCost);

        // Chuyển hướng sang `cart_step3.jsp`
        resp.sendRedirect(req.getContextPath() + "/views/user/cart_step3.jsp");
    }
}
