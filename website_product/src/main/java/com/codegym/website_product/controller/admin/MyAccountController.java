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

@WebServlet("/admin/myaccount")
public class MyAccountController extends HttpServlet {
    private static AccountService accountService = new AccountService();

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        resp.setContentType("text/plain");
        boolean isLogin = SessionManager.isUserLoggedIn(req);
        String role = SessionManager.getRole(req);
        if (isLogin) {
            String email = SessionManager.getEmail(req);
            Account account = accountService.findByEmail(email);
            req.setAttribute("role", role);
            req.setAttribute("account", account);
            req.getRequestDispatcher("/views/admin/account/myaccount.jsp").forward(req, resp);
        } else {
            req.getRequestDispatcher("/views/admin/login/login.jsp").forward(req, resp);
        }

    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        boolean isLogin = SessionManager.isUserLoggedIn(req);
        String roleSS = SessionManager.getRole(req);
        if (isLogin) {
            String email = SessionManager.getEmail(req);
            String password = req.getParameter("password");
            Account account = accountService.findByEmail(email);
            account.setPassword(password);
            accountService.update(account.getId(), account);
            resp.sendRedirect("/admin/myaccount");
        } else {
            req.getRequestDispatcher("/views/admin/login/login.jsp").forward(req, resp);
        }

    }
}
