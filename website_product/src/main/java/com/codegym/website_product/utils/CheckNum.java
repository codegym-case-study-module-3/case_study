package com.codegym.website_product.utils;

public class CheckNum {
    public static boolean isValidInteger(String string_id) {
        if (string_id == null || string_id.isEmpty()) {
            return false;
        }
        try {
            Integer.parseInt(string_id);
            return true;
        } catch (NumberFormatException e) {
            return false;
        }
    }
}
