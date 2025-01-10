package com.codegym.website_product.controller.admin;


import com.codegym.website_product.entity.Account;
import com.codegym.website_product.entity.User;
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
import java.util.List;

@WebServlet(name = "admin", urlPatterns = "/admin/*")
public class AccountController extends HttpServlet {
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
        if (action != null && isLogin) {
            if (action.isEmpty()) {
                if (isLogin) {
                    String role = sessionManager.getRole(req);
                    req.setAttribute("role", role);
                    req.getRequestDispatcher("/views/admin/dashboard/dashboard.jsp").forward(req, resp);
                } else {
                    resp.sendRedirect("/admin/login");
                }
            }
            if (action.equals("account")) {
                List<Account> listAccounts = accountService.getAll();
                String role = sessionManager.getRole(req);
                req.setAttribute("role", role);
                req.setAttribute("listAccounts", listAccounts);
                req.getRequestDispatcher("/views/admin/account/account.jsp").forward(req, resp);
            }
            if (action.equals("myaccount")) {
                String email = sessionManager.getEmail(req);
                Account account = accountService.findByEmail(email);
                String role = sessionManager.getRole(req);
                req.setAttribute("role", role);
                req.setAttribute("account", account);
                req.getRequestDispatcher("/views/admin/account/myaccount.jsp").forward(req, resp);
            }
            if (action.equals("users")) {
                List<User> listUsers = userService.getAll();
                req.setAttribute("listUsers", listUsers);
                req.getRequestDispatcher("/views/admin/user/show.jsp").forward(req, resp);
            }
            if (action.equals("login")) {
                req.getRequestDispatcher("/views/admin/login/login.jsp").forward(req, resp);
            }
            if (action.equals("register")) {
                req.getRequestDispatcher("/views/admin/register/register.jsp").forward(req, resp);
            }
            if (action.equals("logout")) {
                SessionManager.removeSession(req);
                resp.sendRedirect("/admin/login");
            }
            if (action.equals("product")) {
                req.getRequestDispatcher("/views/admin/product/product.jsp").forward(req, resp);
            }
        } else {
            req.getRequestDispatcher("/views/admin/login/login.jsp").forward(req, resp);
        }
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.setCharacterEncoding("UTF-8");
        resp.setContentType("text/plain");
        String uri = req.getRequestURI();
        String contextPath = req.getContextPath();
        String action = GetUrlAction.getUrl(uri, contextPath);
        boolean isLogin = SessionManager.isUserLoggedIn(req);
        String rolAS = sessionManager.getRole(req);
        if (action != null) {
            if (action.equals("login")) {
                String email = req.getParameter("email");
                String password = req.getParameter("password");
                Account account = accountService.findAccByEmailAndPassword(email, password);
                if (account == null) {
                    resp.sendRedirect("/admin/login");
                } else {
                    String role = account.getRole();
                    if (role.equals("admin") || role.equals("admin master")) {
                        sessionManager.setSession(req, email, role);
                        req.setAttribute("role", role);
                        req.getRequestDispatcher("/views/admin/dashboard/dashboard.jsp").forward(req, resp);
                    } else {
                        resp.sendRedirect("/admin/login");
                    }
                }
            }
        }
//        if (action != null && isLogin) {
//            if (action.equals("account/create") && role.equals("admin master")) {
//                String email = req.getParameter("email");
//
//            }

//        }
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
