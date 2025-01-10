package com.codegym.website_product.controller.admin;

import com.codegym.website_product.service.impl.AccountService;
import com.codegym.website_product.service.impl.UserService;
import com.codegym.website_product.utils.GetUrlAction;
import com.codegym.website_product.utils.SessionManager;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "admin", urlPatterns = "/admin/*")
public class AccessController extends HttpServlet {
    private static AccountService accountService = new AccountService();
    private static SessionManager sessionManager = new SessionManager();
    private static UserService userService = new UserService();

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        resp.setContentType("text/plain");
        String uri = req.getRequestURI();
        String contextPath = req.getContextPath();
        String action = GetUrlAction.getUrl(uri, contextPath);
        boolean isLogin = SessionManager.isUserLoggedIn(req);
        String role = SessionManager.getRole(req);

        if (isLogin) {
            if (action.isEmpty()) {
                if (isLogin) {
                    req.setAttribute("role", role);
                    req.getRequestDispatcher("/views/admin/dashboard/dashboard.jsp").forward(req, resp);
                } else {
                    resp.sendRedirect("/admin/login");
                }
            }
            if (action.equals("logout")) {
                SessionManager.removeSession(req);
                resp.sendRedirect("/admin/login");
            }
            if (action.equals("product")) {
                req.getRequestDispatcher("/views/admin/product/product.jsp").forward(req, resp);
            }
            if (action.equals("orders")) {
                req.getRequestDispatcher("/views/admin/product/product.jsp").forward(req, resp);
            }

        } else {
            req.getRequestDispatcher("/views/admin/login/login.jsp").forward(req, resp);
        }

    }
}
