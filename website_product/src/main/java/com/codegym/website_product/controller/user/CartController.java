package com.codegym.website_product.controller.user;

import com.codegym.website_product.entity.Cart;
import com.codegym.website_product.entity.CartItem;
import com.codegym.website_product.entity.Product;
import com.codegym.website_product.service.impl.CartService;
import com.codegym.website_product.service.impl.ProductService;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@WebServlet(name = "cartController", urlPatterns = {"/cart/*", "/cart/view"})
public class CartController extends HttpServlet {
    private static final CartService cartService = new CartService();
    private static final ProductService productService = new ProductService();

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        Integer userId = (Integer) req.getSession().getAttribute("userId");
        if (userId == null) {
            resp.sendRedirect(req.getContextPath() + "/dashboard");
            return;
        }

        Cart cart = cartService.findByUserId(userId);
        if (cart == null) {
            req.setAttribute("cartItems", null);
            req.setAttribute("message", "Giỏ hàng của bạn đang trống.");
        } else {
            List<CartItem> cartItems = cartService.getCartItemsByCartId(cart.getId());

            Map<Integer, Product> productsMap = new HashMap<>();
            for (CartItem cartItem : cartItems) {
                Product product = productService.findById(cartItem.getProductId());
                if (product != null) {
                    productsMap.put(cartItem.getProductId(), product);
                }
            }

            double totalCost = cartService.calculateTotal(cartItems, productsMap);
            req.setAttribute("cartItems", cartItems);
            req.setAttribute("productsMap", productsMap);
            req.setAttribute("totalCost", totalCost);
        }

        req.getRequestDispatcher("/views/user/cart_step1.jsp").forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String action = req.getPathInfo();
        Integer userId = (Integer) req.getSession().getAttribute("userId");
        if (userId == null) {
            resp.sendRedirect(req.getContextPath() + "/dashboard");
            return;
        }

        switch (action) {
            case "/add": {
                int productId = Integer.parseInt(req.getParameter("productId"));
                int quantity = 1;

                Cart cart = cartService.findByUserId(userId);
                if (cart == null) {
                    resp.sendError(HttpServletResponse.SC_BAD_REQUEST, "Giỏ hàng không tồn tại cho user này.");
                    return;
                }

                Product product = productService.findById(productId);
                if (product == null || product.getQuantity() < quantity) {
                    resp.sendError(HttpServletResponse.SC_BAD_REQUEST, "Sản phẩm không hợp lệ hoặc đã hết hàng.");
                    return;
                }

                CartItem cartItem = new CartItem(cart.getId(), productId, quantity);
                cartService.addCartItem(cartItem);
                resp.sendRedirect(req.getContextPath() + "/cart/view");
                break;
            }

            case "/delete": {
                int productId = Integer.parseInt(req.getParameter("productId"));
                Cart cart = cartService.findByUserId(userId);
                if (cart == null) {
                    resp.sendError(HttpServletResponse.SC_BAD_REQUEST, "Giỏ hàng không tồn tại.");
                    return;
                }

                cartService.removeCartItem(cart.getId(), productId);
                resp.sendRedirect(req.getContextPath() + "/cart/view");
                break;
            }

            default:
                resp.sendError(HttpServletResponse.SC_NOT_FOUND, "Không tìm thấy hành động.");
        }
    }
}
