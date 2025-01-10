package com.codegym.website_product.utils;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.Arrays;

public class GetUrlAction {
    public static String getUrl(String uri, String contextPath) {
        String relativePath = uri.substring(contextPath.length());
        String[] pathParts = relativePath.split("/");
        String action = "";
        if (pathParts.length == 3) {
            action = pathParts[2];
        }

        return action;
    }

    public static String getId(String uri, String contextPath) {
        String relativePath = uri.substring(contextPath.length());
        String[] pathParts = relativePath.split("/");
        String id = "";
        if (pathParts.length == 3) {
            id = pathParts[2];
        }

        return id;
    }
    
}
