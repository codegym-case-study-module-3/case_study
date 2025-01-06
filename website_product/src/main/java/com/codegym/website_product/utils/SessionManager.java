package com.codegym.website_product.utils;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

public class SessionManager {
    public static void setSession(HttpServletRequest request, String email, String role) {
        HttpSession session = request.getSession();
        session.setAttribute("email", email);
        session.setAttribute("role", role);
    }
    public static String getEmail(HttpServletRequest request) {
        HttpSession session = request.getSession();
        return (String) session.getAttribute("email");
    }
    public static String getRole(HttpServletRequest request) {
        HttpSession session = request.getSession();
        return (String) session.getAttribute("role");
    }
    public static void removeSession(HttpServletRequest request) {
        HttpSession session = request.getSession();
        session.removeAttribute("email");
        session.removeAttribute("role");
    }
    public static boolean isUserLoggedIn(HttpServletRequest request) {
        HttpSession session = request.getSession(false);
        if(session != null) {
            return true;
        } else {
            return false;
        }
    }
}
