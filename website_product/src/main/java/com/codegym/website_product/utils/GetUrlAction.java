package com.codegym.website_product.utils;

public class GetUrlAction {
    public static String getUrl(String uri, String contextPath) {
        // Loại bỏ context path khỏi URI
        String relativePath = uri.substring(contextPath.length());

        // Tách các phần của đường dẫn
        String[] pathParts = relativePath.split("/");

        // Lấy phần cuối hoặc gần cuối
        String action = "";
        if (pathParts.length >= 3) {
            action = pathParts[2]; // Phần "profile", "create", "edit", "delete"
        }

        return action;
    }
}
