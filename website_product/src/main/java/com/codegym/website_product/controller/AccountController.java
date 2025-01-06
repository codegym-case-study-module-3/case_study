package com.codegym.website_product.controller;

import com.codegym.website_product.DTO.AccountDTO;
import com.codegym.website_product.entity.Account;
import com.codegym.website_product.service.account.AccountService;
import com.codegym.website_product.utils.SessionManager;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "admin", urlPatterns = "/admin")
public class AccountController extends HttpServlet {
    private final AccountService accountService = new AccountService();
    private final SessionManager sessionManager = new SessionManager();
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.setCharacterEncoding("UTF-8");
        String action = req.getParameter("action");
        if (action == null) {
            action = "";
        }
        switch (action) {
            case "get":
                if(sessionManager.isUserLoggedIn(req)){
                    req.setAttribute("accounts", accountService.getAll());
                    req.getRequestDispatcher("/WEB-INF/view/admin/admin.jsp").forward(req, resp);
                    break;
                }else {
                    resp.sendRedirect("login.jsp");
                }

                break;
            case "update":
                if(sessionManager.isUserLoggedIn(req)){
                    String password = req.getParameter("password");
                    String email = sessionManager.getEmail(req);
                    Account account = accountService.findByEmail(email);
                    account.setPassword(password);
                    accountService.save(account);
                    resp.sendRedirect("/admin?message=updated");
                    break;
                }else{
                    resp.sendRedirect("login.jsp");
                }
                //check session lấy ra tên đăng nhập rooi update

                //update mỗi pass
                break;
            case "delete":
                if(sessionManager.isUserLoggedIn(req)){
                    int id = Integer.parseInt(req.getParameter("id"));
                    accountService.remove(id);
                    resp.sendRedirect("/admin?message=deleted");
                    break;
                }else {
                    resp.sendRedirect("login.jsp");
                }
                break;
            case "login":
                if(sessionManager.isUserLoggedIn(req)){
//                    List<AccountDTO> accounts = accountService.getAllDTO();
//                    req.setAttribute("accounts", accounts);
                    req.getRequestDispatcher("/WEB-INF/view/admin/home_page/hompage.jsp").forward(req, resp);
                }else {
                    req.getRequestDispatcher("/WEB-INF/view/admin/login/login.jsp").forward(req, resp);
                }
                break;

            case "register":
                req.getRequestDispatcher("/WEB-INF/view/admin/register/register.jsp").forward(req, resp);
                break;

            case "error":
                req.getRequestDispatcher("/WEB-INF/view/admin/error_page.jsp").forward(req, resp);
                break;
            default:
//                req.getRequestDispatcher("/WEB-INF/view/admin/error_page.jsp").forward(req, resp);
//                req.getRequestDispatcher("/WEB-INF/view/admin/home_page/homepage.jsp").forward(req, resp);
//                String message = req.getParameter("message");
//                if (message != null) {
//                    if (message.equals("deleted")) {
//                        req.setAttribute("message", "Xóa thành công");
//                    } else if(message.equals("created")) {
//                        req.setAttribute("message", "Thêm mới thành công");
//                    }
                req.getRequestDispatcher("/views/admin/home_page/homepage.jsp").forward(req, resp);

//                if(sessionManager.isUserLoggedIn(req)){
//                    req.getRequestDispatcher("/WEB-INF/view/admin/home_page/homepage.jsp").forward(req, resp);
//                }else {
//                    req.getRequestDispatcher("/WEB-INF/view/admin/login/login.jsp").forward(req, resp);
//                }
        }
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.setCharacterEncoding("UTF-8");
        String action = req.getParameter("action");
        if (action == null) {
            action = "";
        }
        switch (action) {
            case "login":
                    String email = req.getParameter("email");
                    String password = req.getParameter("password");
                    Account account = accountService.findAccByEmailAndPassword(email, password);
                    if (account == null) {
                        resp.sendRedirect("/admin?action=error");
                    } else {
                        String role = account.getRole();
                        if(role.equals("admin")){
                            sessionManager.setSession(req, email, role);
//                            resp.sendRedirect("/account?action=homepage");
                            resp.sendRedirect("/admin");
                        }else {
                            resp.sendRedirect("/admin?action=error");
                        }
                    }
                    break;
            case "register":
                    String emailRegister = req.getParameter("email");
                    String passwordRegister = req.getParameter("password");
                    long defaultID = Long.parseLong(req.getParameter("user"));
                    String roleRegister = req.getParameter("role");
                    Account accountExisting = accountService.findAccByEmailAndPassword(emailRegister, passwordRegister);
                    if(accountExisting != null) {
                        resp.sendRedirect("/admin?action=error");
                    }else {
                        accountService.save(new Account(defaultID,emailRegister,passwordRegister,roleRegister));
                        resp.sendRedirect("/admin");
                    }
        }
    }
}
