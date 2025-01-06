package com.codegym.website_product.controller.admin;


import com.codegym.website_product.service.admin.account.AccountService;
import com.codegym.website_product.utils.GetUrlAction;
import com.codegym.website_product.utils.SessionManager;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "admin", urlPatterns = "/admin/*")
public class AccountController extends HttpServlet {
    private final AccountService accountService = new AccountService();
    private final SessionManager sessionManager = new SessionManager();

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.setCharacterEncoding("UTF-8");
        resp.setContentType("text/plain");
        String uri = req.getRequestURI();
        String contextPath = req.getContextPath();
        String action = GetUrlAction.getUrl(uri, contextPath);
        if (action != null) {
            if (action.isEmpty()) {
                req.getRequestDispatcher("/views/admin/dashboard/dashboard.jsp").forward(req, resp);
            }
            if (action.equals("products")) {
                req.getRequestDispatcher("/views/admin/product/product.jsp").forward(req, resp);
            }
            if (action.equals("account")) {
                req.getRequestDispatcher("/views/admin/account/account.jsp").forward(req, resp);
            }
            if (action.equals("myaccount")) {
                req.getRequestDispatcher("/views/admin/account/myaccount.jsp").forward(req, resp);
            }
            if (action.equals("users")) {
                req.getRequestDispatcher("/views/admin/user/show.jsp").forward(req, resp);
            }
            if (action.equals("login")) {
                req.getRequestDispatcher("/views/admin/login/login.jsp").forward(req, resp);
            }
            if (action.equals("bill")) {
                req.getRequestDispatcher("/views/admin/orders/orders.jsp").forward(req, resp);
            }
            if (action.equals("createProduct")) {
                req.getRequestDispatcher("/views/admin/product/createProduct.jsp").forward(req, resp);
            }
            if (action.equals("register")) {
                req.getRequestDispatcher("/views/admin/register/register.jsp").forward(req, resp);

            }
        }
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.setCharacterEncoding("UTF-8");
        resp.setContentType("text/plain");
        String uri = req.getRequestURI();
        String contextPath = req.getContextPath();
        String action = GetUrlAction.getUrl(uri, contextPath);
        if (action != null) {
            ///
        }
//        switch (action) {
//            case "login":
//                String email = req.getParameter("email");
//                String password = req.getParameter("password");
//                Account account = accountService.findAccByEmailAndPassword(email, password);
//                if (account == null) {
//                    resp.sendRedirect("/admin?action=error");
//                } else {
//                    String role = account.getRole();
//                    if (role.equals("admin")) {
//                        sessionManager.setSession(req, email, role);
////                            resp.sendRedirect("/account?action=homepage");
//                        resp.sendRedirect("/admin");
//                    } else {
//                        resp.sendRedirect("/admin?action=error");
//                    }
//                }
//                break;
//            case "register":
//                String emailRegister = req.getParameter("email");
//                String passwordRegister = req.getParameter("password");
//                long defaultID = Long.parseLong(req.getParameter("user"));
//                String roleRegister = req.getParameter("role");
//                Account accountExisting = accountService.findAccByEmailAndPassword(emailRegister, passwordRegister);
//                if (accountExisting != null) {
//                    resp.sendRedirect("/admin?action=error");
//                } else {
//                    accountService.save(new Account(defaultID, emailRegister, passwordRegister, roleRegister));
//                    resp.sendRedirect("/admin");
//                }
//        }
    }
}
