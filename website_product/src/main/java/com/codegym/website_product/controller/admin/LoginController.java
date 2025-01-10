package com.codegym.website_product.controller.admin;

import com.codegym.website_product.entity.Account;
import com.codegym.website_product.service.impl.AccountService;
import com.codegym.website_product.utils.GetUrlAction;
import com.codegym.website_product.utils.SessionManager;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/admin/login")
public class LoginController extends HttpServlet {
    private static AccountService accountService = new AccountService();

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        resp.setContentType("text/plain");
        req.getRequestDispatcher("/views/admin/login/login.jsp").forward(req, resp);

    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.setCharacterEncoding("UTF-8");
        resp.setContentType("text/plain");

        String email = req.getParameter("email");
        String password = req.getParameter("password");
        Account account = accountService.findAccByEmailAndPassword(email, password);
        if (account == null) {
            resp.sendRedirect("/admin/login");
        } else {
            String role = account.getRole();
            if (role.equals("admin") || role.equals("admin master")) {
                SessionManager.setSession(req, email, role);
                req.setAttribute("role", role);
                req.getRequestDispatcher("/views/admin/dashboard/dashboard.jsp").forward(req, resp);
            } else {
                resp.sendRedirect("/admin/login");
            }
        }

    }
}
