package com.codegym.website_product.service;

import com.codegym.website_product.entity.Product;

import java.util.List;

public interface IProduct extends IService<Product> {
    List<Product> getAll();
    void save(Product p);
    void update(int id, Product p);
    void remove(int id);
    Product findById(int id);
    List<Product> findByName(String name);

}