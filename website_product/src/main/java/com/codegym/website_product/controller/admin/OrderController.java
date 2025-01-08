package com.codegym.website_product.controller.admin;

import com.codegym.website_product.entity.Order;
import com.codegym.website_product.service.OrderService;
import com.codegym.website_product.service.impl.OrderServiceImpl;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "OrderController", urlPatterns = {"/admin/orders"})
public class OrderController  extends HttpServlet {
        private OrderService orderService = new OrderServiceImpl();

        @Override
        protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
            String action = request.getParameter("action");
            if (action == null || action.equals("list")) {
                // Hiển thị danh sách đơn hàng
                List<Order> orders = orderService.findAll();
                request.setAttribute("orders", orders);
                request.getRequestDispatcher("/views/admin/orders/list.jsp").forward(request, response);
            } else if (action.equals("edit")) {
                // Hiển thị trang cập nhật trạng thái
                int id = Integer.parseInt(request.getParameter("id"));
                Order order = orderService.findById(id);
                request.setAttribute("order", order);
                request.getRequestDispatcher("/views/admin/orders/edit.jsp").forward(request, response);
            }
        }

        @Override
        protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
            String action = request.getParameter("action");
            if (action.equals("update")) {
                // Cập nhật trạng thái đơn hàng
                int id = Integer.parseInt(request.getParameter("id"));
                int status = Integer.parseInt(request.getParameter("status"));
                orderService.updateStatus(id, status);
                response.sendRedirect("/admin/orders");
            }
        }
    }


