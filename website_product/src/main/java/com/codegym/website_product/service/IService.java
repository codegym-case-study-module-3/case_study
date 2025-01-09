package com.codegym.website_product.service;

import com.codegym.website_product.entity.Account;

import java.util.List;

public interface IService<T> {

    List<T> getAll();

    Account save(T s);

    void update(long id, T s);

    void remove(long id);

    T findById(long id);

    T findByEmail(String email);

}
