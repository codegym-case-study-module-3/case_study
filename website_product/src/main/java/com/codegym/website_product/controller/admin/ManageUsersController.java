package com.codegym.website_product.controller.admin;

import com.codegym.website_product.entity.User;
import com.codegym.website_product.service.impl.UserService;
import com.codegym.website_product.utils.SessionManager;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebServlet("/admin/users")
public class ManageUsersController extends HttpServlet {
    private static UserService userService = new UserService();

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        boolean isLogin = SessionManager.isUserLoggedIn(req);
        if (isLogin) {
            List<User> listUsers = userService.getAll();
            req.setAttribute("listUsers", listUsers);
            req.getRequestDispatcher("/views/admin/user/show.jsp").forward(req, resp);
        }
    }
}
