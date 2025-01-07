package com.codegym.website_product.controller.user;

import com.codegym.website_product.entity.Account;
import com.codegym.website_product.entity.User;
import com.codegym.website_product.service.impl.AccountService;
import com.codegym.website_product.service.impl.UserService;
import com.google.gson.Gson;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.HashMap;
import java.util.Map;
import java.util.Objects;

@WebServlet(name = "loginController", urlPatterns = "/login")
public class LoginController extends HttpServlet {
    private static AccountService accountService = new AccountService();
    private static UserService userService = new UserService();

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String email = req.getParameter("email");
        String password = req.getParameter("password");

        Account account = accountService.findAccByEmailAndPassword(email, password);
        Map<String, String> res = new HashMap<String, String>();
        if (account == null || (account != null && !Objects.equals(account.getRole(), "user"))) {
            res.put("message", "Tài khoản không tồn tại. Vui lòng nhập lại!!!!");
            res.put("status", "error");
        } else {
            login(req, account);
            res.put("status", "success");
        }

        // Thiết lập kiểu phản hồi là JSON
        resp.setContentType("application/json");
        resp.setCharacterEncoding("UTF-8");

        // Gửi dữ liệu về client
        Gson gson = new Gson();
        PrintWriter out = resp.getWriter();
        String jsonResponse = gson.toJson(res);
        out.print(jsonResponse);
        out.flush();
    }

    public static void login(HttpServletRequest req, Account account) {
        User user = userService.getByAccountId(account.getId());
        HttpSession session = req.getSession();
        session.setAttribute("isLogged", "logged");
        session.setAttribute("userId", user.getId());
        session.setAttribute("name", user.getFullName());
    }
}
