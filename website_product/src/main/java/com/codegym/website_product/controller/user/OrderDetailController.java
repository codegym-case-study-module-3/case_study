package com.codegym.website_product.controller.user;

import com.codegym.website_product.entity.Order;
import com.codegym.website_product.entity.OrderDetail;
import com.codegym.website_product.entity.User;
import com.codegym.website_product.entity.CartItem;
import com.codegym.website_product.service.impl.OrderService;
import com.codegym.website_product.service.impl.CartService;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "orderDetailController", urlPatterns = {"/order/final"})
public class OrderDetailController extends HttpServlet {
    private static final OrderService orderService = new OrderService();
    private static final CartService cartService = new CartService();

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        Integer userId = (Integer) req.getSession().getAttribute("userId");
        if (userId == null) {
            resp.sendRedirect(req.getContextPath() + "/dashboard");
            return;
        }

        // Lấy thông tin từ session
        User user = (User) req.getSession().getAttribute("userInfo");
        double totalCost = (double) req.getSession().getAttribute("totalCost");

        // 1. Lưu thông tin đơn hàng vào bảng orders
        Order order = new Order(userId, 1, totalCost, null);  // status mặc định là 1 (đơn hàng mới)
        int orderId = orderService.createOrder(order);  // Trả về ID của đơn hàng vừa được tạo

        // 2. Lấy các sản phẩm trong giỏ hàng
        List<CartItem> cartItems = cartService.getCartItemsByCartId(cartService.findByUserId(userId).getId());

        // 3. Lưu chi tiết đơn hàng vào bảng orderdetails
        for (CartItem item : cartItems) {
            OrderDetail orderDetail = new OrderDetail(orderId, item.getProductId(), item.getQuantity());
            orderService.createOrderDetail(orderDetail);
        }

        // 4. Xóa giỏ hàng sau khi đặt hàng thành công
        cartService.clearCart(userId);

        // Lưu mã đơn hàng vào session để hiển thị trên `cart_step4.jsp`
        req.getSession().setAttribute("orderId", orderId);

        // Chuyển hướng sang `cart_step4.jsp`
        resp.sendRedirect(req.getContextPath() + "/views/user/cart_step4.jsp");
    }
}
