package com.codegym.website_product.service;

import com.codegym.website_product.entity.Account;

public interface IAccount extends IService <Account> {

    Account findAccByEmailAndPassword(String email, String password);
}
