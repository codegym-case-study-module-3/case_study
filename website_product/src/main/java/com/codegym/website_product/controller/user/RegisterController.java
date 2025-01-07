package com.codegym.website_product.controller.user;

import com.codegym.website_product.entity.Account;
import com.codegym.website_product.entity.User;
import com.codegym.website_product.service.impl.AccountService;
import com.codegym.website_product.service.impl.UserService;
import com.codegym.website_product.validate.UserRegisterValidate;
import com.google.gson.Gson;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.HashMap;
import java.util.Map;

@WebServlet(name = "registerController", urlPatterns = "/register")
public class RegisterController extends HttpServlet {
    private static AccountService accountService = new AccountService();
    private static UserService userService = new UserService();
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String email = req.getParameter("email");
        String password = req.getParameter("password");
        String name = req.getParameter("name");
        Gson gson = new Gson();
        Map<String, String> res = new HashMap<>();
        Map<String, String> validator = new HashMap<>();
        if (name == null || name.trim().equals("")) {
            validator.put("name", "Tên không được bỏ trống");
        }

        if (email == null || email.isEmpty()) {
            validator.put("email", "Email không được bỏ trống");
        } else if (!UserRegisterValidate.isValidEmail(email)) {
            validator.put("email", "Email nhập không đúng định dạng!!!");
        } else if (!UserRegisterValidate.isUniqueEmail(email)) {
            validator.put("email", "Email đã tồn tại!!!");
        }

        if (password == null || password.isEmpty()) {
            validator.put("password", "Mật khẩu không được bỏ trống");
        } else if (!UserRegisterValidate.isValidPass(password)) {
            validator.put("password", "Mật khẩu phải bao gồm 8 đến 16 ký tự!!!");
        }

        if (!validator.isEmpty()) {
            String validate = gson.toJson(validator);
            res.put("validate", validate);
            res.put("status", "validator");
        } else {
            Account account = new Account(email, password, "user");
            accountService.save(account);
            account = accountService.findByEmail(email);
            User user = new User(name, account.getId());
            userService.save(user);
            LoginController.login(req, account);
            res.put("status", "success");
        }

        // Thiết lập kiểu phản hồi là JSON
        resp.setContentType("application/json");
        resp.setCharacterEncoding("UTF-8");

        // Gửi dữ liệu về client
        PrintWriter out = resp.getWriter();
        String jsonResponse = gson.toJson(res);
        out.print(jsonResponse);
        out.flush();
    }
}
