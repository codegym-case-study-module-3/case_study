package com.codegym.website_product.service.impl;

import com.codegym.website_product.entity.Account;
import com.codegym.website_product.service.IService;

import java.util.List;

public interface IAccount extends IService <Account> {

    Account findAccByEmailAndPassword(String email, String password);
}
