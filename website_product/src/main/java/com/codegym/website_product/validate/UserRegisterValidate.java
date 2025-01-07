package com.codegym.website_product.validate;

import com.codegym.website_product.entity.Account;
import com.codegym.website_product.service.impl.AccountService;

public class UserRegisterValidate {
    private static AccountService accountService = new AccountService();

    public static boolean isValidEmail(String email) {
        String regex = "^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\\.[a-zA-Z]+$";

        return email.matches(regex);
    }

    public static boolean isUniqueEmail(String email) {
        Account account = accountService.findByEmail(email);
        if (account == null) {
            return true;
        }

        return false;
    }

    public static boolean isValidPass(String pass) {
        int length = pass.length();
        if (length < 8 || length > 16) {
            return false;
        }

        return true;
    }
}
