package com.codegym.website_product.controller.admin;

import com.codegym.website_product.entity.Account;
import com.codegym.website_product.service.impl.AccountService;
import com.codegym.website_product.utils.GetUrlAction;
import com.codegym.website_product.utils.SessionManager;
import com.codegym.website_product.validate.UserRegisterValidate;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;
import java.util.stream.Collectors;

@WebServlet("/admin/account")
public class AccountAdminController extends HttpServlet {
    private static AccountService accountService = new AccountService();

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.setCharacterEncoding("UTF-8");
        resp.setContentType("text/plain");
        boolean isLogin = SessionManager.isUserLoggedIn(req);
        String role = SessionManager.getRole(req);
        String action = req.getParameter("action");
        if (action == null) {
            action = "";
        }

        if (isLogin) {
            switch (action) {
                case "create":
                    req.getRequestDispatcher("/views/admin/account/createAccount.jsp").forward(req, resp);
                    break;

                case "update":
                    String email = req.getParameter("email");
                    if (email != null && !email.isEmpty()) {
                        Account acc = accountService.findByEmail(email);
                        if (acc != null) {
                            req.setAttribute("account", acc);
                        }
                    }
                    req.getRequestDispatcher("/views/admin/account/updateAccount.jsp").forward(req, resp);
                    break;

                case "delete":
                    String emailAccount = req.getParameter("email");
                    if (emailAccount != null && !emailAccount.isEmpty()) {
                        Account acc = accountService.findByEmail(emailAccount);
                        if (acc != null) {
                            accountService.remove(acc.getId());
                            resp.sendRedirect("/admin/account?message=deleted");
                        }
                    } else {
                        req.getRequestDispatcher("/views/admin/account/pageNotFound.jsp").forward(req, resp);
                    }
                    break;
                default:
                    String message = req.getParameter("message");
                    if (message != null) {
                        if (message.equals("deleted")) {
                            req.setAttribute("message", "Xóa thành công");
                        } else if (message.equals("created")) {
                            req.setAttribute("message", "Thêm mới thành công");
                        }
                    }

                    List<Account> listAccounts = accountService.getAll();
                    List<Account> adminAccounts = listAccounts.stream().filter(account -> "admin".equals(account.getRole())).collect(Collectors.toList());
                    req.setAttribute("role", role);
                    req.setAttribute("listAccounts", adminAccounts);
                    req.getRequestDispatcher("/views/admin/account/account.jsp").forward(req, resp);
            }


        } else {
            req.getRequestDispatcher("/views/admin/login/login.jsp").forward(req, resp);
        }


    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String role = SessionManager.getRole(req);
        String action = req.getParameter("action");
        if (action == null) {
            action = "";
        }

        switch (action) {
            case "create":
                if (role.equals("admin master")) {
                    boolean isValidEmail = UserRegisterValidate.isValidEmail(req.getParameter("email"));
                    if (isValidEmail) {
                        String email = req.getParameter("email");
                        String password = req.getParameter("password");
                        String confirmPassword = req.getParameter("confirmPassword");
                        if (password.equals(confirmPassword)) {
                            String roleAcc = req.getParameter("role");
                            Account account = accountService.findByEmail(email);
                            if (account == null) {
                                accountService.save(new Account(email, password, roleAcc));
                                resp.sendRedirect("/admin/account");
                            } else {
                                req.getRequestDispatcher("/views/admin/account/pageNotFound.jsp").forward(req, resp);
                            }
                        }
                    } else {
                        req.getRequestDispatcher("/views/admin/account/pageNotFound.jsp").forward(req, resp);
                    }

                }
                break;
            case "update":
                if (role.equals("admin master")) {
                    boolean isValidEmail = UserRegisterValidate.isValidEmail(req.getParameter("email"));
                    if (isValidEmail) {
                        String emailAccount = req.getParameter("email");
                        String passwordNew = req.getParameter("password");
                        String confirmPassword = req.getParameter("confirmPassword");
                        if (passwordNew.equals(confirmPassword)) {
                            Account acc = accountService.findByEmail(emailAccount);
                            if (acc != null) {
                                acc.setPassword(passwordNew);
                                accountService.update(acc.getId(), acc);
                                resp.sendRedirect("/admin/account");
                            }
                        } else {
                            req.getRequestDispatcher("/views/admin/account/pageNotFound.jsp").forward(req, resp);
                        }
                    } else {
                        req.getRequestDispatcher("/views/admin/account/pageNotFound.jsp").forward(req, resp);
                    }

                }


        }
    }
}
